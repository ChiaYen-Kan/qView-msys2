#! /usr/bin/pwsh

param
(
    $Prefix = "/usr"
)

if ($IsWindows) {
    ci/pwsh/vcvars.ps1
}

qmake $args[0] PREFIX=$Prefix

if ($IsWindows) {
    nmake
} else {
    make
}