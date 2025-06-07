# Generated with JReleaser 1.15.0 at 2025-06-07T07:24:26.754244Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.126.2'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.126.2/jbang-0.126.2.zip' `
    -Checksum 'abf2a4341b13612d093bec4a6564a5b54bc1e3ba4805c8e40e521347a6f7f73b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
