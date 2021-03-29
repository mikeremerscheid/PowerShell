$Names=@()
$Salaries=@()
Import-Csv 'C:\Users\miker\Desktop\Programming\PS\CSV_Practice\Users.csv' | ForEach-Object {
    $Names+=$_.Name
    $Salaries+=$_.Salary
}
$Names
$Salaries