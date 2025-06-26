from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

# Mock database
users_db = []

class User(BaseModel):
    name: str
    email: str

@app.get("/users")
def get_users():
    return users_db

@app.post("/users")
def create_user(user: User):
    users_db.append(user)
    return {"message": "User added", "user": user}
