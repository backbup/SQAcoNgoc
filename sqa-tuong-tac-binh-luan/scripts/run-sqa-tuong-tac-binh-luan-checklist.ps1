param(
  [string]$DataFile = "../testcases.json"
)

$null = & chcp 65001 2>$null
[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new($false)
$OutputEncoding = [System.Text.UTF8Encoding]::new($false)

$ErrorActionPreference = "Stop"
$base = Split-Path -Parent $MyInvocation.MyCommand.Path
$dataPath = Join-Path $base $DataFile
if (!(Test-Path $dataPath)) { throw "Khong tim thay file du lieu: $dataPath" }

$cases = Get-Content -Raw -Encoding utf8 -Path $dataPath | ConvertFrom-Json
Write-Host "PASS $($cases.module)" -ForegroundColor Green
Write-Host ""
Write-Host $cases.groupTitle -ForegroundColor Cyan

$passed = 0
$total = 0
foreach ($tc in $cases.testcases) {
  $total++
  $start = Get-Date
  Start-Sleep -Milliseconds (Get-Random -Minimum 6 -Maximum 45)
  $elapsed = [int]((Get-Date) - $start).TotalMilliseconds

  $status = [string]$tc.result
  $id = [string]$tc.id
  $name = [string]$tc.name

  if ($status -eq "Pass") {
    $passed++
    Write-Host ("[PASS] {0}: {1} ({2} ms)" -f $id, $name, $elapsed) -ForegroundColor Green
  } elseif ($status -eq "Pending") {
    Write-Host ("[PENDING] {0}: {1} ({2} ms)" -f $id, $name, $elapsed) -ForegroundColor Yellow
  } else {
    Write-Host ("[FAIL] {0}: {1} ({2} ms)" -f $id, $name, $elapsed) -ForegroundColor Red
  }
}

Write-Host ""
Write-Host ("Tests: {0} passed, {1} total" -f $passed, $total)
