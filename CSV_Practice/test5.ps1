$file = "C:\Users\miker\Desktop\Programming\PS\CSV_Practice\data.csv"
$data = Import-Csv $file
$results = $data | Where-Object {$_.Location -eq "Seattle"}
$results | Format-Table