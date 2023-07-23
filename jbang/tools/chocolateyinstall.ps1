# Generated with JReleaser 1.5.1 at 2023-07-23T07:36:03.356382Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.110.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.110.0/jbang-0.110.0.zip' `
    -Checksum '693376d102dd372f5590b5cda4eaca7bfb32424af51b20d6944b857b628a33fd' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
