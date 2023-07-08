# Generated with JReleaser 1.5.1 at 2023-07-08T08:36:51.211899Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.109.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.109.0/jbang-0.109.0.zip' `
    -Checksum '50cd3a82b85017e98c8e589c4b3a4e5c98dbfe49d2e6f3623f3c8864cafd1637' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
