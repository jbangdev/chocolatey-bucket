$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.104.0'
$app_bat = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.104.0/jbang-0.104.0.zip' `
    -Checksum 'cb5fd26a7f49e7d2f306e8f514b0fbf56effc6b295280e1f2f6b69bba236c6b7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_bat
