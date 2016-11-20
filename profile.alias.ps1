# Setup aliases
$config = @{
    'sn' = .\modules\find-notepad++.ps1;
    'vs' = .\modules\find-vscode.ps1;
}

function Add-Alias($alias, $path)
{
    if (($path -ne $null) -and (Test-Path $path))
    {
        Set-Alias -Scope Global $alias $path;
    }
}

$config.GetEnumerator() | % { Add-Alias $_.Key $_.Value }
