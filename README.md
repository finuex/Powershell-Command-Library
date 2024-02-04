# Powershell-Command-Library
### [Directory Depth Generator](https://github.com/finuex/Powershell-Command-Library/blob/main/Directory-Depth-Generator.ps1)
This command will execute sort the results by depth, and then save the sorted result to the specified CSV file.
Replace `C:\Your\Target\Directory` with the path to the directory you want to analyze, and `C:\Path\To\Output\File.csv` with the desired path and filename for the CSV file. The Sort-Object cmdlet is used to sort the results by the "Depth" property in ascending order, and Export-Csv is used to save the results to a CSV file. 

### [Directory Length Generator](https://github.com/finuex/Powershell-Command-Library/blob/main/Directory-Length-Generator.ps1)
This command will execute, sort the results by path length, and then save the sorted result to the specified CSV file.
Replace `C:\Your\Target\Directory` with the path to the directory you want to analyze, and `C:\Path\To\Output\File.csv` with the desired path and filename for the CSV file. The Sort-Object cmdlet is used to sort the results by the "Length" property in ascending order, and Export-Csv is used to save the results to a CSV file. 

### [Filename List Generator](https://github.com/finuex/Powershell-Command-Library/blob/main/filename-list-generator.ps1)
Script untuk menyimpan daftar nama file dari direktori tertentu ke dalam file CSV

### [Move Files to Folders Based on Their Extensions](https://github.com/finuex/Powershell-Command-Library/blob/main/Move-Files-to-Folders-Based-on-Their-Extensions.ps1)
This command will move files to folders based on their extensions. Replace the values of `$sourceFolder` and `$destinationFolder` with the actual paths of your source and destination folders. This script first identifies unique file extensions in the source folder, creates folders for each extension in the destination folder, and then moves files to their respective folders based on their extensions.
