$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.90.2'
$app_bat = Join-Path $app_home 'bin/jbang.cmd'

Install-ChocolateyZipPackage `
    -PackageName 'jbang' `
    -Url 'https://github.com/jbangdev/jbang/releases/download/v0.90.2/jbang-0.90.2.zip' `
    -Checksum 'dc1ade9ce09f58d7a861d2a64753e8ba2b735e697e88b90ece64dadc40d2b641' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jbang' -Path $app_bat
