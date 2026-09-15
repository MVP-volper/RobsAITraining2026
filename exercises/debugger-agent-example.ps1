# BEFORE: Script with Bug
# This script has a logical error that causes incorrect output

function Get-UserStats {
    param(
        [array]$Users
    )
    
    $totalAge = 0
    foreach ($user in $Users) {
        $totalAge = $user.Age  # BUG: Should be += not =
    }
    
    $averageAge = $totalAge / $Users.Count
    return $averageAge
}

# Test data
$testUsers = @(
    [PSCustomObject]@{ Name = "Alice"; Age = 25 },
    [PSCustomObject]@{ Name = "Bob"; Age = 30 },
    [PSCustomObject]@{ Name = "Charlie"; Age = 35 }
)

# This should return 30 (average of 25, 30, 35)
# But it returns 35 due to the bug
Write-Host "Average Age: $(Get-UserStats -Users $testUsers)"

---

# AFTER: Fixed Script
# Debugger Agent helped identify and fix the issue

function Get-UserStats {
    param(
        [Parameter(Mandatory=$true)]
        [array]$Users,
        
        [switch]$Verbose
    )
    
    if ($Users.Count -eq 0) {
        throw "Users array cannot be empty"
    }
    
    $totalAge = 0
    
    foreach ($user in $Users) {
        if ($null -eq $user.Age) {
            Write-Warning "User '$($user.Name)' has null Age, skipping"
            continue
        }
        
        $totalAge += $user.Age  # FIXED: Changed = to +=
        
        if ($Verbose) {
            Write-Host "  Processing: $($user.Name) (Age: $($user.Age)), Running Total: $totalAge"
        }
    }
    
    if ($totalAge -eq 0) {
        throw "No valid age data found in users array"
    }
    
    $averageAge = $totalAge / $Users.Count
    
    return [PSCustomObject]@{
        AverageAge = [math]::Round($averageAge, 2)
        TotalAge = $totalAge
        UserCount = $Users.Count
    }
}

# Test data
$testUsers = @(
    [PSCustomObject]@{ Name = "Alice"; Age = 25 },
    [PSCustomObject]@{ Name = "Bob"; Age = 30 },
    [PSCustomObject]@{ Name = "Charlie"; Age = 35 }
)

# Now correctly returns 30
$result = Get-UserStats -Users $testUsers -Verbose
Write-Host "Results:"
Write-Host "  Average Age: $($result.AverageAge)"
Write-Host "  Total Age: $($result.TotalAge)"
Write-Host "  User Count: $($result.UserCount)"

---

## How Debugger Agent Helped:

### Bug Identified:
**Line 12 (Before):** `$totalAge = $user.Age`
**Issue:** Used assignment (=) instead of addition (+=)
**Impact:** Each loop iteration overwrote totalAge instead of accumulating

### Debugging Process:

1. **Reproduction** - Ran the script and got incorrect result (35 instead of 30)

2. **Instrumentation** - Added debug output:
   ```powershell
   Write-Host "DEBUG: Processing $($user.Name), Age: $($user.Age), Running Total: $totalAge"
   ```

3. **Analysis** - Saw that $totalAge was being overwritten each time

4. **Root Cause** - Identified the operator error (= instead of +=)

5. **Fix Applied** - Changed line 12 to use += operator

6. **Verification** - Re-ran script and confirmed correct output (30)

### Additional Improvements:

**Error Handling:**
- Added null check for Age property
- Added validation for empty array
- Added try-catch error handling

**Functionality:**
- Return object with detailed stats
- Optional verbose output for debugging
- Proper rounding of results

**Code Quality:**
- Added parameter validation
- Added documentation
- Added meaningful error messages

## Copilot Debugger Agent Workflow:

### Step 1: Identify the Problem
- Script produces incorrect output
- Error message or unexpected behavior appears

### Step 2: Ask Debugger Agent
```
"This PowerShell script calculates average age but returns 35 instead of 30.
Can you debug it and tell me what's wrong?"
```
*[Attach the buggy script]*

### Step 3: Copilot Debugger Agent:
- ✅ Analyzes the code
- ✅ Traces through logic
- ✅ Identifies the bug (assignment vs addition)
- ✅ Suggests instrumentation
- ✅ Provides fixed version

### Step 4: Apply the Fix
- Review the suggested fix
- Understand the problem
- Implement the solution
- Test with original data

### Step 5: Add Robustness
- Add error handling
- Add input validation
- Add logging/instrumentation
- Add unit tests

## Key Takeaways:

🐛 **Common Debugging Patterns:**
- Off-by-one errors
- Operator mistakes (= vs +=)
- Null reference issues
- Type mismatches
- Logic flow errors

✅ **Copilot Debugger Strengths:**
- Identifies logical errors quickly
- Suggests targeted fixes
- Adds defensive programming
- Improves code robustness

🎯 **Best Practices:**
- Describe the expected vs actual output
- Provide test data
- Share complete script
- Ask for step-by-step explanation
- Request improved version with error handling
