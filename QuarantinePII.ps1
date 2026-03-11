param(
    [string]$FilePath
)

$QuarantineFolder = "C:\SensitiveData\Quarantine"

if (Test-Path -LiteralPath $FilePath) {
    Move-Item -LiteralPath $FilePath -Destination $QuarantineFolder -Force
}
