Algoritmo Agenda_Tel�fonica
	
	Definir nombre, comprNombre, listaNombre Como Caracter;
	Definir telf, opc, comprTelf, opcBuscar, opcBorrar, opcEditar, listaTelf Como Entero;
	
	
	comprNombre = "";
	comprTelf = 0;
	opc = 0; opcBuscar = 0; opcBorrar = 0; opcEditar = 0;
	listaNombre = "";
	listaTelf = 0;
	
	Repetir
		Escribir "------------------------------------------------------";
		Escribir "Pulsa 1 Para A�adir un Nuevo Empleado a la Agenda";
		Escribir "Pulsa 2 Para Buscar un Empleado en la Agenda";
		Escribir "Pulsa 3 Para Editar un Empleado Existente de la Agenda";
		Escribir "Pulsa 4 Para Eliminar un Contacto de la Agenda";
		Escribir "Pulsa 5 Para Mostrar Todos los Contactos de la Agenda";
		Escribir "Pulsa 6 Para Salir de la Aplicaci�n";
		Escribir "------------------------------------------------------";
		Leer opc;
		
		
		Segun opc Hacer
			1:
				Escribir "Introduce el Nombre del Empleado a A�adir a la Agenda";
				Leer nombre;
				
				Escribir "Introduce el Tel�fono Asociado al Empleado a A�adir";
				Leer telf;	
				
				Escribir "El Contacto queda As�, Nombre: " + nombre + " Tel�fono: ", telf;
				
			2:
				Repetir
					Escribir "Pulsa 1 si Quieres Buscar por Nombre";
					Escribir "Pulsa 2 si Quieres Buscar por Tel�fono";
					Escribir "Pulsa 3 Para Salir";
					Leer opcBuscar;
					
					Segun opcBuscar Hacer
						1:
							Escribir "Introduce el Nombre del Contacto a Buscar";
							Leer comprNombre;
							
							Si (comprNombre == nombre) Entonces
								Escribir "El Nombre de tu Contacto es: " + comprNombre + " y su Telf. es: ", telf;
							SiNo
								Escribir "No Existe un Contacto con ese Nombre";
								Escribir "------------------------------------";
							Fin Si
							
						2:
							Escribir "Introduce el Tel�fono del Contacto a Buscar";
							Leer comprTelf;
							
							Si (comprTelf == telf) Entonces
								Escribir "El Telf. de tu Contacto es: ", comprTelf, " y su Nombre es: " + nombre;
								Escribir "---------------------------------------------------------------------";
							SiNo
								Escribir "No Existe un Contacto con ese Tel�fono";
								Escribir "--------------------------------------";
							FinSi
						3:
							Escribir "B�squeda de Contactos Finalizada";
					Fin Segun
				Hasta Que opcBuscar == 3;
				
				
			3:
				Repetir
					Escribir "Pulsa 1 si Quieres Buscar por Nombre un Contacto Para Editarlo";
					Escribir "Pulsa 2 si Quieres Buscar por Tel�fono un Contacto Para Editarlo";
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
								
								Escribir "El Contacto queda As�, Nombre: " + nombre + " Tel�fono: ", telf;
								Escribir "--------------------------------------------------------------";
							SiNo
								Escribir "No Existe un Contacto con ese Nombre, Imposible Editar";
								Escribir "------------------------------------------------------";
							Fin Si
							
						2:
							Escribir "Introduce el Tel�fono del Contacto a Buscar";
							Leer comprTelf;
							
							Si (comprTelf == telf) Entonces
								Escribir "Escribe Ahora el Nuevo Telf. Para el Contacto";
								Leer telf;
								
								Escribir "Escribe Ahora el Nuevo Nombre Para el Contacto";
								Leer nombre;
								
								Escribir "El Contacto queda As�, Nombre: " + nombre + " Tel�fono: ", telf;
								Escribir "--------------------------------------------------------------";
							SiNo
								Escribir "No Existe un Contacto con ese Tel�fono, Imposible Editar";
								Escribir "--------------------------------------------------------";
							FinSi
						3:
							Escribir "B�squeda de Contactos Finalizada";
							Escribir "--------------------------------";
					Fin Segun
				Hasta Que opcEditar == 3;
				
				
			4:
				Repetir
					Escribir "Pulsa 1 Para Buscar un Contacto por Nombre Para Borrarlo";
					Escribir "Pulsa 2 Para Buscar un Contacto por Tel�fono Para Borrarlo";
					Escribir "Pulsa 3 Para Salir";
					Leer opcBorrar;
					
					Segun opcBorrar Hacer
						1:
							Escribir "Introduce el Nombre del Contacto a Buscar";
							Leer comprNombre;
							
							Si (comprNombre == nombre) Entonces
								nombre = "";
								telf = 0;
								Escribir "Contacto Borrado";
								Escribir "----------------";
							SiNo
								Escribir "No Existe un Contacto con ese Nombre, Imposible Borrar";
								Escribir "------------------------------------------------------";
							FinSi
							
						2:
							Escribir "Introduce el Tel�fono del Contacto a Buscar";
							Leer comprTelf;
							
							Si (comprTelf == telf) Entonces
								telf = 0;
								nombre = "";
								Escribir "Contacto Borrado";
								Escribir "----------------";
							SiNo
								Escribir "No Existe un Contacto con ese Tel�fono, Imposible Borrar";
								Escribir "--------------------------------------------------------";
							FinSi
						3:
							Escribir "Borrado de Contactos Finalizado";
							Escribir "-------------------------------";
					Fin Segun
				Hasta Que opcBorrar == 3;
				
			5:
				Escribir "Nada";
				
			6:
				Escribir "Aplicaci�n Finalizada";
		Fin Segun
	Hasta Que opc == 6;
	
	
	
FinAlgoritmo
