# Generated with JReleaser 1.15.0 at 2024-12-16T10:33:03.395776Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.122.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.122.0/jbang-0.122.0.zip' `
    -Checksum '2decdc489a9dd1aed9046ed617e038c1558ccfa5c98b5db5fc81ef157da3f9e2' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
