# Generated with JReleaser 1.19.0 at 2026-04-13T21:27:03.832933Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.138.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.138.0/jbang-0.138.0.zip' `
    -Checksum '3c9fb9ac5823ae5ab9d136dec08b896e2a0f6f6b313689b21f43c511b7c34b85' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
