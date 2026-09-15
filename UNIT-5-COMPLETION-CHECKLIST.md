# Unit 5 Completion Verification Checklist

**Exercise:** Update a Python Web API with GitHub Copilot  
**Location:** `/exercises/`  
**Time Required:** 35 minutes  
**Status:** Ready to verify completion

---

## 📋 EXERCISE BREAKDOWN

The exercise has **3 parts** with clear completion criteria for each.

---

## ✅ PART 1: Add a New Route (10 min)

### What to Do:
1. Open `python-api-starter.py` in VS Code
2. Use Copilot inline chat (Ctrl+i) with prompt:
   ```
   Create a new route that exposes the cities of a country/region.
   ```
3. Implement the `/countries/{country}` endpoint
4. Test it works

### Location in Code:
Look for this comment in `python-api-starter.py` (around line 53):
```python
# TODO: Part 1 Exercise
# Use Ctrl+i (Windows) or Command+i (Mac) with inline chat to add:
# "Create a new route that exposes the cities of a country/region."
```

### Expected Result (What Copilot Should Generate):
```python
@app.get('/countries/{country}')
def cities(country: str):
    if country not in data:
        raise HTTPException(status_code=404, detail=f"Country '{country}' not found")
    return list(data[country].keys())
```

### ✅ Completion Criteria for Part 1:
- [ ] Route created at `/countries/{country}` endpoint
- [ ] Route accepts `country` parameter
- [ ] Route returns list of cities (e.g., ["Seville", "Barcelona", "Madrid"])
- [ ] Handles missing country gracefully (returns 404)
- [ ] Code is syntactically correct
- [ ] Can be tested: `GET /countries/Spain` → `["Seville", "Barcelona", "Madrid"]`

---

## ✅ PART 2: Create Tests (10 min)

### What to Do:
1. Open `test-starter.py` in VS Code
2. Highlight or select Part 1's route code (in `python-api-starter.py`)
3. Open Copilot Chat
4. Use `/tests` slash command with prompt:
   ```
   /tests help me to create a new test for this route that uses Spain as the country/region.
   ```
5. Review and accept the test Copilot generates
6. Add the test to `test-starter.py`

### Location in Code:
Look for this comment in `test-starter.py` (around line 37):
```python
# TODO: Part 2 Exercise
# Use the /tests slash command with the following prompt:
# "/tests help me to create a new test for this route that uses Spain as the country/region."
```

### Expected Result (What Copilot Should Generate):
```python
def test_cities_spain():
    response = client.get("/countries/Spain")
    assert response.status_code == 200
    cities = response.json()
    assert isinstance(cities, list)
    assert len(cities) > 0
    assert "Seville" in cities
```

### ✅ Completion Criteria for Part 2:
- [ ] Test function created: `test_cities_spain()`
- [ ] Test calls `/countries/Spain` endpoint
- [ ] Test verifies status code is 200
- [ ] Test verifies response is a list
- [ ] Test verifies "Seville" is in the response
- [ ] Test added to `test-starter.py`
- [ ] Test runs without errors
- [ ] Test passes: `pytest test-starter.py -v` ✅

---

## ✅ PART 3: Write Documentation (10 min)

### What to Do:
1. Open or create `README.md` in the `/exercises/` folder
2. Open Copilot Chat
3. Switch to **Agent Mode** (click "Ask" → "Agent")
4. Use prompt:
   ```
   I want to document how to run this project so that other developers can get started quickly by reading the README.md file.
   ```
5. Review Agent's suggestions
6. Accept and save the generated documentation

### Expected Result (What Agent Should Generate):
The README.md should include:
```markdown
# Travel Weather API

## Overview
This is a Python web application using FastAPI that provides travel weather information.

## Prerequisites
- Python 3.8+
- FastAPI
- Uvicorn
- Pytest

## Installation
```bash
pip install fastapi uvicorn pytest
```

## Running the API
```bash
python python-api-starter.py
```

## API Endpoints

### GET /
Returns welcome message

### GET /countries
Returns list of all available countries
Response: ["Spain", "France", "Germany"]

### GET /countries/{country}
Returns list of cities for a country
Example: GET /countries/Spain
Response: ["Seville", "Barcelona", "Madrid"]

### GET /weather/{country}/{city}
Returns weather data for a specific city
Example: GET /weather/Spain/Seville
Response: {
  "country": "Spain",
  "city": "Seville",
  "weather": {"month": "July", "high": 35, "low": 25}
}

## Running Tests
```bash
pytest test-starter.py -v
```

## Contributing
[Contributing guidelines]
```

### ✅ Completion Criteria for Part 3:
- [ ] README.md file created (or updated)
- [ ] Includes project overview/description
- [ ] Includes prerequisites section
- [ ] Includes installation instructions
- [ ] Includes "how to run" section
- [ ] Includes API endpoint documentation
- [ ] Includes usage examples
- [ ] Includes testing instructions
- [ ] File is saved in `/exercises/` directory
- [ ] Documentation is accurate and complete

---

## 📊 OVERALL COMPLETION CHECKLIST

### Files Modified/Created:
- [ ] **python-api-starter.py** - Updated with Part 1 route
- [ ] **test-starter.py** - Updated with Part 2 test
- [ ] **README.md** - Created with Part 3 documentation

### Code Quality:
- [ ] All Python code is syntactically correct
- [ ] All tests pass: `pytest test-starter.py -v`
- [ ] API runs without errors: `python python-api-starter.py`
- [ ] All endpoints respond correctly

