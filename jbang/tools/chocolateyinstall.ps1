# Generated with JReleaser 1.15.0 at 2025-03-19T06:53:32.459911Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.125.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.125.0/jbang-0.125.0.zip' `
    -Checksum '7e31c995b7d775e3c64920def08e5a484e4364ca17a75b6d51656bf23065e524' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
