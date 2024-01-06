Get-ChildItem -Path "C:\Your\Target\Directory" -Recurse | ForEach-Object {
    [PSCustomObject]@{
        Path  = $_.FullName
        Length = $_.FullName.Length
    }
} | Sort-Object -Property Depth | Export-Csv -Path "C:\Path\To\Output\File.csv" -NoTypeInformation
