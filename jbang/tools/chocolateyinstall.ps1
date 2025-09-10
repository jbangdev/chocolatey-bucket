# Generated with JReleaser 1.19.0 at 2025-09-10T00:50:20.073419Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.130.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.130.0/jbang-0.130.0.zip' `
    -Checksum '2cb544187e14165151d3b3b023dcb12816d5518b28fe953aa660f1d756805219' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
