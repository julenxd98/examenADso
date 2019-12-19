$num1 = [int] (Read-host -Prompt "Escribe un numero")
$num2 = [int] (Read-host -Prompt "Escribe otro numero")

if ($num1 > $num2) {
    $num1,$num2=$num2,$num1
    }
$pos = Read-Host -Prompt 'Introduce la cantidad números que quieras ver: '

for($i = 1; $i -le $pos; $i++){
    echo $num2
    $c = $num1 + $num2
    $num1 = $num2
    $num2 = $c
}