# Copilot Chat Context Management Exercise

## Using Context References in Copilot Chat

### What is Context?
Context is additional information you provide to Copilot to help it give better, more relevant answers. It can include:
- Files from your project
- Images or screenshots
- Your entire solution/workspace
- Specific code snippets
- Documentation

### How to Add Context:

**Method 1: Using the + Button**
1. Open Copilot Chat window
2. Look for the **"+"** button in the chat input area
3. Click it to see context options:
   - **Attach Files** - Select specific .ps1, .md, or other files
   - **Attach Images** - Add screenshots for visual reference
   - **Attach Folder** - Include entire directory
   - **Attach Solution/Workspace** - Reference all open projects

### Example: Using AD-UserSearch.ps1 as Context

**Scenario:** You want Copilot to analyze your AD-UserSearch script

**Steps:**
1. Open Copilot Chat
2. Click **"+"** button
3. Select **"Attach Files"**
4. Choose **AD-UserSearch.ps1**
5. Ask your question:
   ```
   "Analyze this script and suggest improvements for error handling and performance"
   ```

Copilot will now:
- Read the entire file
- Understand the context
- Provide targeted, relevant suggestions
- Reference specific lines in its response

### Benefits of Context References:

✅ **Better Answers** - Copilot understands your specific code
✅ **Targeted Help** - Get suggestions for YOUR actual script
✅ **Faster Debugging** - Share error details with full file context
✅ **Accurate Documentation** - Generate docs based on your actual implementation
✅ **Smart Refactoring** - Suggestions aligned with your codebase

### Example Prompts with Context:

With AD-UserSearch.ps1 attached:
- "How can I make this more efficient?"
- "What error handling is missing?"
- "Rewrite this as a module function"
- "Generate unit tests for this script"
- "Document this script with comment-based help"

### Multiple File Context:

You can attach multiple files:
1. Click **"+"** several times
2. Add different files
3. Ask questions that need multiple file understanding
4. Copilot analyzes all attached files together

### Solution-Wide Context:

For project-level analysis:
1. Click **"+"**
2. Select **"@workspace"** or **"Attach Solution"**
3. Ask questions about your entire project structure
4. Copilot can provide comprehensive refactoring suggestions

### Tips for Effective Context Usage:

1. **Be Specific** - Attach only files you need (improves response quality)
2. **Clear Questions** - State what you want to know about the context
3. **Include Error Messages** - Attach screenshots of errors for better help
4. **Stack Context** - Use multiple files for complex questions
5. **Review References** - Copilot shows which parts it referenced
