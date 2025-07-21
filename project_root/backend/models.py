# models.py
from sqlalchemy import Column, Integer, String
from database import Base

class Student(Base):
    __tablename__ = "students"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(100), nullable=False)
    roll_number = Column("rollnumber", String(100), nullable=False)
    year = Column(Integer, nullable=False)
