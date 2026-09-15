function Get-FileInfo {
    param(
        [string]$FilePath
    )
    
    if (-not (Test-Path -Path $FilePath)) {
        Write-Error "File not found: $FilePath"
        return $null
    }
    
    $file = Get-Item -Path $FilePath
    
    [PSCustomObject]@{
        Name         = $file.Name
        FullPath     = $file.FullName
        Size         = $file.Length
        Created      = $file.CreationTime
        Modified     = $file.LastWriteTime
        IsReadOnly   = $file.Attributes -match 'ReadOnly'
        Extension    = $file.Extension
    }
}

# Example usage
Get-FileInfo -FilePath "C:\temp\testfile.txt"
