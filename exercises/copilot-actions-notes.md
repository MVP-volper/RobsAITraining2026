# Copilot Actions Exercise
# This file demonstrates discovering and using Copilot actions

## Available Copilot Actions in VS Code:

### 1. **Code Analysis Actions**
   - Right-click on any code → "Copilot" menu appears
   - Available actions:
     * Explain Code - Get detailed explanation
     * Generate Tests - Auto-generate unit tests
     * Generate Docs - Create documentation
     * Fix Code - Get suggestions to fix issues
     * Refactor - Improve code quality

### 2. **Error List Actions**
   - Errors appear in VS Code Error List
   - Right-click on error → "Ask Copilot" option
   - Copilot provides targeted fix suggestions

### 3. **Feature Search Actions**
   - Press Ctrl+Shift+P (Command Palette)
   - Search "Copilot:" to see available Copilot commands
   - Available commands:
     * Copilot: Open Chat
     * Copilot: Quick Chat
     * Copilot: Clear Session

### 4. **Context Menu Actions**
   - Right-click in editor → Look for "Copilot" submenu
   - Quick access to common AI-assisted tasks

## Practical Example:

Here's code with potential issues that Copilot actions can help with:

```powershell
function ProcessFile($file) {
    $content = Get-Content $file
    foreach ($line in $content) {
        Write-Output $line
    }
}
```

**Potential Issues Copilot Actions Can Help With:**
- Missing parameter validation
- No error handling
- Missing documentation
- No type hints
- Potential null reference issues

**Using Copilot Actions to Fix:**
1. Right-click on the function → "Copilot: Fix Code"
2. Right-click → "Copilot: Generate Docs"
3. Right-click → "Copilot: Explain Code"

## Benefits of Copilot Actions:
✅ Quick code review without leaving editor
✅ Instant documentation generation
✅ Error diagnosis and fixes
✅ Test generation
✅ Code refactoring suggestions
