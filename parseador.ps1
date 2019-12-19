$filepath = '.\powersheell.csv'

$añadir=Import-CSV $filepath 
foreach ($User in $añadir)
{
	$Usuario 	= $User.usuario
	$Contrasena = $User.contraena
	$Ape1	    = $User.ape1
	$Ape2 	    = $User.ape2
	$OU 		= $User.ou
}
	New-ADUser -Name $Usuario -GivenName $ape1 -Surname $ape2 -SamAccountName $Usuario  -Path $ou -AccountPassword(ConvertTo-SecureString $Contrasena -AsPlainText -Force) -Enabled $true       


    
   