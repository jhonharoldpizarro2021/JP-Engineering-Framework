param(
    [string]$BranchName,
    [int]$MaxLength = 80
)

$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($BranchName)) {
    $BranchName = (git branch --show-current).Trim()
}

if ([string]::IsNullOrWhiteSpace($BranchName)) {
    throw "Unable to determine the current branch."
}

$Pattern = '^(main|release/v[0-9]+\.[0-9]+\.[0-9]+|(?:feature|fix|hotfix|docs|refactor|test|build|ci|chore|security)/(?:[0-9]+-)?[a-z0-9]+(?:-[a-z0-9]+)*)$'

if ($BranchName.Length -gt $MaxLength) {
    throw "Invalid branch name: exceeds $MaxLength characters."
}

if ($BranchName -notmatch $Pattern) {
    throw "Invalid branch name: $BranchName"
}

Write-Host "Valid branch name: $BranchName"
