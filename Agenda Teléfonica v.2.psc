Algoritmo Agenda_Teléfonica
	
	Definir vContactos, nombre, telf, contacto, auxN, auxT, comprNombre, comprTelf Como Caracter;
	Definir tam, i, opc, opcBuscar, opcEditar, opcBorrar Como Entero;
	
	i = 0;
	nombre = ""; telf = "";
	auxN = ""; auxT = "";
	comprNombre = ""; comprTelf = "";
	opc = 0; opcBuscar = 0; opcEditar = 0; opcBorrar = 0;
	
	//Para Esta Versión de la Agenda Vamos a Asignarle Un Tamaño de 3 Contactos Máx (Nombre + Telefono).
	tam = 3;
	
	Dimension vContactos[tam];
	
	
	Repetir
		Escribir "------------------------------------------------------";
		Escribir "Pulsa 1 Para Añadir un Nuevo Empleado a la Agenda";
		Escribir "Pulsa 2 Para Buscar un Empleado en la Agenda";
		Escribir "Pulsa 3 Para Editar un Empleado Existente de la Agenda";
		Escribir "Pulsa 4 Para Eliminar un Contacto de la Agenda";
		Escribir "Pulsa 5 Para Mostrar Todos los Contactos de la Agenda";
		Escribir "Pulsa 6 Para Salir de la Aplicación";
		Escribir "------------------------------------------------------";
		Leer opc;
		
		
		Segun opc Hacer
			1:
				Escribir "Dime el Nombre del Contacto A Guardar";
				Leer nombre;
				
				Escribir "Dime el Telefono del Contacto A Guardar";
				Leer telf;
				
				contacto = nombre + ";" + telf;
				
				Para i=1 Hasta tam-1 Con Paso 1 Hacer
					Si (vContactos[i] == " ") Entonces
						vContactos[i] = contacto;
						i = tam;
					FinSi
				Fin Para
				
			2:
				
				Repetir
					Escribir "Pulsa 1 si Quieres Buscar por Nombre";
					Escribir "Pulsa 2 si Quieres Buscar por Teléfono";
					Escribir "Pulsa 3 Para Salir";
					Leer opcBuscar;
					
					Segun opcBuscar Hacer
						1:
							Para i=1 Hasta tam-1 Con Paso 1 Hacer
								Si (Subcadena(vContactos[i],i,i) <> ";") Entonces
									auxN = auxN + Subcadena(vContactos[i],i,i-1);
									i = i + 1;
								SiNo
									Si (Subcadena(vContactos[i],i,i) == ";") Entonces
										auxT = auxT + Subcadena(vContactos[i],i,i+1);
									FinSi
								FinSi
							Fin Para
							
							Escribir "Introduce el Nombre del Contacto a Buscar";
							Leer comprNombre;
							
							Si (comprNombre == auxN) Entonces
								Escribir "El Nombre de tu Contacto es: " + auxN + " y su Telf. es: ", auxT;
							SiNo
								Escribir "No Existe un Contacto con ese Nombre";
								Escribir "------------------------------------";
							Fin Si
							
						2:
							Escribir "Introduce el Teléfono del Contacto a Buscar";
							Leer comprTelf;
							
							Si (comprTelf == auxT) Entonces
								Escribir "El Telf. de tu Contacto es: ", auxT, " y su Nombre es: " + auxN;
								Escribir "---------------------------------------------------------------------";
							SiNo
								Escribir "No Existe un Contacto con ese Teléfono";
								Escribir "--------------------------------------";
							FinSi
						3:
							Escribir "Búsqueda de Contactos Finalizada";
					Fin Segun
				Hasta Que opcBuscar == 3;
				
			3:
				Repetir
					Escribir "Pulsa 1 si Quieres Buscar por Nombre un Contacto Para Editarlo";
					Escribir "Pulsa 2 si Quieres Buscar por Teléfono un Contacto Para Editarlo";
					Escribir "Pulsa 3 Para Salir";
					Leer opcEditar;
					
					Segun opcEditar Hacer
						1:
							Escribir "Introduce el Nombre del Contacto a Buscar";
							Leer comprNombre;
							
							Si (comprNombre == nombre) Entonces
								Escribir "Escribe Ahora el Nuevo Nombre Para el Contacto";
								Leer nombre;
								
								Escribir "Escribe Ahora el Nuevo Telf. Para el Contacto";
								Leer telf;
								
								Escribir "El Contacto queda Así, Nombre: " + nombre + " Teléfono: ", telf;
								Escribir "--------------------------------------------------------------";
							SiNo
								Escribir "No Existe un Contacto con ese Nombre, Imposible Editar";
								Escribir "------------------------------------------------------";
							Fin Si
							
						2:
							Escribir "Introduce el Teléfono del Contacto a Buscar";
							Leer comprTelf;
							
							Si (comprTelf == telf) Entonces
								Escribir "Escribe Ahora el Nuevo Telf. Para el Contacto";
								Leer telf;
								
								Escribir "Escribe Ahora el Nuevo Nombre Para el Contacto";
								Leer nombre;
								
								Escribir "El Contacto queda Así, Nombre: " + nombre + " Teléfono: ", telf;
								Escribir "--------------------------------------------------------------";
							SiNo
								Escribir "No Existe un Contacto con ese Teléfono, Imposible Editar";
								Escribir "--------------------------------------------------------";
							FinSi
						3:
							Escribir "Búsqueda de Contactos Finalizada";
							Escribir "--------------------------------";
					Fin Segun
				Hasta Que opcEditar == 3;
				
				
			4:
				Repetir
					Escribir "Pulsa 1 Para Buscar un Contacto por Nombre Para Borrarlo";
					Escribir "Pulsa 2 Para Buscar un Contacto por Teléfono Para Borrarlo";
					Escribir "Pulsa 3 Para Salir";
					Leer opcBorrar;
					
					Segun opcBorrar Hacer
						1:
							Escribir "Introduce el Nombre del Contacto a Buscar";
							Leer comprNombre;
							
							Si (comprNombre == nombre) Entonces
								nombre = "";
								telf = "";
								Escribir "Contacto Borrado";
								Escribir "----------------";
							SiNo
								Escribir "No Existe un Contacto con ese Nombre, Imposible Borrar";
								Escribir "------------------------------------------------------";
							FinSi
							
						2:
							Escribir "Introduce el Teléfono del Contacto a Buscar";
							Leer comprTelf;
							
							Si (comprTelf == telf) Entonces
								telf = "";
								nombre = "";
								Escribir "Contacto Borrado";
								Escribir "----------------";
							SiNo
								Escribir "No Existe un Contacto con ese Teléfono, Imposible Borrar";
								Escribir "--------------------------------------------------------";
							FinSi
						3:
							Escribir "Borrado de Contactos Finalizado";
							Escribir "-------------------------------";
					Fin Segun
				Hasta Que opcBorrar == 3;
				
			5:
				Escribir "Lista de Contactos: Nombre: " + nombre + " Teléfono: ", telf;
				
			6:
				Escribir "Aplicación Finalizada";
		Fin Segun
	Hasta Que opc == 6;
	
	
	
	
	
	
FinAlgoritmo
