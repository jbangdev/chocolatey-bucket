# Generated with JReleaser 1.9.0 at 2023-12-09T07:48:58.46321Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.114.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.114.0/jbang-0.114.0.zip' `
    -Checksum '660c7eb2eda888897f20aa5c5927ccfed924f3b86d5f2a2477a7b0235cdc94bb' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
