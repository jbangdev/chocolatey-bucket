# Generated with JReleaser 1.15.0 at 2025-05-15T10:49:40.043891Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.126.1'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.126.1/jbang-0.126.1.zip' `
    -Checksum '1aebd2c3f1883089349492f2e3ef951de2927a05c764d26874730821be529511' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
