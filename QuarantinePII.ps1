param($FilePath)

$quarantine = "C:\SensitiveData\Quarantine"

$fileName = Split-Path $FilePath -Leaf
$destination = Join-Path $quarantine $fileName

Move-Item $FilePath $destination -Force

Write-EventLog `
    -LogName Application `
    -Source "FSRM" `
    -EntryType Warning `
    -EventId 5001 `
    -Message "PII file quarantined: $fileName"
