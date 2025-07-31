# Generated with JReleaser 1.19.0 at 2025-07-31T04:19:22.453559Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.128.6'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.128.6/jbang-0.128.6.zip' `
    -Checksum '3cb8b80db4a888b741129c59871d19836a5fed3800f4d0efcf6c17a34c392012' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
