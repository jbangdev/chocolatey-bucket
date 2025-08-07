# Generated with JReleaser 1.19.0 at 2025-08-07T18:40:38.056685Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.129.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.129.0/jbang-0.129.0.zip' `
    -Checksum 'e9b9000bf490065329f8279e13ef47d1d57f1ef16ecd7c3dc62e070c530417f3' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
