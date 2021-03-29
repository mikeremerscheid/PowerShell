$file = "C:\Users\miker\Desktop\Programming\PS\CSV_Practice\data.csv"
$data = Import-Csv $file
$results = $data | Where-Object {($_.Location -notlike "Seattle") -and ($_.Location -notlike "Washington DC")}
$results | Format-Table