$season = 7
$files = Get-ChildItem -Path "F:\lroblesweb\Certificados" -Filter "*.pdf"

$index = 1
foreach ($file in $files) {
    $newName = "Certificado {0}E{1:00}{2}" -f $season, $index, $file.Extension
    Rename-Item -Path $file.FullName -NewName $newName
    $index++
}
