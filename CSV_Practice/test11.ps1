$file = "C:\Users\miker\Desktop\Programming\PS\CSV_Practice\data.csv"
$data = Import-Csv $file
$results = $data | Where-Object {$_.ID -ge 3}
$results | Format-Table