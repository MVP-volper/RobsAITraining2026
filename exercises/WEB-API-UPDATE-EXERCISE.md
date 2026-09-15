# Exercise: Update a Python Web API with GitHub Copilot

**Source:** Microsoft Learn - Advanced GitHub Copilot Module  
**URL:** https://learn.microsoft.com/en-us/training/modules/advanced-github-copilot/5-exercise-update-a-web-api

## Overview

This exercise teaches you how to use advanced GitHub Copilot techniques to extend a Python Travel Weather API. You'll learn to:
- Generate new API routes with inline chat
- Create tests using Copilot Chat
- Write documentation with Copilot agents

## Learning Objectives

By completing this exercise, you will:
- ✅ Use Copilot's inline chat (Ctrl+i) to generate API routes
- ✅ Apply Copilot suggestions to extend API functionality
- ✅ Generate unit tests matching specific requirements
- ✅ Write API documentation using Copilot agents
- ✅ Use Agent mode for complex documentation tasks
- ✅ Test and refine Copilot suggestions

## Exercise Overview

**Project:** Travel Weather API (Python)  
**Current State:** API provides weather data but doesn't expose country/region
**Task:** Extend API to list cities by country/region  
**Estimated Time:** 30 minutes

## Part 1: Add a New Route (10 minutes)

### Task
Create a new API route that exposes cities for a given country/region.

### Steps

1. **Open the Project**
   - Use the [Codespace with preconfigured environment](https://codespaces.new/MicrosoftDocs/mslearn-advanced-copilot)
   - Open `main.py` file

2. **Use Inline Chat**
   - Press **Ctrl+i** (Windows) or **Command+i** (Mac)
   - Type the following prompt:
   ```
   Create a new route that exposes the cities of a country/region.
   ```

3. **Review Copilot Suggestion**
   Expected output similar to:
   ```python
   # Create a new route that exposes the cities of a country:
   @app.get('/countries/{country}')
   def cities(country: str):
       return list(data[country].keys())
   ```

4. **Test and Refine**
   - Run the route
   - If not working as expected, refine your prompt
   - Example refined prompt:
   ```
   Create a GET route for /countries/{country} that returns a list of cities
   ```

### Copilot Features Used
- Inline Chat (Ctrl+i)
- Code generation
- Prompt refinement

## Part 2: Create a Test (10 minutes)

### Task
Create a unit test for the new route using Spain as the test country.

### Steps

1. **Open Copilot Chat**
   - Open the dedicated Chat pane in VS Code

2. **Select Your Code**
   - Highlight the route you just created

3. **Request Test Generation**
   - Use the `/tests` slash command
   - Provide the following prompt:
   ```
   /tests help me to create a new test for this route that uses Spain as the country/region.
   ```

4. **Review Test Output**
   Expected test similar to:
   ```python
   def test_cities_spain():
       response = client.get("/countries/Spain")
       assert response.status_code == 200
       assert "Seville" in response.json()
   ```

5. **Refine if Needed**
   - Run the test
   - If it fails, provide additional context:
   ```
   This test is not quite right, it is not including cities that doesn't exist. Only Seville is part of the API.
   ```
   - Copilot will refine the test based on your feedback

### Copilot Features Used
- Copilot Chat
- Slash commands (/tests)
- Context from selected code
- Iterative refinement

---

## Part 3: Write Documentation with Agent (10 minutes)

### Task
Use Copilot Agent mode to create comprehensive README documentation.

### Steps

1. **Open README.md**
   - Open the README.md file in your project

2. **Switch to Agent Mode**
   - Open Copilot Chat
   - Click "Ask" → Select "Agent" mode

3. **Request Documentation**
   - Provide the following prompt:
   ```
   I want to document how to run this project so that other developers can get started quickly by reading the README.md file.
   ```

4. **Review Agent Response**
   - The Agent will analyze your project
   - Generate comprehensive setup instructions
   - Include usage examples
   - Add API endpoint documentation

5. **Apply Suggestions**
   - Accept Copilot's documentation updates
   - Review for accuracy
   - Customize as needed

### Expected Documentation Includes
- Project overview
- Prerequisites
- Installation instructions
- How to run the API
- API endpoint examples
- Testing instructions
- Contributing guidelines

### Copilot Features Used
- Agent mode
- Project analysis
- Documentation generation
- Multi-file context understanding

---

## Exercise Summary

### What You Learned

| Copilot Feature | Usage | Benefit |
|-----------------|-------|---------|
| Inline Chat (Ctrl+i) | Generate API routes | Quick code generation |
| Code Selection + Chat | Target specific code | Precise suggestions |
| Slash Commands (/tests) | Generate tests | Automated test creation |
| Agent Mode | Documentation | Comprehensive analysis |
| Iterative Refinement | Feedback-based improvement | Better results |

### Key Takeaways

✅ **Inline Chat** is powerful for quick code generation  
✅ **Selecting code context** improves suggestion accuracy  
✅ **Slash commands** automate common tasks  
✅ **Agent mode** understands entire project context  
✅ **Iterative prompting** refines results  

---

## Verification Checklist

- [ ] New route `/countries/{country}` created
- [ ] Route returns list of cities
- [ ] Test created using `/tests` command
- [ ] Test validates Spain as country
- [ ] Test passes successfully
- [ ] README.md updated with setup instructions
- [ ] README includes API endpoint documentation
- [ ] README has usage examples
- [ ] All changes committed to git
- [ ] Copilot suggestions understood and applied

---

## Tips for Success

### When Using Inline Chat (Ctrl+i):
1. Be specific about what you want
2. Provide context through comments
3. Test the generated code immediately
4. Refine if the output isn't perfect

### When Creating Tests:
1. Use the `/tests` slash command
2. Select the function being tested
3. Provide specific test scenarios
4. Let Copilot know about edge cases

### When Using Agent Mode:
1. Switch to Agent before complex tasks
2. Let Copilot scan your entire project
3. Ask for specific documentation elements
4. Review changes carefully

---

## Common Prompts Reference

| Task | Prompt |
|------|--------|
| Generate route | `Create a new route that exposes the cities of a country/region.` |
| Create test | `/tests help me to create a new test for this route that uses Spain` |
| Write docs | `I want to document how to run this project so other developers can get started quickly` |
| Fix test | `This test is not quite right, [describe the issue]` |
| Add example | `Add an example showing how to use this route` |

---

## Repository Integration

This exercise should be saved in your `RobsAITraining2026` repository:

**Location:** `/exercises/WEB-API-UPDATE-EXERCISE.md`  
**Supporting Files:** 
- `python-api-starter.py` - Starter Python API code
- `test-starter.py` - Starting test file template

---

## Time Estimate

- **Part 1 (New Route):** 10 minutes
- **Part 2 (Create Test):** 10 minutes
- **Part 3 (Documentation):** 10 minutes
- **Review & Verification:** 5 minutes
- **Total:** ~35 minutes

---

## Next Steps

1. Complete this exercise in the provided Codespace
2. Commit your changes to GitHub
3. Document what you learned
4. Prepare to share with Glenn Harland
5. Explore advanced Copilot patterns

---

**Exercise Status:** Ready to Begin  
**Difficulty:** Intermediate  
**Prerequisites:** GitHub Copilot, Python knowledge, VS Code  
**Skills Covered:** API development, testing, documentation
