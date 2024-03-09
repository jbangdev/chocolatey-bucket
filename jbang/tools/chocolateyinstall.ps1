# Generated with JReleaser 1.9.0 at 2024-03-09T18:42:10.605708Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.115.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.115.0/jbang-0.115.0.zip' `
    -Checksum '51cbeee30e0c9d2ec50085777f4adc93eed77f2dfde0be37075926718b9bc0e5' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
