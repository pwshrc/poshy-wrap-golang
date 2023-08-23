#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


if (-not (Test-Command go)) {
    return
}

function Invoke-GoBuild {
    go build @args
}
Set-Alias -Name gob -Value Invoke-GoBuild

function Invoke-GoClean {
    go clean @args
}
Set-Alias -Name goc -Value Invoke-GoClean

function Invoke-GoDoc {
    go doc @args
}
Set-Alias -Name god -Value Invoke-GoDoc

function Invoke-GoEnv {
    go env @args
}
Set-Alias -Name goe -Value Invoke-GoEnv

function Invoke-GoFmt {
    go fmt @args
}
Set-Alias -Name gof -Value Invoke-GoFmt

function Invoke-GoFmtEllipsis {
    go go fmt ./... @args
}
Set-Alias -Name gofa -Value Invoke-GoFmtEllipsis

function Invoke-GoFix {
    go fix @args
}
Set-Alias -Name gofx -Value Invoke-GoFix

function Invoke-GoGet {
    go get @args
}
Set-Alias -Name gog -Value Invoke-GoGet

function Invoke-GoGetEllipsis {
    go get ./... @args
}
Set-Alias -Name goga -Value Invoke-GoGetEllipsis

function Invoke-GoInstall {
    go install @args
}
Set-Alias -Name goi -Value Invoke-GoInstall

function Invoke-GoList {
    go list @args
}
Set-Alias -Name gol -Value Invoke-GoList

function Invoke-GoMod {
    go mod @args
}
Set-Alias -Name gom -Value Invoke-GoMod

function Set-LocationGoPath {
    Get-EnvVarPathItem -Process -Name GOPATH `
    | Select-Object -First 1 `
    | Set-Location
}
Set-Alias -Name gopa -Value Set-LocationGoPath

function Set-LocationGoPathBin {
    Get-EnvVarPathItem -Process -Name GOPATH `
    | Select-Object -First 1 `
    | ForEach-Object {
        Set-Location $_\bin
    }
}
Set-Alias -Name gopb -Value Set-LocationGoPathBin

function Set-LocationGoPathSrc {
    Get-EnvVarPathItem -Process -Name GOPATH `
    | Select-Object -First 1 `
    | ForEach-Object {
        Set-Location $_\src
    }
}
Set-Alias -Name gops -Value Set-LocationGoPathSrc

function Invoke-GoRun {
    go run @args
}
Set-Alias -Name gor -Value Invoke-GoRun

function Invoke-GoTest {
    go test @args
}
Set-Alias -Name got -Value Invoke-GoTest

function Invoke-GoTestEllipsis {
    go test ./... @args
}
Set-Alias -Name gota -Value Invoke-GoTestEllipsis

function Invoke-GoTool {
    go tool @args
}
Set-Alias -Name goto -Value Invoke-GoTool

function Invoke-GoToolCompile {
    go tool compile @args
}
Set-Alias -Name gotoc -Value Invoke-GoToolCompile

function Invoke-GoToolDist {
    go tool dist @args
}
Set-Alias -Name gotod -Value Invoke-GoToolDist

function Invoke-GoToolFix {
    go tool fix @args
}
Set-Alias -Name gotofx -Value Invoke-GoToolFix

function Invoke-GoVet {
    go vet @args
}
Set-Alias -Name gov -Value Invoke-GoVet

function Invoke-GoVersion {
    go version @args
}
Set-Alias -Name gove -Value Invoke-GoVersion

function Invoke-GoWork {
    go work @args
}
Set-Alias -Name gow -Value Invoke-GoWork


Export-ModuleMember -Function * -Alias *
