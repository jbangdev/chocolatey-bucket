# Generated with JReleaser 1.9.0 at 2024-07-07T19:44:43.487219Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.117.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.117.0/jbang-0.117.0.zip' `
    -Checksum '21e7beda7129d5e1d947447702a6dfc9500ea1f8d1673333f36602faeeb301bc' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
