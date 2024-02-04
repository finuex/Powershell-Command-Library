Add-Type -AssemblyName System.Windows.Forms

# Membuat objek FolderBrowserDialog untuk memilih direktori
$folderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
$folderBrowser.Description = 'Pilih Direktori'

# Menampilkan dialog pemilihan direktori
$dialogResultFolder = $folderBrowser.ShowDialog()

# Memeriksa apakah pengguna telah memilih direktori
if ($dialogResultFolder -eq [System.Windows.Forms.DialogResult]::OK) {
    # Mendapatkan path direktori yang dipilih
    $selectedFolder = $folderBrowser.SelectedPath

    # Membuat objek SaveFileDialog untuk menyimpan file CSV
    $saveFileDialog = New-Object System.Windows.Forms.SaveFileDialog
    $saveFileDialog.Filter = 'CSV Files (*.csv)|*.csv'
    $saveFileDialog.Title = 'Simpan Daftar Nama File sebagai CSV'
    $saveFileDialog.InitialDirectory = $selectedFolder

    # Menampilkan dialog penyimpanan
    $dialogResultSave = $saveFileDialog.ShowDialog()

    # Memeriksa apakah pengguna telah memilih lokasi penyimpanan dan nama file
    if ($dialogResultSave -eq [System.Windows.Forms.DialogResult]::OK) {
        # Mendapatkan path dan nama file yang dipilih oleh pengguna
        $selectedFilePath = $saveFileDialog.FileName

        # Mendapatkan daftar nama file di folder
        $fileList = Get-ChildItem -Path $selectedFolder | Where-Object { $_.PSIsContainer -eq $false } | Select-Object Name

        # Menyimpan daftar nama file ke dalam file CSV
        $fileList | Export-Csv -Path $selectedFilePath -NoTypeInformation

        Write-Host "Daftar nama file telah disimpan di: $selectedFilePath"
    } else {
        Write-Host "Penyimpanan dibatalkan."
    }
} else {
    Write-Host "Pemilihan direktori dibatalkan."
}
