$file = 'c:\Slides github\A2.2\pasado_irregulares.html'
$lines = Get-Content $file
$keep = New-Object System.Collections.Generic.List[string]
for ($i = 0; $i -lt $lines.Length; $i++) {
    # Remove lines 2950 to 3002 (1-indexed) = indices 2949 to 3001
    if ($i -lt 2949 -or $i -gt 3001) {
        $keep.Add($lines[$i])
    }
}
$keep | Set-Content $file -Encoding UTF8
Write-Host "Done. Removed lines 2950-3002. New line count: $($keep.Count)"
