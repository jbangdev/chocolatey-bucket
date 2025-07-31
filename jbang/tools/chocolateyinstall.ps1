# Generated with JReleaser 1.19.0 at 2025-07-31T05:36:18.993779Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.128.7'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.128.7/jbang-0.128.7.zip' `
    -Checksum 'bd2fb359d7f94c5e0c745a21664d777dd8dda5a78bc2daa696868a7f623fd647' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
