#Lista de Computadores a monitorar
$listaServidores = "DEVSCOPE33"

foreach($servidor in $listaServidores) { 
 	Get-WMIObject  -ComputerName $servidor Win32_LogicalDisk |
	
	where{($_.DriveType -eq 3)}|
	#seleciona os atributos a mostrar e faz a devida formatação
	select @{n='Servidor' ;e={"{0:n0}" -f ($servidor)}},
	@{n='Drive' ;e={"{0:n0}" -f ($_.name)}},
	@{n='Capacidade (Gb)' ;e={"{0:n2}" -f ($_.size/1gb)}},
	@{n='Espaço Livre (Gb)';e={"{0:n2}" -f ($_.freespace/1gb)}},
	@{n='Percentagem Livre';e={"{0:n2}%" -f ($_.freespace/$_.size*100)}} | `
		#Exporta os dados em HTML para um ficheiro
		ConvertTo-Html | `
			#Formata o nome do ficheiro
			Out-File ("C:\Temp\AnaliseDisco_{0}_{1}.html" -f $servidor`
				,(Get-Date -Format "ddMMyyyy"))
			#coloca no nome do ficheiro o servidor e a data 			
} 
