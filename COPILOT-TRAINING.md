# GitHub Copilot Training Exercises

This document tracks your progress through the "Get started with GitHub Copilot" Microsoft Learn module.

## ✅ COMPLETED
- [x] Step 1: Open Copilot in Visual Studio
- [x] Step 2: Install Copilot (if needed)
- [x] Step 3: Sign in to GitHub

## 🔄 IN PROGRESS / TODO

### Phase 1: Core Features (5 steps)
- [ ] **Step 4**: Use Plan Agent
  - Task: Use Copilot Chat to create an implementation plan
  - Instructions: In VS Code, open Copilot Chat, select "Plan" agent, ask it to create a plan for a simple task
  - Exercise: Ask Copilot to plan "Create a function to count lines in a PowerShell script"
  - Deliverable: Save the plan output in `/plans/simple-function-plan.md`

- [ ] **Step 5**: Use Agent Mode & MCP Servers
  - Task: Switch to Agent mode and explore available MCP servers
  - Instructions: In Copilot Chat, click "Ask" → select "Agent" mode, click tools icon to see MCP options
  - Exercise: Configure at least one MCP server and use it in a query
  - Deliverable: Screenshot or notes on which MCP servers are available

- [ ] **Step 6**: Use Code Completions
  - Task: Enable and accept inline code completions
  - Instructions: Start typing in an editor, let Copilot suggest code, press Tab/Ctrl+Right to accept
  - Exercise: Create a new PowerShell function stub and let Copilot complete it
  - Deliverable: Save the completed function in `/exercises/completion-exercise.ps1`

- [ ] **Step 7**: Use Next Edit Suggestions
  - Task: Allow Copilot to suggest edits to existing code
  - Instructions: Add a comment describing what a function should do, let Copilot suggest implementation
  - Exercise: Create a function with just a description, accept Copilot's edit suggestions
  - Deliverable: Save the function in `/exercises/edit-suggestions-exercise.ps1`

- [ ] **Step 8**: Use Copilot Actions
  - Task: Find and use Copilot actions from context menus
  - Instructions: Right-click in editor → Look for Copilot actions, or use error list for Copilot suggestions
  - Exercise: Create some code with potential issues, use Copilot actions to fix them
  - Deliverable: Notes on available Copilot actions found

### Phase 2: Workflow Optimization (3 steps)
- [ ] **Step 10**: Manage Context with References
  - Task: Use the + button to attach context to Copilot Chat
  - Instructions: In chat window, click + to add files, images, or solution context
  - Exercise: Ask Copilot a question about your AD-UserSearch.ps1 script by attaching it as context
  - Deliverable: Save chat transcript with attached context example

- [ ] **Step 11**: Use Chat History Panel
  - Task: Navigate previous conversations and resume sessions
  - Instructions: In Copilot Chat, view chat history, click on previous conversations
  - Exercise: Have multiple conversations and resume one from history
  - Deliverable: Notes on how to navigate chat history

- [ ] **Step 12**: Access Different Models
  - Task: Switch between different AI models
  - Instructions: In prompt window, use model picker dropdown
  - Exercise: Ask same question to 2 different models, compare responses
  - Deliverable: Comparison notes in `/exercises/model-comparison.md`

### Phase 3: Advanced (1 step)
- [ ] **Step 9**: Use Debugger Agent
  - Task: Use Copilot to debug and fix code issues
  - Instructions: Start from an issue, reproduce problem, let Copilot add instrumentation and suggest fixes
  - Exercise: Create a PowerShell script with a bug, use Debugger Agent to fix it
  - Deliverable: Before/after code in `/exercises/debugger-agent-example.ps1`

---

## 📁 Exercise Directory Structure
```
RobsAITraining2026/
├── AD-UserSearch.ps1           (already completed)
├── COPILOT-TRAINING.md         (this file)
├── exercises/
│   ├── completion-exercise.ps1
│   ├── edit-suggestions-exercise.ps1
│   ├── model-comparison.md
│   └── debugger-agent-example.ps1
└── plans/
    └── simple-function-plan.md
```

---

## 🎯 How to Use This Guide
1. Work through each step in order
2. Complete the exercise and create the deliverable
3. Commit your work to GitHub
4. Update this file with ✓ checkmarks as you complete each step
5. Push to GitHub when done

---

**Start with:** Step 4 (Use Plan Agent)
