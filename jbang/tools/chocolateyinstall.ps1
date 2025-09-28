# Generated with JReleaser 1.19.0 at 2025-09-28T12:19:19.246802Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.132.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.132.0/jbang-0.132.0.zip' `
    -Checksum 'f8c2f74393711bf88c97b15f0c1f940fb2271735413a2c380a1df567d7e98433' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
