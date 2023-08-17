# Generated with JReleaser 1.5.1 at 2023-08-17T08:07:02.188821Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.110.1'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.110.1/jbang-0.110.1.zip' `
    -Checksum 'd81aacd8f15acc11590c6227b66a185f6c6384e3e18f5d08aaf6499ec2345c51' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
