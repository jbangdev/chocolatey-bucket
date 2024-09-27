# Generated with JReleaser 1.9.0 at 2024-09-27T20:21:22.806991Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.119.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.119.0/jbang-0.119.0.zip' `
    -Checksum '31876cc1ac9c5ecc531fe8c3abf255e78faf93c11ceb0a7f4cc819f8ada7f4c6' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
