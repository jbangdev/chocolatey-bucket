# Generated with JReleaser 1.25.0-SNAPSHOT at 2026-07-14T05:08:56.758974619Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.141.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.141.0/jbang-0.141.0.zip' `
    -Checksum 'be34e7416227dac8b98c79e07d80488d73b3e131272a616e0754a7d496133fc0' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
