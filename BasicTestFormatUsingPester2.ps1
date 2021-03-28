$be_computer = "localhost"

Describe "Chocolatey Server" {
    #Context "Check database versions"{
    #$package = "chocolatey.server 0.2.5"
    #    It "$package is installed"{
    #       $m = Invoke-Command -computer $be_computer -ScriptBlock {(choco list -l)}
    #       ($m -cmatch $package) | should be $package
    #    }
    #}
    #Context "Check http Port"{
    #    $http_ports = @('80', '443')
    #    foreach ($port in $http_ports){
    #        it "Server is listening on port $port" {
    #            $port_state = Invoke-Command -computer $be_computer `
    #            -ScriptBlock {param($port)(Get-NetTCPConnection -LocalPort $port `
    #            -ErrorAction SilentlyContinue).State} `
    #            -ArgumentList $port
    #            $port_state.Value -contains "Listen" | should be $true
    #            }
    #    }
    #}
    Context "check content is returned"{
        $returnpackage = (choco list -s http://${be_computer}chocolatey)
        it "$be_computer returns packages" {
            $(!($returnpackage)) | should be false
            }
    }
}