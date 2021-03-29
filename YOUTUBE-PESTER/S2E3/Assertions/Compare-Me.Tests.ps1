$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
.$here\$sut

# Get-Help Should
$actual = 'Actual value'
Describe 'Should Assertions tests'{
    # It 'Tests Old Syntax: Tests will pass'{
    #     $true | Should -Be $true
    # }
    # It 'Tests Negation: Test will pass'{
    #     $true | Should -Not -Be $false
    # }
    # It 'Tests Negation: Test will fail' {
    #     $false | Should -Be $true -Because 'Honest is the best policy'
    # }
    # It 'Tests Should -Be: Test will pass' {
    #     $actual | Should -Be 'actual value'
    # }
    # It 'Tests Should -Be: Test will fail' {
    #     $actual | Should -Be 'not actual value'
    # }
    # It 'Tests Should -BeExactly: Test will pass' {
    #     $actual | Should -BeExactly 'Actual value'
    # }
    # It 'Tests Should -BeExactly: Test will fail'{
    #     $actual | Should -Not -BeExactly 'not actual value'
    # }
    # It 'Tests Should -BeGreaterThan: Test will pass' {
    #     $Error.Count | Should -BeGreaterThan 0
    # }
    # It 'Tests Should -BeGreaterThan: Test will pass'{
    #     (Get-Date).AddMinutes(5) | Should -BeGreaterThan (Get-Date)
    # }
    # It 'Tests Should be greater than or equal: Test will pass'{
    #     2 | Should -BeGreaterOrEqual 0
    # }
    # It 'Tests Should -BeLessThan: Test will pass' {
    #     $Error.Clear()
    #     $Error.Count | Should -BeLessOrEqual 0
    # }
    # $actual = 'Actual value' 
    # It 'Tests Should -BeLike: Test will pass' {
    #     $actual | Should -BeLike 'actual *'
    # }
    $actual = Get-Item $env:SystemRoot
    $actual.GetType()
    
    It 'Tests Should -BeOfType: Test will pass' {
        $actual | Should -BeOfType [System.IO.DirectoryInfo]
    }

}   