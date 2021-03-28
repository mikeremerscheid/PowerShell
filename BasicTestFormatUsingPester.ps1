describe "check server"{
context "check server name" {
it "computername should eq DESKTOP-UQVGMQ3" {
$env:computername | should be "DESKTOP-UQVGMQ3"
}
}
}