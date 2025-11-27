# Generated with JReleaser 1.19.0 at 2025-11-27T08:26:27.286372Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.134.3'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.134.3/jbang-0.134.3.zip' `
    -Checksum '64696f05c4b746f7f855f6574eab0fe7534e7a4460fc1aec290a2cbdc8c7f131' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
