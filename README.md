# RobsAITraining2026

## Overview
PowerShell training exercises and scripts focused on Active Directory (AD) management, system administration, and automation tasks within the MVP Healthcare environment.

## 📚 Learning Objectives

By completing the exercises in this repository, you will:
- ✅ Master PowerShell Active Directory (AD) module operations
- ✅ Understand how to query and filter AD users efficiently
- ✅ Learn domain controller connectivity and verification
- ✅ Develop skills in property selection and data retrieval
- ✅ Build automated solutions for common AD administration tasks
- ✅ Apply best practices for PowerShell scripting

## 🎯 Exercises

### 1. AD-UserSearch.ps1
**Purpose**: Query Active Directory users by name pattern and return specific user properties.

**Description**: 
This script demonstrates how to search the MVP Healthcare Active Directory environment for users matching a specific name pattern (e.g., names starting with "reed"). It retrieves and displays key user attributes.

**Learning Topics**:
- Active Directory module import and usage
- Domain controller connectivity verification
- User filtering with `-Filter` parameter
- Property selection and formatting
- Working with MVP Healthcare infrastructure

**Script Components**:

```powershell
# Verify domain controller connectivity
nltest /dsgetdc:hq.mvphealthcare.com

# Load Active Directory module
Import-Module ActiveDirectory

# Query AD users and format results
Get-ADUser `
    -Server PRD-ADSDCR0004.hq.mvphealthcare.com `
    -Filter "Name -like 'reed*'" `
    -Properties SamAccountName,UserPrincipalName,DisplayName,Surname,GivenName |
Select-Object Name,SamAccountName,UserPrincipalName,GivenName,Surname
```

**Key Concepts**:
- **nltest**: Network diagnostics tool for verifying domain controller connectivity
- **Import-Module ActiveDirectory**: Loads AD cmdlets for querying directory services
- **Get-ADUser**: Retrieves user objects from Active Directory
- **-Server**: Specifies the target domain controller (PRD-ADSDCR0004.hq.mvphealthcare.com)
- **-Filter**: Filters users by name pattern (wildcard matching)
- **-Properties**: Specifies which AD attributes to retrieve
- **Select-Object**: Formats output with only desired columns

**Prerequisites**:
- PowerShell 3.0 or higher
- Active Directory module available (typically on Windows with RSAT installed)
- Network access to MVP Healthcare domain (hq.mvphealthcare.com)
- Access to production AD controller (PRD-ADSDCR0004.hq.mvphealthcare.com)

**How to Run**:
```powershell
# Run the script directly
.\AD-UserSearch.ps1

# Or execute inline
powershell -ExecutionPolicy Bypass -File AD-UserSearch.ps1
```

**Expected Output**:
A table with columns:
- **Name**: Full display name of the user
- **SamAccountName**: Windows login account name
- **UserPrincipalName**: Email-style user identifier
- **GivenName**: First name
- **Surname**: Last name

**Exercises & Modifications**:
1. Modify the filter to search for different name patterns
2. Add additional properties to the query (e.g., Department, Title, EmailAddress)
3. Export results to CSV using `Export-Csv`
4. Add error handling for connectivity issues
5. Create a function wrapper to make it reusable
6. Add parameters to make the search pattern dynamic

---

## 🚀 How to Use This Repository

1. **Clone the repository**:
   ```bash
   git clone https://github.com/MVP-volper/RobsAITraining2026.git
   cd RobsAITraining2026
   ```

2. **Review the exercise README** (this file)

3. **Run the scripts**:
   ```powershell
   .\AD-UserSearch.ps1
   ```

4. **Experiment and modify**:
   - Try different search filters
   - Add new properties
   - Create variations of the script

5. **Commit your progress**:
   ```bash
   git add .
   git commit -m "Complete exercise: AD-UserSearch modifications"
   git push
   ```

## 📋 Requirements

- **Operating System**: Windows (PowerShell native or Windows Subsystem for Linux with PowerShell Core)
- **PowerShell Version**: 3.0 or higher (5.1+ recommended)
- **Modules Required**:
  - ActiveDirectory module (Windows RSAT tools)
- **Network**: Access to MVP Healthcare domain infrastructure
- **Permissions**: Domain user credentials with appropriate AD query permissions

## 🔧 Setup Instructions

### Install ActiveDirectory Module (if not present):
```powershell
# Windows 10/11
Add-WindowsCapability -Online -Name "Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0"

# Windows Server
Install-WindowsFeature RSAT-AD-PowerShell
```

### Verify Module Installation:
```powershell
Get-Module -ListAvailable | Where-Object {$_.Name -eq 'ActiveDirectory'}
```

## 📝 Notes

- Scripts are designed for the MVP Healthcare environment
- Adjust server names and domain names for your environment
- Always use `-WhatIf` parameter when modifying directory data
- Follow your organization's AD change management procedures
- Test scripts in a non-production environment first

## 🔗 Resources

- [Microsoft Active Directory PowerShell Documentation](https://docs.microsoft.com/en-us/powershell/module/activedirectory/)
- [PowerShell Official Documentation](https://docs.microsoft.com/en-us/powershell/)
- [Active Directory Module Reference](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-r2-and-2008/ee617195(v=technet.10))

---

*Created with AI Copilot assistance for RobsAITraining2026*
