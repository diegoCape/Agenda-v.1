SubProceso mostrar_Menu()
	Escribir "-----Men� Agenda-----";
	Escribir "1. Guardar Contactos";
	Escribir "2. Ver Contactos";
	Escribir "3. Eliminar Contacto";
	Escribir "4. Editar Contacto";
	Escribir "5. Salir de la Agenda";
	Escribir "---------------------";
	
FinSubProceso

SubProceso guardar_contacto(mContactos, fil, col)
	
	Definir nombre, telf Como Caracter;
	Definir i, j Como Entero;
	
	Escribir "Dime el Nombre del Contacto A Guardar";
	Leer nombre;
	
	Escribir "Dime el Telefono del Contacto A Guardar";
	Leer telf;
	
	Para i=1 Hasta fil-1 Con Paso 1 Hacer
		Si (mContactos[i,0] == "") Entonces
			
			mContactos[i,0] = nombre;
			mContactos[i,1] = telf;
			i=fil;
		FinSi
	Fin Para
	
	Escribir "El Contacto queda As�: " + nombre + "-" + telf;
	Escribir "----------------------------------------";
	
FinSubProceso


SubProceso ver_contactos(mContactos, fil, col)
	
	Definir i, j Como Entero;
	
	Para i = 0 Hasta fil-1 Con Paso 1 Hacer
		Para j = 0 Hasta col-1 Con Paso 1 Hacer
			Escribir mContactos[i,j];
			
		FinPara
	FinPara
	
FinSubProceso


Funcion pos = buscar_contacto(mContactos, fil, col)
	
	Definir comprNombre, comprTelf Como Caracter;
	Definir opcBuscar, i, j, pos Como Entero;
	Definir encontrado Como Logico;
	
	pos = -1;
	
	Repetir
		Escribir "Pulsa 1 si Quieres Buscar por Nombre";
		Escribir "Pulsa 2 si Quieres Buscar por Tel�fono";
		Escribir "Pulsa 3 Para Salir";
		Leer opcBuscar;
		encontrado = Falso;
		pos = -1;
		Segun opcBuscar Hacer
			1:
				Escribir "Introduce el Nombre del Contacto a Buscar";
				Leer comprNombre;
				
				Para i = 0 Hasta fil-1 Con Paso 1 Hacer
					Si (mContactos[i,0] == comprNombre) Entonces
						pos = i;
					FinSi
				Fin Para
				
				
			2:
				Escribir "Introduce el Tel�fono del Contacto a Buscar";
				Leer comprTelf;
				
				Para i = 0 Hasta fil-1 Con Paso 1 Hacer
					Si (mContactos[i,1] == comprTelf) Entonces
						
						encontrado = Verdadero;
					FinSi
				Fin Para
				
				Si (encontrado == Falso) Entonces
					Escribir "No Existe un Contacto con ese Tel�fono";
					Escribir "--------------------------------------";
				FinSi
			3:
				Escribir "B�squeda de Contactos Finalizada";
		Fin Segun
	Hasta Que opcBuscar == 3;
	
	
FinFuncion



SubProceso eliminar_contacto(mContactos, fil, col)
	
	Definir i, j, pos Como Entero;
	Definir aux Como Logico;
	
	pos = buscar_contacto(mContactos, fil, col);
	Si (pos == -1) Entonces
		Escribir "El contacto no existe";
	SiNo
		mContactos[pos,0] = "";
		Escribir "Contacto borrado";
	FinSi
	
	
FinSubProceso


SubProceso editar_contacto(mContactos, fil, col)
	
	
	
FinSubProceso


Algoritmo Agenda_Tel�fonica_Matrices
	
	Definir mContactos Como Caracter;
	Definir fil, col, opc, i, j Como Entero;
	
	opc = 0;
	
	//Para Esta Versi�n de la Agenda Asiganermos 5 Huecos Como M�x. N�mero de Contactos
	fil = 5;
	
	//Ser�n Siempre Dos Columnas, 1 Para los Nombres y Otra Para los Tel�fonos
	col = 2;
	
	Dimension mContactos[fil,col];
	
	
	//Iniciamos a Vacio Todas las Posiciones de la Matriz
	Para i = 0 Hasta fil-1 Con Paso 1 Hacer
		Para j = 0 Hasta col-1 Con Paso 1 Hacer
			mContactos[i,j] = "";
		FinPara
	FinPara
	
	
	//Creamos el Bucle para Mostrar el Men� y Realizar las Operaciones de la Agenda
	Repetir
		mostrar_Menu();
		Leer opc;
		
		Segun opc Hacer
			1:
				guardar_contacto(mContactos, fil, col);
				
			2:
				ver_contactos(mContactos, fil, col);
				
			3:
				eliminar_contacto(mContactos, fil, col);
				
			4:
				editar_contacto(mContactos, fil, col);
				
			5:
				Escribir "Agenda Tel�fonica Finalizada";
				Escribir "----------------------------";
		Fin Segun
	Hasta Que opc == 5;
	
	
FinAlgoritmo
