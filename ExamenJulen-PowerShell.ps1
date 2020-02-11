[decimal]$a = Read-Host -Prompt 'Escribe el primer número: '
[decimal]$b = Read-Host -Prompt 'Escribe el segundo número: '

if([decimal]$a -gt [decimal]$b) { 
           $c = $a
           $a = $b
           $b = $c
        }

[decimal]$suma = $a + $b
        for($x = 1; $x -lt 6; $x++){
            
            $c = $a * $b
            $a = $b
            $b = $c
            echo $c
        }
