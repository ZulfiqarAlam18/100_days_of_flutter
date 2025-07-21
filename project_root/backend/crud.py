# crud.py
from sqlalchemy.orm import Session
from models import Student

# Read
def get_students(db: Session):
    return db.query(Student).all()

def get_student_by_id(db: Session, student_id: int):
    return db.query(Student).filter(Student.id == student_id).first()

# Create
def add_student(db: Session, name: str, roll_number: str, year: int):
    try:
        student = Student(name=name, roll_number=roll_number, year=year)
        db.add(student)
        db.commit()
        db.refresh(student)
        return student
    except Exception as e:
        db.rollback()
        raise e

# Update
def update_student(db: Session, student_id: int, name: str, roll_number: str, year: int):
    try:
        student = db.query(Student).filter(Student.id == student_id).first()
        if not student:
            return None
        student.name = name
        student.roll_number = roll_number
        student.year = year
        db.commit()
        db.refresh(student)
        return student
    except Exception as e:
        db.rollback()
        raise e

# Delete
def delete_student(db: Session, student_id: int):
    try:
        student = db.query(Student).filter(Student.id == student_id).first()
        if not student:
            return None
        db.delete(student)
        db.commit()
        return {"message": "Student deleted successfully"}
    except Exception as e:
        db.rollback()
        raise e
