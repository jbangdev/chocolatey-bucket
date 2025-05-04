# Generated with JReleaser 1.15.0 at 2025-05-04T09:17:39.267707Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.126.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.126.0/jbang-0.126.0.zip' `
    -Checksum '0a9b63d37582e1826b5ed5f93f835cdc5e5b2701bf265149657d2ee3e195a8ff' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
