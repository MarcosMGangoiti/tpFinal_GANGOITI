Algoritmo myFinz
	
	//Para opci�n=1 GASTO PUNTUAL
	Definir cantidadPersonas Como Entera
	Definir nombre Como Caracter
	Definir gasto Como Numerica
	Definir gastoPromedio Como Numerica
	
	Dimension nombre[10]
	Dimension gasto[10]
	
	//Para opci�n=3 CALCULADORA DE AUMENTO DE ALQUILER
	Definir montoInicial Como Numerica
	Definir inflacion Como Numerica
	
	//CREO EL MEN� PRINCIPAL QUE SE VA A REPETIR HASTA QUE SE INGRESE 0
	Repetir
		Escribir "MEN� PRINCIPAL"
		Escribir "1.-Dividir gasto puntual"
		Escribir "2.-Compartir gastos del hogar"
		Escribir "3.-Calculadora de aumento de alquiler"
		Escribir "0.-Salir"
		
		Leer opcionMenu
		Segun opcionMenu Hacer
			
			1:  
				//GASTO PUNTUAL A DIVIDIR ENTRE X AMIGOS, POR EJEMPLO UNA CENA
				Escribir "OPCI�N 1: GASTO PUNTUAL"
				Escribir "Ingrese la cantidad de personas a dividir el gasto"
				Leer cantidadPersonas
				
				Para x<-1 Hasta cantidadPersonas Hacer
					Escribir "Ingrese el NOMBRE de la persona ",x
					Leer nombre[x]
				FinPara
				
				Para x<-1 hasta cantidadPersonas con paso 1 hacer
					Escribir "La persona ingresada N�",x," es ",nombre[x]
				FinPara
				
				Para x<-1 hasta cantidadPersonas con paso 1 hacer
					Escribir "Ingrese el GASTO realizado por ",nombre[x]
					Leer gasto[x]
					suma=suma+gasto[x]
					gastoPromedio=suma/cantidadPersonas			
				FinPara
				
				Para x<-1 hasta cantidadPersonas Hacer
					Escribir nombre[x]," gast� $", gasto[x], " y su saldo es $", gasto[x]-gastoPromedio
				FinPara
				
				//TENGO QUE RESETEAR LA SUMA A 0 PARA QUE NO ACUMULE EN CADA VUELTA 
				//Y PUEDA HACER C�LCULOS INDEPENDIENTES
				suma=0
				
			3: 
				//C�LCULO SENCILLO DE AUMENTO CONOCIENDO LA INFLACI�N INTERANUAL
				Escribir "OPCI�N 3: CALCULADORA DE AUMENTO DE ALQUILER"
				Escribir "Ingrese el monto inicial del alquiler "
				Leer montoInicial
				Escribir "Ingrese la inflaci�n interanual correspondiente (datos del BCA)"
				Leer inflacion
				Escribir "El monto de alquiler actualizado para el pr�ximo a�o de contrato es $",montoInicial*(1+inflacion/100)
				
		FinSegun
	Hasta Que opcionMenu=0
FinAlgoritmo
