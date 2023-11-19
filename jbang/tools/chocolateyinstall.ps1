# Generated with JReleaser 1.9.0 at 2023-11-19T09:31:30.057705Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.112.4'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.112.4/jbang-0.112.4.zip' `
    -Checksum 'a52ead8eb46958685318a5c7c0c88bcdd4913670a16f3cdf470198ceffd09269' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
