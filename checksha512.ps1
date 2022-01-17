param (
    [Parameter(Mandatory=$true)][string]$file,
    [Parameter(Mandatory=$true)][string]$hashFile,
    [Parameter(Mandatory=$false)][bool]$v=$false
)

# Usage like:
#checksha512.ps1 '.\NoSQL Workbench-win-3.2.1.exe' '.\NoSQL Workbench-win-3.2.1.exe.sha512'
#checksha512.ps1 '.\NoSQL Workbench-win-3.2.1.exe' '.\NoSQL Workbench-win-3.2.1.exe.sha512' -v:$true

$hashSrc = Get-FileHash $file -Algorithm "SHA512"
$hash = $hashSrc.Hash.ToLower()
$correctHashContent = Get-Content -Path $hashFile
$correctHash = $correctHashContent.Split(" ")[0]
$correctHash = $correctHash.ToLower()

if ($v -eq $true) {
    Write-Host "Source file hash for $($hashSrc.Path): `n$($hash)"
    Write-Host "Correct hash in $($hashFile): `n$($correctHash)"
}

if ($hash -eq $correctHash)
{
    Write-Host "Source file hash for $($hashSrc.Path) equals hash in file: $($hashFile)." -ForegroundColor Green
} else {
    Write-Host "Source file hash for $($hashSrc.Path) does not equal hash in file: $($hashFile)." -ForegroundColor Red
}