$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.94.0'
$app_bat = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.94.0/jbang-0.94.0.zip' `
    -Checksum '82b119409d4d49df1c15d459f857b32569a68fa38a8bcf1e95d9cd3372aae8c8' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_bat
