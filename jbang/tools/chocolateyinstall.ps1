# Generated with JReleaser 1.19.0 at 2025-11-30T15:50:53.256892Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.135.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.135.0/jbang-0.135.0.zip' `
    -Checksum 'ce378c5eaabc2de2186cd9884bca933a162e2604d0c06c5d6951e14471f27ba0' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
