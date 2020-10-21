SubProceso mostrar_Menu()
	Escribir "------------------------------------------------------";
	Escribir "Pulsa 1 Para Añadir un Nuevo Empleado a la Agenda";
	Escribir "Pulsa 2 Para Buscar un Empleado en la Agenda";
	Escribir "Pulsa 3 Para Editar un Empleado Existente de la Agenda";
	Escribir "Pulsa 4 Para Eliminar un Contacto de la Agenda";
	Escribir "Pulsa 5 Para Mostrar Todos los Contactos de la Agenda";
	Escribir "Pulsa 6 Para Salir de la Aplicación";
	Escribir "------------------------------------------------------";
FinSubProceso

SubProceso guardar_contacto(vContactos, tam)
	
	Definir nombre, telf, contacto Como Caracter;
	Definir i Como Entero;
	
	Escribir "Dime el Nombre del Contacto A Guardar";
	Leer nombre;
	
	Escribir "Dime el Telefono del Contacto A Guardar";
	Leer telf;
	
	contacto = nombre + ";" + telf;
	
	Para i=1 Hasta tam-1 Con Paso 1 Hacer
		Si (vContactos[i] == "") Entonces
			vContactos[i] = contacto;
			i = tam;
		FinSi
	Fin Para
	Escribir contacto;
	
FinFuncion

SubProceso buscar_contacto(vContactos, tam)
	
	Definir  auxN, auxT, comprNombre, comprTelf Como Caracter;
	Definir opcBuscar, i, j Como Entero;
	Definir encontrado Como Logico;
	
	auxN = ""; auxT = "";
	comprNombre = ""; comprTelf = "";
	opcBuscar = 0;
	
	
	Repetir
		Escribir "Pulsa 1 si Quieres Buscar por Nombre";
		Escribir "Pulsa 2 si Quieres Buscar por Teléfono";
		Escribir "Pulsa 3 Para Salir";
		Leer opcBuscar;
		encontrado = Falso;
		
		Segun opcBuscar Hacer
			1:
				Escribir "Introduce el Nombre del Contacto a Buscar";
				Leer comprNombre;
				
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					Si (vContactos[i] <> "") Entonces
						Para j = 0 Hasta Longitud(vContactos[i])-1 Con Paso 1 Hacer
							Si (Subcadena(vContactos[i],j,j) == ";") Entonces
								auxN = Subcadena(vContactos[i],0,j-1);
								auxT = Subcadena(vContactos[i],j+1,Longitud(vContactos[i])-1);
							FinSi
						Fin Para
						Si (comprNombre == auxN) Entonces
							Escribir "El Nombre de tu Contacto es: " + auxN + " y su Telf. Asociado es: ", auxT;
							Escribir "------------------------------------------------------------------------";
							encontrado = Verdadero;
						Fin Si
					FinSi
				Fin Para
				
				Si (encontrado == Falso) Entonces
					Escribir "No Existe un Contacto con ese Nombre";
					Escribir "------------------------------------";
				Fin Si
				
			2:
				auxN = "";
				auxT = "";
				
				Escribir "Introduce el Teléfono del Contacto a Buscar";
				Leer comprTelf;
				
				
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					Si (vContactos[i] <> "") Entonces
						Para j = 0 Hasta Longitud(vContactos[i])-1 Con Paso 1 Hacer
							Si (Subcadena(vContactos[i],j,j) == ";") Entonces
								auxN = Subcadena(vContactos[i],0,j-1);
								auxT = Subcadena(vContactos[i],j+1,Longitud(vContactos[i])-1);
							FinSi
						Fin Para
						Si (comprTelf == auxT) Entonces
							Escribir "El Telf. de tu Contacto es: ", auxT, " y su Nombre Asociado es: " + auxN;
							Escribir "-----------------------------------------------------------------------";
							encontrado = Verdadero;
						FinSi
					FinSi
				Fin Para
				
				
				Si (encontrado == Falso) Entonces
					Escribir "No Existe un Contacto con ese Teléfono";
					Escribir "--------------------------------------";
				FinSi
			3:
				Escribir "Búsqueda de Contactos Finalizada";
		Fin Segun
	Hasta Que opcBuscar == 3;
FinSubProceso

