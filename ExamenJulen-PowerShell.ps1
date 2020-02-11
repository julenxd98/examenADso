[decimal]$a = Read-Host -Prompt 'Escribe el primer número: '
[decimal]$b = Read-Host -Prompt 'Escribe el segundo número: '

if([decimal]$a -gt [decimal]$b) {
           $c = $a
           $a = $b
           $b = $c
        }

echo $a $b