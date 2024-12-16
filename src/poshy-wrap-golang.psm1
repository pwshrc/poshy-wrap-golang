#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest
#Requires -Modules @{ ModuleName = "poshy-env-var"; RequiredVersion = "0.5.25" }
#Requires -Modules @{ ModuleName = "poshy-lucidity"; RequiredVersion = "0.4.1" }


if (-not (Test-Command go) -and (-not (Get-Variable -Name PWSHRC_FORCE_MODULES_EXPORT_UNSUPPORTED -Scope Global -ValueOnly -ErrorAction SilentlyContinue))) {
    return
}

function Invoke-GoBuild {
    go build @args
}
Set-Alias -Name gob -Value Invoke-GoBuild
Export-ModuleMember -Function Invoke-GoBuild -Alias gob

function Invoke-GoClean {
    go clean @args
}
Set-Alias -Name goc -Value Invoke-GoClean
Export-ModuleMember -Function Invoke-GoClean -Alias goc

function Invoke-GoDoc {
    go doc @args
}
Set-Alias -Name god -Value Invoke-GoDoc
Export-ModuleMember -Function Invoke-GoDoc -Alias god

function Invoke-GoEnv {
    go env @args
}
Set-Alias -Name goe -Value Invoke-GoEnv
Export-ModuleMember -Function Invoke-GoEnv -Alias goe

function Invoke-GoFmt {
    go fmt @args
}
Set-Alias -Name gof -Value Invoke-GoFmt
Export-ModuleMember -Function Invoke-GoFmt -Alias gof

function Invoke-GoFmtEllipsis {
    go go fmt ./... @args
}
Set-Alias -Name gofa -Value Invoke-GoFmtEllipsis
Export-ModuleMember -Function Invoke-GoFmtEllipsis -Alias gofa

function Invoke-GoFix {
    go fix @args
}
Set-Alias -Name gofx -Value Invoke-GoFix
Export-ModuleMember -Function Invoke-GoFix -Alias gofx

function Invoke-GoGet {
    go get @args
}
Set-Alias -Name gog -Value Invoke-GoGet
Export-ModuleMember -Function Invoke-GoGet -Alias gog

function Invoke-GoGetEllipsis {
    go get ./... @args
}
Set-Alias -Name goga -Value Invoke-GoGetEllipsis
Export-ModuleMember -Function Invoke-GoGetEllipsis -Alias goga

function Invoke-GoInstall {
    go install @args
}
Set-Alias -Name goi -Value Invoke-GoInstall
Export-ModuleMember -Function Invoke-GoInstall -Alias goi

function Invoke-GoList {
    go list @args
}
Set-Alias -Name gol -Value Invoke-GoList
Export-ModuleMember -Function Invoke-GoList -Alias gol

function Invoke-GoMod {
    go mod @args
}
Set-Alias -Name gom -Value Invoke-GoMod
Export-ModuleMember -Function Invoke-GoMod -Alias gom

function Set-LocationGoPath {
    Get-EnvVarPathItem -Process -Name GOPATH `
    | Select-Object -First 1 `
    | Set-Location
}
Set-Alias -Name gopa -Value Set-LocationGoPath
Export-ModuleMember -Function Set-LocationGoPath -Alias gopa

function Set-LocationGoPathBin {
    Get-EnvVarPathItem -Process -Name GOPATH `
    | Select-Object -First 1 `
    | ForEach-Object {
        Set-Location $_\bin
    }
}
Set-Alias -Name gopb -Value Set-LocationGoPathBin
Export-ModuleMember -Function Set-LocationGoPathBin -Alias gopb

function Set-LocationGoPathSrc {
    Get-EnvVarPathItem -Process -Name GOPATH `
    | Select-Object -First 1 `
    | ForEach-Object {
        Set-Location $_\src
    }
}
Set-Alias -Name gops -Value Set-LocationGoPathSrc
Export-ModuleMember -Function Set-LocationGoPathSrc -Alias gops

function Invoke-GoRun {
    go run @args
}
Set-Alias -Name gor -Value Invoke-GoRun
Export-ModuleMember -Function Invoke-GoRun -Alias gor

function Invoke-GoTest {
    go test @args
}
Set-Alias -Name got -Value Invoke-GoTest
Export-ModuleMember -Function Invoke-GoTest -Alias got

function Invoke-GoTestEllipsis {
    go test ./... @args
}
Set-Alias -Name gota -Value Invoke-GoTestEllipsis
Export-ModuleMember -Function Invoke-GoTestEllipsis -Alias gota

function Invoke-GoTool {
    go tool @args
}
Set-Alias -Name goto -Value Invoke-GoTool
Export-ModuleMember -Function Invoke-GoTool -Alias goto

function Invoke-GoToolCompile {
    go tool compile @args
}
Set-Alias -Name gotoc -Value Invoke-GoToolCompile
Export-ModuleMember -Function Invoke-GoToolCompile -Alias gotoc

function Invoke-GoToolDist {
    go tool dist @args
}
Set-Alias -Name gotod -Value Invoke-GoToolDist
Export-ModuleMember -Function Invoke-GoToolDist -Alias gotod

function Invoke-GoToolFix {
    go tool fix @args
}
Set-Alias -Name gotofx -Value Invoke-GoToolFix
Export-ModuleMember -Function Invoke-GoToolFix -Alias gotofx

function Invoke-GoVet {
    go vet @args
}
Set-Alias -Name gov -Value Invoke-GoVet
Export-ModuleMember -Function Invoke-GoVet -Alias gov

function Invoke-GoVersion {
    go version @args
}
Set-Alias -Name gove -Value Invoke-GoVersion
Export-ModuleMember -Function Invoke-GoVersion -Alias gove

function Invoke-GoWork {
    go work @args
}
Set-Alias -Name gow -Value Invoke-GoWork
Export-ModuleMember -Function Invoke-GoWork -Alias gow
