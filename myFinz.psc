Algoritmo myFinz
	
	//Para opci�n=1 GASTO PUNTUAL
	Definir cantidadPersonas Como Entera
	Definir nombre Como Caracter
	Definir gasto Como Numerica
	Definir gastoPromedio Como Numerica
	
	Dimension nombre[10]
	Dimension gasto[10]
	
	//Para opci�n=2 GASTOS DEL HOGAR
	Definir cantidadConvivientes Como Entero
	Definir opcionMes Como Entera
	Definir nombreMes Como Caracter
	Definir gastoMes Como Numerica
	
	Dimension nombreMes[5]
	Dimension gastoMes[5]
	Dimension sumaTotal[5]
	
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
				
			2:	
				//GASTOS COMUNES EN UNA CASA DURANTE EL MES, POR EJEMPLO ENTRE UNA PAREJA, ROOMATES
				Repetir
					Escribir "OPCI�N 2: MEN� COMPARTIR GASTOS DEL HOGAR"
					Escribir "1. -Ingresar convivientes"
					Escribir "2. -Ingresar nuevo gasto"
					Escribir "3. -Ver saldo"
					Escribir "0 - Salir"
					Leer opcionMes
					
					Segun opcionMes Hacer
							//ESTO LO PENS� PARA QUE UNA VEZ INGRESADOS LOS CONVIVIENTES QUEDEN GUARDADOS, 
							//AL SER ALGO QUE NO CAMBIAR�A PARA EL USUARIO 
							//COMO ES LA OPCI�N 1 QUE SON GASTOS PUNTUALES DE UN MOMENTO. 
							//UNA VEZ INGRESADOS EN 1) SOLO INGRESA A 2)GASTO Y 3)SALDO
						1:
							Escribir "1.-INGRESAR CONVIVIENTES"
							Escribir "Ingrese la cantidad de convivientes a dividir los gastos del mes"
							Leer cantidadConvivientes
							
							Para x<-1 hasta cantidadConvivientes con paso 1 hacer
								Escribir "Ingrese el NOMBRE del conviviente ",x
								Leer nombreMes[x]
							FinPara
							
							Para x<-1 hasta cantidadConvivientes con paso 1 hacer
								Escribir "El conviviente ingresado N�",x," es ",nombreMes[x]
							FinPara
							
							
						2:
							Si cantidadConvivientes<>0 entonces
								Escribir "2. -INGRESAR NUEVO GASTO"
								
								Para x<-1 hasta cantidadConvivientes con paso 1 hacer
									Escribir x,".- Gasto de ", nombreMes[x]
									Escribir "Ingrese el GASTO realizado por ",nombreMes[x]
									Leer gastoMes[x]
									
									sumaMes=sumaMes+gastoMes[x]
									sumaTotal[x]=sumaTotal[x]+gastoMes[x]
								FinPara
								
								promedioTotal=sumaMes/cantidadConvivientes
								
								Para x<-1 hasta cantidadConvivientes Hacer
									Escribir nombreMes[x]," ingres� un gasto de $", gastoMes[x]
								FinPara
								
								//ME PAS� AL PROBAR QUE SI APRETABA OPCION 2 O 3 ANTES DE 1 ME APAREC�A ERROR POR DIVISI�N POR 0
								//PARA EVITARLO AGREGU� ESTE CONDICIONAL EN 2) Y 3) Y ANTE ESO ME DEVUELVE AL MEN�
							Sino 
								Escribir "<<<ANTES: ingrese los convivientes en la opci�n 1 del actual men�>>>"
							FinSi
							
						3:
							Escribir "3. -VER SALDO"
							Si cantidadConvivientes<>0 entonces
								Para x<-1 hasta cantidadConvivientes Hacer
									Escribir "El gasto acumulado del mes de ",nombreMes[x]," es $",sumaTotal[x]
									Escribir "El saldo del mes de ",nombreMes[x]," es $",sumaTotal[x]-promedioTotal
								FinPara
							Sino 
								Escribir "<<<ANTES: ingrese los convivientes en la opci�n 1 del actual men�>>>"
							FinSi
					FinSegun
				Hasta Que opcionMes=0	
				
				
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
