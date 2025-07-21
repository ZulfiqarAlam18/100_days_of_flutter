# main.py
from fastapi import FastAPI, Depends, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from sqlalchemy.orm import Session
from pydantic import BaseModel
from database import SessionLocal, engine, Base
import crud
from models import Student

# Pydantic models for request/response
class StudentCreate(BaseModel):
    name: str
    roll_number: str
    year: int

class StudentUpdate(BaseModel):
    name: str
    roll_number: str
    year: int

class StudentResponse(BaseModel):
    id: int
    name: str
    roll_number: str
    year: int
    
    class Config:
        from_attributes = True

Base.metadata.create_all(bind=engine)

app = FastAPI()

# Enable CORS for Flutter
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Change to specific origin in production
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@app.get("/students/", response_model=list[StudentResponse])
def read_students(db: Session = Depends(get_db)):
    return crud.get_students(db)

@app.get("/students/{student_id}", response_model=StudentResponse)
def read_student(student_id: int, db: Session = Depends(get_db)):
    student = crud.get_student_by_id(db, student_id)
    if not student:
        raise HTTPException(status_code=404, detail="Student not found")
    return student

@app.post("/students/", response_model=StudentResponse)
def create_student(student: StudentCreate, db: Session = Depends(get_db)):
    return crud.add_student(db, student.name, student.roll_number, student.year)

@app.put("/students/{student_id}", response_model=StudentResponse)
def update_student(student_id: int, student: StudentUpdate, db: Session = Depends(get_db)):
    updated_student = crud.update_student(db, student_id, student.name, student.roll_number, student.year)
    if not updated_student:
        raise HTTPException(status_code=404, detail="Student not found")
    return updated_student

@app.delete("/students/{student_id}")
def delete_student(student_id: int, db: Session = Depends(get_db)):
    result = crud.delete_student(db, student_id)
    if not result:
        raise HTTPException(status_code=404, detail="Student not found")
    return result
