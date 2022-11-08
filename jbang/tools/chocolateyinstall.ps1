$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.100.0'
$app_bat = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.100.0/jbang-0.100.0.zip' `
    -Checksum '183355035e01f3dad8eacc5db18257aee11a88d3a390f64e3f0aae6a36239a3e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_bat