SubProceso editar_contacto(vContactos, tam)
	
	Definir nombre, telf, auxN, auxT, comprNombre, comprTelf Como Caracter;
	Definir opcEditar, i, j Como Entero;
	Definir encontrado Como Logico;
	
	auxN = ""; auxT = "";
	nombre = ""; telf = "";
	comprNombre = ""; comprTelf = "";
	opcEditar = 0;
	
	Repetir
		Escribir "Pulsa 1 si Quieres Buscar por Nombre un Contacto Para Editarlo";
		Escribir "Pulsa 2 si Quieres Buscar por Teléfono un Contacto Para Editarlo";
		Escribir "Pulsa 3 Para Salir";
		Leer opcEditar;
		encontrado = Falso;
		
		Segun opcEditar Hacer
			1:
				Escribir "Introduce el Nombre del Contacto a Buscar Para Editarlo";
				Leer comprNombre;
				
				
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					Si (vContactos[i] <> "") Entonces
						Para j = 0 Hasta Longitud(vContactos[i])-1 Con Paso 1 Hacer
							Si (Subcadena(vContactos[i],j,j) == ";") Entonces
								auxN = Subcadena(vContactos[i],0,j-1);
								auxT = Subcadena(vContactos[i],j+1,Longitud(vContactos[i])-1);
							FinSi
						Fin Para
						Si (comprNombre == auxN) Entonces
							Escribir "Escribe Ahora el Nuevo Nombre Para el Contacto";
							Leer nombre;
							
							Escribir "Escribe Ahora el Nuevo Telf. Para el Contacto";
							Leer telf;
							
							Escribir "El Contacto queda Así, Nombre: " + nombre + " Teléfono: ", telf;
							Escribir "--------------------------------------------------------------";
							encontrado = Verdadero;
						FinSi
					FinSi
				Fin Para
				
				
				Si (encontrado == Falso) Entonces
					Escribir "No Existe un Contacto con ese Nombre, Imposible Editar";
					Escribir "------------------------------------------------------";
				Fin Si
				
			2:
				auxN = ""; auxT = "";
				nombre = ""; telf = "";
				comprNombre = ""; comprTelf = "";
				
				
				Escribir "Introduce el Teléfono del Contacto a Buscar Para Editarlo";
				Leer comprTelf;
				
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					Si (vContactos[i] <> "") Entonces
						Para j = 0 Hasta Longitud(vContactos[i])-1 Con Paso 1 Hacer
							Si (Subcadena(vContactos[i],j,j) == ";") Entonces
								auxN = Subcadena(vContactos[i],0,j-1);
								auxT = Subcadena(vContactos[i],j+1,Longitud(vContactos[i])-1);
							FinSi
						Fin Para
						Si (comprTelf == auxT) Entonces
							Escribir "Escribe Ahora el Nuevo Telf. Para el Contacto";
							Leer telf;
							
							Escribir "Escribe Ahora el Nuevo Nombre Para el Contacto";
							Leer nombre;
							
							Escribir "El Contacto queda Así, Nombre: " + nombre + " Teléfono: ", telf;
							Escribir "--------------------------------------------------------------";
							encontrado = Verdadero;
						FinSi
					FinSi
				Fin Para
				
				
				Si (encontrado == Falso) Entonces
					Escribir "No Existe un Contacto con ese Teléfono, Imposible Editar";
					Escribir "--------------------------------------------------------";
				FinSi
			3:
				Escribir "Búsqueda de Contactos Finalizada";
				Escribir "--------------------------------";
		Fin Segun
	Hasta Que opcEditar == 3;
	
FinSubProceso

