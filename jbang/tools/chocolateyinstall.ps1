# Generated with JReleaser 1.15.0 at 2024-11-16T12:08:49.585917Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.120.4'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.120.4/jbang-0.120.4.zip' `
    -Checksum '0c9234d1fecacae814490ff1b4e71152a3c5adce2756f9f2a386b64b81a2da21' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
