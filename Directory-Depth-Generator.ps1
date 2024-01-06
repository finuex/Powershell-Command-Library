Get-ChildItem -Path "C:\Your\Target\Directory" -Recurse | ForEach-Object {
    $depth = $_.FullName.Split('\').Count - 1
    [PSCustomObject]@{
        Path  = $_.FullName
        Depth = $depth
    }
} | Sort-Object -Property Depth | Export-Csv -Path "C:\Path\To\Output\File.csv" -NoTypeInformation
