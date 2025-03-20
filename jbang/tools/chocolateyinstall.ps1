# Generated with JReleaser 1.15.0 at 2025-03-20T12:39:08.275187Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.125.1'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.125.1/jbang-0.125.1.zip' `
    -Checksum '746fb90b246d2a5d0546a376a14ffa48eb4d79d7312c47a003a9b3e0f9435b99' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
