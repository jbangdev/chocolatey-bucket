# Generated with JReleaser 1.25.0-SNAPSHOT at 2026-07-11T16:25:54.661905162Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.140.1'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.140.1/jbang-0.140.1.zip' `
    -Checksum 'b9733354c1fee8740810afaad8357aaa2bb0debef0d47d72b79081e34559f496' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_exe
