#!/usr/bin/env python3
"""
Travel Weather API - Starter Code for GitHub Copilot Exercise
This is a Python web application that hosts a Travel Weather API
"""

from fastapi import FastAPI, HTTPException
from typing import Dict, List, Optional
import json

app = FastAPI()

# Sample weather data structure
# This would typically come from a database
data = {
    "Spain": {
        "Seville": {"month": "July", "high": 35, "low": 25},
        "Barcelona": {"month": "July", "high": 28, "low": 22},
        "Madrid": {"month": "July", "high": 32, "low": 20}
    },
    "France": {
        "Paris": {"month": "July", "high": 26, "low": 16},
        "Lyon": {"month": "July", "high": 28, "low": 18},
        "Marseille": {"month": "July", "high": 29, "low": 20}
    },
    "Germany": {
        "Berlin": {"month": "July", "high": 25, "low": 16},
        "Munich": {"month": "July", "high": 26, "low": 17},
        "Hamburg": {"month": "July", "high": 23, "low": 15}
    }
}

@app.get("/")
def read_root():
    """Root endpoint - returns API info"""
    return {"message": "Welcome to the Travel Weather API"}

@app.get("/weather/{country}/{city}")
def get_weather(country: str, city: str) -> Dict:
    """
    Get weather data for a specific city in a country
    
    Args:
        country: Name of the country
        city: Name of the city
        
    Returns:
        Weather data including high and low temperatures
        
    Raises:
        HTTPException: If country or city not found
    """
    if country not in data:
        raise HTTPException(status_code=404, detail=f"Country '{country}' not found")
    
    if city not in data[country]:
        raise HTTPException(status_code=404, detail=f"City '{city}' not found in {country}")
    
    return {
        "country": country,
        "city": city,
        "weather": data[country][city]
    }

# TODO: Part 1 Exercise
# Use Ctrl+i (Windows) or Command+i (Mac) with inline chat to add:
# "Create a new route that exposes the cities of a country/region."
# 
# Your implementation should:
# - Accept a country parameter
# - Return a list of cities for that country
# - Handle the case where country doesn't exist

@app.get("/countries")
def list_countries() -> List[str]:
    """List all available countries"""
    return list(data.keys())

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
