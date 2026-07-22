Algoritmo analisis_escolar
	Definir opcion, totalEstudiantes Como Entero
	Definir i, idBuscar Como Entero
	Definir encontrado Como Logico
	Definir promedioNotas, promedioAsistencia Como Real
	Definir sumaNotas, sumaAsistencia Como Real
	Definir mayorNota, menorNota Como Real
	Definir mayorAsistencia, menorAsistencia Como Real
	Definir aprobados, reprobados Como Entero
	Definir asistenciaAlta, asistenciaBaja Como Entero
	Dimension id[100]
	Dimension nombre[100]
	Dimension curso[100]
	Dimension materia[100]
	Dimension nota[100]
	Dimension asistencia[100]
	Dimension estado[100]
	totalEstudiantes <- 0
	//-------------------------------------//
	//--|menu_principal_analisis_escolar|--//
	//-------------------------------------//
	Repetir
		Escribir "menu principal analisis escolar"
		Escribir "1) registrar estudiante"
		Escribir "2) editar estudiante"
		Escribir "3) eliminar estudiante"
		Escribir "4) buscar estudiante"
		Escribir "5) listar estudiantes"
		Escribir "6) ver detalles del estudiante"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//--------------------------//
			//--|registrar_estudiante|--//
			//--------------------------//
			1:
				Si totalEstudiantes < 100 Entonces
					totalEstudiantes <- totalEstudiantes + 1
					id[totalEstudiantes] <- totalEstudiantes
					Escribir "ingrese el nombre:"
					Leer nombre[totalEstudiantes]
					Escribir "ingrese el curso:"
					Leer curso[totalEstudiantes]
					Escribir "ingrese la materia:"
					Leer materia[totalEstudiantes]
					Escribir "ingrese la nota:"
					Leer nota[totalEstudiantes]
					Escribir "ingrese la asistencia (%):"
					Leer asistencia[totalEstudiantes]
					Si nota[totalEstudiantes] >= 3 Entonces
						estado[totalEstudiantes] <- "aprobado"
					SiNo
						estado[totalEstudiantes] <- "reprobado"
					FinSi
					Escribir "estudiante registrado correctamente."
				SiNo
					Escribir "no hay espacio para registrar mas estudiantes."
				FinSi
			//-----------------------//
			//--|editar_estudiante|--//
			//-----------------------//
			2:
				Escribir "editar estudiante"
				Si totalEstudiantes = 0 Entonces
					Escribir "no hay estudiantes registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalEstudiantes Hacer
						Escribir id[i], " | ", nombre[i], " | ", curso[i], " | ", materia[i], " | ", nota[i], " | ", asistencia[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del estudiante:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalEstudiantes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre:"
							Leer nombre[i]
							Escribir "ingrese el nuevo curso:"
							Leer curso[i]
							Escribir "ingrese la nueva materia:"
							Leer materia[i]
							Escribir "ingrese la nueva nota:"
							Leer nota[i]
							Escribir "ingrese la nueva asistencia:"
							Leer asistencia[i]
							Si nota[i] >= 3 Entonces
								estado[i] <- "aprobado"
							SiNo
								estado[i] <- "reprobado"
							FinSi
							Escribir "estudiante editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un estudiante con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|eliminar_estudiante|--//
			//-------------------------//
			3:
				Escribir "eliminar estudiante"
				Si totalEstudiantes = 0 Entonces
					Escribir "no hay estudiantes registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalEstudiantes Hacer
						Escribir id[i], " | ", nombre[i], " | ", curso[i], " | ", materia[i], " | ", nota[i], " | ", asistencia[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del estudiante:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalEstudiantes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalEstudiantes Entonces
								Para j <- i Hasta totalEstudiantes - 1 Hacer
									id[j] <- id[j+1]
									nombre[j] <- nombre[j+1]
									curso[j] <- curso[j+1]
									materia[j] <- materia[j+1]
									nota[j] <- nota[j+1]
									asistencia[j] <- asistencia[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalEstudiantes <- totalEstudiantes - 1
							Escribir "estudiante eliminado correctamente."
						FinSi
					FinPara					
					Si encontrado = Falso Entonces
						Escribir "no se encontró un estudiante con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|buscar_estudiante|--//
			//-----------------------//
			4:
				Escribir "buscar estudiante"
				Si totalEstudiantes = 0 Entonces
					Escribir "no hay estudiantes registrados."
				SiNo
					Escribir "ingrese el id del estudiante:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalEstudiantes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", nombre[i], " | ", curso[i], " | ", materia[i], " | ", nota[i], " | ", asistencia[i], " | ", estado[i]
						FinSi
					FinPara					
					Si encontrado = Falso Entonces
						Escribir "no se encontró un estudiante con ese id."
					FinSi
				FinSi
			//------------------------//
			//--|listar_estudiantes|--//
			//------------------------//
			5:
				Escribir "listar estudiantes"
				Si totalEstudiantes = 0 Entonces
					Escribir "no hay estudiantes registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalEstudiantes Hacer
						Escribir id[i], " | ", nombre[i], " | ", curso[i], " | ", materia[i], " | ", nota[i], " | ", asistencia[i], " | ", estado[i]
					FinPara
				FinSi
				//-----------------------------//
				//--|ver_detalles_estudiante|--//
				//-----------------------------//
			6:
				Escribir "ver detalles del estudiante"
				Si totalEstudiantes = 0 Entonces
					Escribir "no hay estudiantes registrados."
				SiNo
					Escribir "ingrese el id del estudiante:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalEstudiantes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del estudiante"
							Escribir "id: ", id[i]
							Escribir "nombre: ", nombre[i]
							Escribir "curso: ", curso[i]
							Escribir "materia: ", materia[i]
							Escribir "nota: ", nota[i]
							Escribir "asistencia: ", asistencia[i], "%"
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un estudiante con ese id."
					FinSi
				FinSi
				//--------------------------//
				//--|mostrar_estadisticas|--//
				//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalEstudiantes = 0 Entonces
					Escribir "no hay estudiantes registrados."
				SiNo
					sumaNotas <- 0
					sumaAsistencia <- 0
					
					mayorNota <- nota[1]
					menorNota <- nota[1]
					
					mayorAsistencia <- asistencia[1]
					menorAsistencia <- asistencia[1]
					aprobados <- 0
					reprobados <- 0
					asistenciaAlta <- 0
					asistenciaBaja <- 0
					Para i <- 1 Hasta totalEstudiantes Hacer
						sumaNotas <- sumaNotas + nota[i]
						sumaAsistencia <- sumaAsistencia + asistencia[i]
						Si nota[i] > mayorNota Entonces
							mayorNota <- nota[i]
						FinSi
						Si nota[i] < menorNota Entonces
							menorNota <- nota[i]
						FinSi
						Si asistencia[i] > mayorAsistencia Entonces
							mayorAsistencia <- asistencia[i]
						FinSi
						Si asistencia[i] < menorAsistencia Entonces
							menorAsistencia <- asistencia[i]
						FinSi
						Si estado[i] = "aprobado" Entonces
							aprobados <- aprobados + 1
						SiNo
							reprobados <- reprobados + 1
						FinSi
						Si asistencia[i] >= 80 Entonces
							asistenciaAlta <- asistenciaAlta + 1
						SiNo
							asistenciaBaja <- asistenciaBaja + 1
						FinSi
					FinPara
					promedioNotas <- sumaNotas / totalEstudiantes
					promedioAsistencia <- sumaAsistencia / totalEstudiantes
					Escribir "estadistica general"
					Escribir "total de estudiantes: ", totalEstudiantes
					Escribir "promedio de notas: ", promedioNotas
					Escribir "promedio de asistencia: ", promedioAsistencia, "%"
					Escribir "nota mayor: ", mayorNota
					Escribir "nota menor: ", menorNota
					Escribir "mayor asistencia: ", mayorAsistencia, "%"
					Escribir "menor asistencia: ", menorAsistencia, "%"
					Escribir "estudiantes aprobados: ", aprobados
					Escribir "estudiantes reprobados: ", reprobados
					Escribir "asistencia alta (>=80%): ", asistenciaAlta
					Escribir "asistencia baja (<80%): ", asistenciaBaja
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar analisis escolar."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo