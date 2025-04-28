from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from pymongo import MongoClient
app = FastAPI()

# CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # You can restrict to your Flutter IP
    allow_credentials=True, 
    allow_methods=["*"],
    allow_headers=["*"],
)

# MongoDB setup
client = MongoClient("mongodb+srv://disaster:disaster@cluster0.ivqnuuk.mongodb.net")
db = client["test"]
collection = db["login_users"]
donation_collection = db["donations"]  # new collection for donations
volunteer_collection = db["volunteers"]  # new collection for volunteers

# Pydantic model for incoming user data (for login and registration)
class User(BaseModel):
    username: str
    password: str

# Register route
@app.post("/register")
async def register(user: User):
    existing_user = collection.find_one({"username": user.username})
    if existing_user:
        return {"message": "User already exists"}
    collection.insert_one(user.dict())
    return {"message": "User registered successfully"}

# Login route
@app.post("/login")
async def login(user: User):
    user_data = collection.find_one({"username": user.username})
    if not user_data:
        return {"message": "Invalid username or password"}
    if user_data["password"] == user.password:
        return {"message": "Login successful"}
    return {"message": "Invalid username or password"}

# Pydantic model for Donation
class Donation(BaseModel):
    username: str
    type: str          # Cash / Materials / Food
    details: str       # Amount or item details
    location: str = None  # Optional for Cash
    timestamp: str     # ISO format string

# Donation route
@app.post("/donate")
async def donate(donation: Donation):
    donation_collection.insert_one(donation.dict())
    return {"message": "Donation recorded successfully"}

# Pydantic model for Volunteer
class Volunteer(BaseModel):
    username:str
    full_name: str
    phone: str
    location: str

# Volunteer registration route
@app.post("/volunteer")
async def volunteer(volunteer: Volunteer):
    existing_volunteer = volunteer_collection.find_one({"username": volunteer.username})
    if existing_volunteer:
        # Update the existing volunteer's details
        volunteer_collection.update_one(
            {"username": volunteer.username},
            {"$set": volunteer.dict()}
        )
        return {"message": "Volunteer updated successfully"}
    else:
        # Insert a new volunteer
        volunteer_collection.insert_one(volunteer.dict())
        return {"message": "Volunteer registered successfully"}
@app.get("/volunteer/{username}")
async def get_volunteer(username: str):
    # Fetch volunteer data from the database
    volunteer = volunteer_collection.find_one({"username": username})
    
    if not volunteer:
        return {"message": "Volunteer not found"}
    
    # Add logging or print statements to check the data
    print(f"Found volunteer: {volunteer}")  # Log the whole volunteer data

    return {
        "user_name": volunteer.get("username"),
        "full_name": volunteer.get("full_name", "No email"),
        "phone": volunteer.get("phone", "Add number"),
        "location": volunteer.get("location", "USA"),
    }
@app.get("/donations/{username}")
async def get_donations(username: str):
    donations_cursor = donation_collection.find({"username": username})
    donations = []
    for donation in donations_cursor:
        donations.append({
            "type": donation.get("type", ""),
            "details": donation.get("details", ""),
            "location": donation.get("location", ""),
            "timestamp": donation.get("timestamp", ""),
        })
    return donations