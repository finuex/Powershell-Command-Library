# Specify the source and destination folders
$sourceFolder = "C:\Users\finue\Downloads"
$destinationFolder = "C:\Users\finue\Downloads"

# Get all unique file extensions in the source folder
$fileExtensions = Get-ChildItem -Path $sourceFolder -File | Select-Object -ExpandProperty Extension -Unique

# Create folders for each file extension in the destination folder
foreach ($extension in $fileExtensions) {
    $folderPath = Join-Path -Path $destinationFolder -ChildPath $extension.TrimStart('.')
    New-Item -ItemType Directory -Path $folderPath -Force
}

# Move files to their respective folders based on extensions
Get-ChildItem -Path $sourceFolder -File | ForEach-Object {
    $extension = $_.Extension.TrimStart('.')
    $destinationPath = Join-Path -Path $destinationFolder -ChildPath $extension
    Move-Item -Path $_.FullName -Destination $destinationPath -Force
}

Write-Host "Files moved successfully."
