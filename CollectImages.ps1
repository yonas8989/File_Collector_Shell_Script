# Define the source directory (where Directory_1 to Directory_16 are located)
$sourceDir = "C:\Users\hp\OneDrive\Desktop\sebele_mihiretu_project\Dataset\Sick"


# Define the destination directory (where images will be collected)
$destinationDir = "C:\Users\hp\OneDrive\Desktop\sebele_mihiretu_project\Dataset\Sick_Collected"

# Create the destination folder if it doesn't exist
if (-not (Test-Path -Path $destinationDir)) {
    New-Item -ItemType Directory -Path $destinationDir | Out-Null
}

# Array of common image file extensions
$imageExtensions = @("*.jpg", "*.jpeg", "*.png", "*.bmp", "*.gif")

# Loop through each image extension and copy files
foreach ($ext in $imageExtensions) {
    Get-ChildItem -Path $sourceDir -Recurse -Include $ext | 
    Copy-Item -Destination $destinationDir -Force
}

Write-Host "Images have been collected into $destinationDir"