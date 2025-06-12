# Generated with JReleaser 1.15.0 at 2025-06-12T22:08:20.595687Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.126.3'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.126.3/jbang-0.126.3.zip' `
    -Checksum 'c45ac143bc92f4b9d3d35742a4852db95cf8a25765a0aa4d705b236ae346c066' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
