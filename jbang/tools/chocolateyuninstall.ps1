# Generated with JReleaser 1.5.1 at 2023-06-10T11:17:01.870091Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.108.0'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Uninstall-BinFile -Name 'jbang' -Path $app_exe
