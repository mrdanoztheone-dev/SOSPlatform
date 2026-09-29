[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string] $Title,

    [Parameter(Mandatory)]
    [string] $Summary,

    [ValidateSet('Project update', 'Story')]
    [string] $Kind = 'Project update',

    [string] $ImagePath,

    [datetime] $Date = (Get-Date)
)

$ErrorActionPreference = 'Stop'
$repositoryRoot = Split-Path -Parent $PSScriptRoot
$slug = $Title.ToLowerInvariant() -replace '[^a-z0-9]+', '-'
$slug = $slug.Trim('-')
if ([string]::IsNullOrWhiteSpace($slug)) {
    throw 'The title must contain at least one letter or number.'
}

$datePrefix = $Date.ToString('yyyy-MM-dd')
$postsDirectory = Join-Path $repositoryRoot '_posts'
$postPath = Join-Path $postsDirectory "$datePrefix-$slug.md"
if (Test-Path -LiteralPath $postPath) {
    throw "A post already exists at $postPath"
}

New-Item -ItemType Directory -Path $postsDirectory -Force | Out-Null
$imageFrontMatter = @()
if (-not [string]::IsNullOrWhiteSpace($ImagePath)) {
    $resolvedImage = Resolve-Path -LiteralPath $ImagePath
    $extension = [IO.Path]::GetExtension($resolvedImage.Path).ToLowerInvariant()
    if ($extension -notin '.png', '.jpg', '.jpeg', '.webp', '.gif') {
        throw 'Screenshot must be a PNG, JPEG, WebP, or GIF file.'
    }

    $imageDirectory = Join-Path $repositoryRoot 'assets\updates'
    New-Item -ItemType Directory -Path $imageDirectory -Force | Out-Null
    $imageName = "$datePrefix-$slug$extension"
    Copy-Item -LiteralPath $resolvedImage.Path -Destination (Join-Path $imageDirectory $imageName)
    $imageFrontMatter += "image: /assets/updates/$imageName"
    $imageFrontMatter += "image_alt: '$($Title.Replace("'", "''"))'"
}

$safeTitle = $Title.Replace("'", "''")
$safeSummary = $Summary.Replace("'", "''")
$safeKind = $Kind.Replace("'", "''")
$frontMatter = @(
    '---'
    'layout: update'
    "title: '$safeTitle'"
    "date: $($Date.ToString('yyyy-MM-dd HH:mm:ss zzz'))"
    "kind: '$safeKind'"
    "summary: '$safeSummary'"
) + $imageFrontMatter + @(
    '---'
    ''
    $Summary
    ''
    '## What changed'
    ''
    'Write the update here.'
    ''
    '## What is next'
    ''
    'Add the next likely step, or remove this section.'
    ''
)

Set-Content -LiteralPath $postPath -Value $frontMatter -Encoding utf8
Write-Host "Created $postPath"
if ($imageFrontMatter.Count -gt 0) {
    Write-Host 'The screenshot was copied into assets/updates.'
}