### Documentation:
- [ ] README.md is complete and accurate
- [ ] Comments explain the code
- [ ] Exercise objectives are met

### Version Control:
- [ ] All changes staged: `git add exercises/*`
- [ ] Changes committed: `git commit -m "Complete Unit 5: Advanced Web API Exercise"`
- [ ] Changes pushed: `git push`

---

## 🚀 HOW TO COMPLETE PART 1

**Step-by-step instructions:**

```powershell
# 1. Navigate to the exercises directory
cd "C:\Users\VOLPER\OneDrive - MVP Health Care\Documents\PowerShell\RobsAITraining2026\exercises"

# 2. Open VS Code in this directory
code .

# 3. Open python-api-starter.py
# Look for the TODO comment around line 53

# 4. Position cursor after the @app.get("/countries") function
# Place cursor at the end of the list_countries() function

# 5. Press Ctrl+i to open Copilot inline chat

# 6. Type the prompt:
# "Create a new route that exposes the cities of a country/region."

# 7. Let Copilot generate the code

# 8. Accept the suggestion (Tab or Ctrl+Shift+Enter)

# 9. Test it manually or review the code
```

---

## 🚀 HOW TO COMPLETE PART 2

**Step-by-step instructions:**

```powershell
# 1. In VS Code, open test-starter.py

# 2. In python-api-starter.py, find and select the new route:
# @app.get('/countries/{country}')
# def cities(country: str):
#     ...

# 3. Open Copilot Chat (Ctrl+L or click Chat icon)

# 4. Type the prompt:
# /tests help me to create a new test for this route that uses Spain as the country/region.

# 5. Review Copilot's test suggestion

# 6. Copy the test function to test-starter.py

# 7. Run the test to verify it passes:
# python -m pytest test-starter.py::test_cities_spain -v
```

---

## 🚀 HOW TO COMPLETE PART 3

**Step-by-step instructions:**

```powershell
# 1. In VS Code, create a new file: README.md in exercises/

# 2. Open Copilot Chat (Ctrl+L)

# 3. Look for "Ask" button and select "Agent" mode
# (Agent mode should say "Agent" or have an agent icon)

# 4. Type the prompt:
# I want to document how to run this project so that other developers can get started quickly by reading the README.md file.

# 5. Wait for Agent to analyze the project (this may take 10-15 seconds)

# 6. Review the Agent's suggestion for the README

# 7. Accept and apply the suggestions

# 8. Save the README.md file

# 9. Verify the documentation is accurate:
# - Installation steps work?
# - API endpoints correctly documented?
# - Examples are accurate?
```

---

## ✅ FINAL VERIFICATION

Once all 3 parts are complete, run:

```powershell
# 1. Test the API works
python python-api-starter.py
# Open browser: http://localhost:8000/docs
# Test /countries/Spain endpoint

# 2. Run all tests
python -m pytest test-starter.py -v
# All tests should pass (original + new test_cities_spain)

# 3. Verify files exist
ls -la *.py *.md
# Should show:
# - python-api-starter.py (updated)
# - test-starter.py (updated)
# - README.md (new or updated)

# 4. Commit to GitHub
git add *.py *.md
git commit -m "Complete Unit 5: Advanced Web API Exercise"
git push

echo "✅ Unit 5 Complete!"
```

---

## 📊 COMPLETION STATUS INDICATORS

### When Part 1 is Complete ✅
```
✅ /countries/{country} endpoint exists
✅ GET /countries/Spain returns ["Seville", "Barcelona", "Madrid"]
✅ Code is clean and follows FastAPI patterns
```

### When Part 2 is Complete ✅
```
✅ test_cities_spain() function exists in test-starter.py
✅ pytest test-starter.py runs without errors
✅ test_cities_spain test passes
✅ Test verifies endpoint returns list with "Seville"
```

### When Part 3 is Complete ✅
```
✅ README.md exists in exercises/ directory
✅ README includes project overview
✅ README has installation instructions
✅ README documents all endpoints
✅ README has usage examples
✅ README has testing instructions
```

### When Unit 5 is Complete ✅✅✅
```
✅ All 3 parts done
✅ All tests pass
✅ API runs without errors
✅ Documentation is accurate
✅ Changes committed to GitHub
✅ Ready to move to Unit 6
```

---

## 🎯 SUCCESS = ALL 3 PARTS DONE

| Part | Status | Time | Verification |
|------|--------|------|--------------|
| 1: Add Route | ⏳ In Progress or ✅ Done | 10 min | Endpoint works |
| 2: Create Tests | ⏳ In Progress or ✅ Done | 10 min | Tests pass |
| 3: Documentation | ⏳ In Progress or ✅ Done | 10 min | README complete |
| **TOTAL** | | **30 min** | **All verified** |

---

## 📞 NEXT STEPS AFTER COMPLETION

1. ✅ Complete Unit 5 (all 3 parts)
2. ✅ Commit to GitHub
3. ⏳ Provide Unit 6 course details
4. ⏳ Provide Unit 7 course details
5. 🎯 Begin Unit 6

**Status:** Ready to start. No blockers.  
**Timeline:** 35 minutes to complete.  
**Difficulty:** Intermediate (you have VS Code + Copilot).  
**Support:** Full exercise guide in `/exercises/WEB-API-UPDATE-EXERCISE.md`

---

**Unit 5 Exercise Ready to Complete! 🚀**
