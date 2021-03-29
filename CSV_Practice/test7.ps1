$file = "C:\Users\miker\Desktop\Programming\PS\CSV_Practice\data.csv"
$data = Import-Csv $file
$results = $data | Where-Object {$_.Date -like "*8/*"}
$results | Format-Table