function ConvertTo-UpperCase {
    # This function takes a string and converts it to uppercase
    # It should also return the character count
    
    param(
        [Parameter(Mandatory=$true)]
        [string]$InputString
    )
    
    $upperString = $InputString.ToUpper()
    $charCount = $upperString.Length
    
    [PSCustomObject]@{
        Original     = $InputString
        Uppercase    = $upperString
        CharCount    = $charCount
        WordCount    = $upperString.Split(' ').Count
    }
}

# Example usage
ConvertTo-UpperCase -InputString "Hello World from PowerShell"
