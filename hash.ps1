# Take a string and hash it - return only the first SIX characters
# (C)2018 Lee Burridge

param (
  [string]$instring = "lee"
)

function Hash($textToHash)
{
  $hasher = new-object System.Security.Cryptography.SHA256Managed
  $toHash = [System.Text.Encoding]::UTF8.GetBytes($textToHash)
  $hashByteArray = $hasher.ComputeHash($toHash)
  foreach($byte in $hashByteArray) 
    {
      $res += $byte.ToString()
    }
  return $res;
}

$email = @()

$input = Hash("Hello")
$input.substring(0,6)
$instring
