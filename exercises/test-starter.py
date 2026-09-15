#!/usr/bin/env python3
"""
Test suite for Travel Weather API
Use GitHub Copilot to help generate tests with the /tests slash command
"""

import pytest
from fastapi.testclient import TestClient
from main import app

client = TestClient(app)

def test_read_root():
    """Test the root endpoint"""
    response = client.get("/")
    assert response.status_code == 200
    assert "message" in response.json()

def test_list_countries():
    """Test listing all countries"""
    response = client.get("/countries")
    assert response.status_code == 200
    countries = response.json()
    assert isinstance(countries, list)
    assert len(countries) > 0
    assert "Spain" in countries

def test_get_weather_valid():
    """Test getting weather for a valid country and city"""
    response = client.get("/weather/Spain/Seville")
    assert response.status_code == 200
    data = response.json()
    assert data["country"] == "Spain"
    assert data["city"] == "Seville"
    assert "weather" in data

def test_get_weather_invalid_country():
    """Test getting weather for invalid country"""
    response = client.get("/weather/InvalidCountry/AnyCity")
    assert response.status_code == 404

def test_get_weather_invalid_city():
    """Test getting weather for invalid city"""
    response = client.get("/weather/Spain/InvalidCity")
    assert response.status_code == 404

# TODO: Part 2 Exercise
# Use the /tests slash command with the following prompt:
# "/tests help me to create a new test for this route that uses Spain as the country/region."
#
# The test should:
# - Call the new /countries/{country} endpoint
# - Use Spain as the test country
# - Verify the response status is 200
# - Verify the response contains cities
# - Verify "Seville" is in the cities list
#
# Example format:
# def test_cities_spain():
#     response = client.get("/countries/Spain")
#     assert response.status_code == 200
#     cities = response.json()
#     assert isinstance(cities, list)
#     assert "Seville" in cities

if __name__ == "__main__":
    pytest.main([__file__, "-v"])
