# main.py
from fastapi import FastAPI, Depends, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from sqlalchemy.orm import Session
from database import SessionLocal, engine, Base
import crud
from models import Student

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

@app.get("/students/")
def read_students(db: Session = Depends(get_db)):
    return crud.get_students(db)

@app.post("/students/")
def create_student(name: str, roll_number: str, year: int, db: Session = Depends(get_db)):
    return crud.add_student(db, name, roll_number, year)

@app.put("/students/{student_id}")
def update_student(student_id: int, name: str, roll_number: str, year: int, db: Session = Depends(get_db)):
    return crud.update_student(db, student_id, name, roll_number, year)

@app.delete("/students/{student_id}")
def delete_student(student_id: int, db: Session = Depends(get_db)):
    return crud.delete_student(db, student_id)
