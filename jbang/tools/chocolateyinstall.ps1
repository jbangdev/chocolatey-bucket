# Generated with JReleaser 1.15.0 at 2025-01-25T13:02:41.397908Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.123.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.123.0/jbang-0.123.0.zip' `
    -Checksum 'f77e3c1962c321bb68b62c105e6c06a59a0fbc7a1ca32274c15a6ca2466242db' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
