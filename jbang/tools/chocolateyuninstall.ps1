# Generated with JReleaser 1.5.1 at 2023-04-16T19:56:00.676411Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jbang-0.106.3'
$app_exe = Join-Path $app_home 'bin/jbang.cmd'

Uninstall-BinFile -Name 'jbang' -Path $app_exe