SubProceso borrar_contacto(vContactos, tam)
	
	Definir nombre, telf, auxN, auxT, comprNombre, comprTelf Como Caracter;
	Definir opcBorrar, i, j Como Entero;
	Definir encontrado Como Logico;
	
	auxN = ""; auxT = "";
	nombre = ""; telf = "";
	comprNombre = ""; comprTelf = "";
	opcBorrar = 0;
	
	Repetir
		Escribir "Pulsa 1 Para Buscar un Contacto por Nombre Para Borrarlo";
		Escribir "Pulsa 2 Para Buscar un Contacto por Teléfono Para Borrarlo";
		Escribir "Pulsa 3 Para Salir";
		Leer opcBorrar;
		encontrado = Falso;
		
		Segun opcBorrar Hacer
			1:
				Escribir "Introduce el Nombre del Contacto a Buscar Para Borrarlo";
				Leer comprNombre;
				
				
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					Si (vContactos[i] <> "") Entonces
						Para j = 0 Hasta Longitud(vContactos[i])-1 Con Paso 1 Hacer
							Si (Subcadena(vContactos[i],j,j) == ";") Entonces
								auxN = Subcadena(vContactos[i],0,j-1);
								auxT = Subcadena(vContactos[i],j+1,Longitud(vContactos[i])-1);
							FinSi
						Fin Para
						Si (comprNombre == auxN) Entonces
							nombre = "";
							telf = "";
							Escribir "Contacto Borrado";
							Escribir "----------------";
							encontrado = Verdadero;
						FinSi
					FinSi
				Fin Para
				
				
				Si (encontrado == Falso) Entonces
					Escribir "No Existe un Contacto con ese Nombre, Imposible Borrar";
					Escribir "------------------------------------------------------";
				FinSi
				
			2:
				auxN = ""; auxT = "";
				comprNombre = ""; comprTelf = "";
				
				Escribir "Introduce el Teléfono del Contacto a Buscar Para Borrarlo";
				Leer comprTelf;
				
				
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					Si (vContactos[i] <> "") Entonces
						Para j = 0 Hasta Longitud(vContactos[i])-1 Con Paso 1 Hacer
							Si (Subcadena(vContactos[i],j,j) == ";") Entonces
								auxN = Subcadena(vContactos[i],0,j-1);
								auxT = Subcadena(vContactos[i],j+1,Longitud(vContactos[i])-1);
							FinSi
						Fin Para
						
						Si (comprTelf == auxT) Entonces
							telf = "";
							nombre = "";
							Escribir "Contacto Borrado";
							Escribir "----------------";
							encontrado = Verdadero;
						FinSi
					FinSi
				Fin Para
				
				
				Si (encontrado == Falso) Entonces
					Escribir "No Existe un Contacto con ese Teléfono, Imposible Borrar";
					Escribir "--------------------------------------------------------";
				FinSi
			3:
				Escribir "Borrado de Contactos Finalizado";
				Escribir "-------------------------------";
		Fin Segun
	Hasta Que opcBorrar == 3;
FinSubProceso

SubProceso mostrar_contactos(vContactos, tam)
	
	Definir auxN, auxT Como Caracter;
	Definir i, j Como Entero;
	
	auxN = ""; auxT = "";
	
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		Si (vContactos[i] <> "") Entonces
			Para j = 0 Hasta Longitud(vContactos[i])-1 Con Paso 1 Hacer
				Si (Subcadena(vContactos[i],j,j) == ";") Entonces
					auxN = Subcadena(vContactos[i],0,j-1);
					auxT = Subcadena(vContactos[i],j+1,Longitud(vContactos[i])-1);
				FinSi
			Fin Para
		FinSi
		Escribir "-----Lista de Contactos-----";
		Escribir auxN + " --- " + auxT;
	Fin Para
FinSubProceso

Algoritmo Agenda_Teléfonica_Funciones
	
	Definir vContactos Como Caracter;
	Definir tam, opc, i Como Entero;
	
	
	opc = 0;
	
	//Para Esta Versión de la Agenda Vamos a Asignarle Un Tamaño de 5 Contactos Máx (Nombre + Telefono).
	tam = 5;
	
	
	Dimension vContactos[tam];
	
	
	Para i = 0 Hasta tam - 1 Con Paso 1 Hacer
		vContactos[i] = "";
	Fin Para
	
	
	Repetir
		mostrar_Menu();
		Leer opc;
		
		Segun opc Hacer
			1:
				guardar_contacto(vContactos, tam);
			2:
				buscar_contacto(vContactos, tam);
			3:
				editar_contacto(vContactos, tam);
			4:
				borrar_contacto(vContactos, tam);
			5:
				mostrar_contactos(vContactos, tam);
			6:
				Escribir "Agenda Teléfonica Finalizada";
		Fin Segun
	Hasta Que opc == 6;
	
	
FinAlgoritmo