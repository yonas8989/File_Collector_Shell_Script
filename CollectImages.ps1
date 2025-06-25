# Define the source directory
$sourceDir = "C:\Users\hp\OneDrive\Desktop\sebele_mihiretu_project\Dataset\Normal"

# Define the destination directory
$destinationDir = "C:\Users\hp\OneDrive\Desktop\sebele_mihiretu_project\Dataset\Normal_collected"

# Create the destination folder if it doesn't exist
if (-not (Test-Path -Path $destinationDir)) {
    New-Item -ItemType Directory -Path $destinationDir | Out-Null
}

# Array of common image file extensions
$imageExtensions = @("*.jpg", "*.jpeg", "*.png", "*.bmp", "*.gif")

# Initialize counters
$successCount = 0
$errorCount = 0

# Loop through each image extension and copy files
foreach ($ext in $imageExtensions) {
    $files = Get-ChildItem -Path $sourceDir -Recurse -Include $ext
    foreach ($file in $files) {
        try {
            $destinationPath = Join-Path -Path $destinationDir -ChildPath $file.Name
            # Check if file already exists in destination
            if (-not (Test-Path -Path $destinationPath)) {
                Copy-Item -Path $file.FullName -Destination $destinationDir -Force -ErrorAction Stop
                $successCount++
            } else {
                Write-Warning "File already exists: $($file.Name)"
            }
        }
        catch {
            Write-Warning "Failed to copy $($file.FullName): $_"
            $errorCount++
        }
    }
}

Write-Host "Image collection completed. Success: $successCount, Errors: $errorCount"