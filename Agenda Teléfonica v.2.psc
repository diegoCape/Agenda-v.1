Algoritmo Agenda_Teléfonica
	
	Definir vContactos, nombre, telefono, auxN, auxT  Como Caracter;
	Definir tam, i Como Entero;
	
	i = 0; auxN = ""; auxT = "";
	
	//Para Esta Versión de la Agenda Vamos a Asignarle Un Tamaño de 3 Contactos Máx (Nombre + Telefono).
	tam = 3;
	
	Dimension vContactos[tam];
	
	
	Para i=1 Hasta tam Con Paso 1 Hacer
		Escribir "Dime el Nombre del Contacto A Guardar";
		Leer nombre;
		
		Escribir "Dime el Telefono del Contacto A Guardar";
		Leer telefono;
		
		Escribir "---------------------------------------";
		
		Si (vContactos[i] == " ") Entonces
			vContactos[i] = nombre + " " + telefono;
		SiNo
			Escribir "La Lista de Contactos Esta Llena";
		FinSi
	Fin Para
	
	Para i=1 Hasta tam Con Paso 1 Hacer
		Mientras (Subcadena(vContactos[i],i,i) <> " ") Hacer
			auxN = auxN + Subcadena(vContactos[i],i,i);
			i = i + 1;
			
			Si (Subcadena(vContactos[i],i,i+1) == " ") Entonces
				auxT = auxT + Subcadena(vContactos[i],i,i+2);
			FinSi
		Fin Mientras
		
		Escribir "Este es el Nombre: " + auxN;
		Escribir "Este es el Telefono: "+ auxT;
		
	Fin Para
	
	
	
	
	
	
	
FinAlgoritmo
