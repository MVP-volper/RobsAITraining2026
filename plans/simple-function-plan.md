# PowerShell Function: Count Lines in a Text File

## Implementation Plan

### 1. **Function Signature**
```powershell
function Count-FileLines {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [string]$FilePath
    )
    
    # Implementation here
}
```

### 2. **Key Implementation Steps**

**Step 1: Validate Input**
- Check if file path is provided
- Verify file exists before processing
- Handle empty or null paths

**Step 2: Read and Count Lines**
- Use `@(Get-Content -Path $FilePath).Count` to get line count
- Handle both single-line and multi-line files correctly
- Consider alternative: `(Get-Content -Path $FilePath | Measure-Object -Line).Lines`

**Step 3: Return Result**
- Return the line count as an integer
- Include optional file information (name, size, path)

**Step 4: Format Output**
- Return a PSCustomObject with properties: LineCount, FilePath, FileSize, CreatedDate

### 3. **Error Handling Considerations**

- **File Not Found**: Use `-ErrorAction Stop` or throw custom exception
- **Access Denied**: Wrap in try-catch to handle permission issues
- **Empty Files**: Ensure returns 0, not null
- **Large Files**: Consider performance for very large files
- **Special Cases**: Handle files with no newline at end

### 4. **Example Usage**

```powershell
# Basic usage
Count-FileLines -FilePath "C:\path\to\file.txt"

# Pipeline usage
"C:\path\to\file.txt" | Count-FileLines

# With error handling
try {
    $result = Count-FileLines -FilePath $filePath
    Write-Host "File has $($result.LineCount) lines"
} catch {
    Write-Error "Failed to count lines: $_"
}
```

### 5. **Complete Function Implementation**

```powershell
function Count-FileLines {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [string]$FilePath
    )
    
    try {
        # Validate file exists
        if (-not (Test-Path -Path $FilePath -PathType Leaf)) {
            throw "File not found: $FilePath"
        }
        
        # Get file info
        $file = Get-Item -Path $FilePath
        
        # Count lines
        $lineCount = @(Get-Content -Path $FilePath -ErrorAction Stop).Count
        
        # Handle single-line files
        if ($lineCount -eq 0 -and (Get-Content -Path $FilePath | Measure-Object).Count -gt 0) {
            $lineCount = 1
        }
        
        # Return result
        [PSCustomObject]@{
            FilePath    = $file.FullName
            LineCount   = $lineCount
            FileSize    = $file.Length
            CreatedDate = $file.CreationTime
        }
    }
    catch {
        Write-Error "Error counting lines in file: $_"
        return $null
    }
}
```

---

**Plan Created By:** GitHub Copilot in VS Code  
**Purpose:** Exercise for "Get started with GitHub Copilot" training module  
**Step:** 4 - Use Plan Agent
