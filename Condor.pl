% Presentado por Fabian Alexander Franco Quiroga - 20152020048
% Ejemplo Condor
%

estudiante(fabian).
estudiante(laura).
estudiante(sebastian).
estudiante(gabriela).

materias(calculo).
materias(modelos_2).
materias(fotografia).

numeroDeClases(calculo, 15).
numeroDeClases(modelos2, 12).
numeroDeClases(fotografia, 8).

asistenciaEstudiante(fabian, calculo, 10).
asistenciaEstudiante(laura, calculo, 13).
asistenciaEstudiante(sabastian, calculo, 9).
asistenciaEstudiante(gabriela, calculo, 14).

asistenciaEstudiante(fabian, modelos2, 9).
asistenciaEstudiante(laura, modelos2, 10).
asistenciaEstudiante(sebastian, modelos2, 6).
asistenciaEstudiante(gabriela, modelos2, 11).

asistenciaEstudiante(fabian, fotografia, 8).
asistenciaEstudiante(laura , fotografia, 7).
asistenciaEstudiante(sebastian, fotografia, 8).
asistenciaEstudiante(gabriela, fotografia, 8).

notaCalculoPrimerCorte(fabian, 3.5).
notaCalculoPrimerCorte(laura, 3.7).
notaCalculoPrimerCorte(sebastian, 3.0).
notaCalculoPrimerCorte(gabriela, 4.0).
notaCalculoSegundoCorte(fabian, 3.9).
notaCalculoSegundoCorte(laura, 4.5).
notaCalculoSegundoCorte(sebastian, 2.8).
notaCalculoSegundoCorte(gabriela, 4.2).
notaCalculoTercerCorte(fabian, 3.7).
notaCalculoTercerCorte(laura, 4.1).
notaCalculoTercerCorte(sebastian, 4.5).
notaCalculoTercerCorte(gabriela, 3.4).

notaModelosPrimerCorte(fabian, 4.5).
notaModelosPrimerCorte(laura, 3.7).
notaModelosPrimerCorte(sebastian, 3.2).
notaModelosPrimerCorte(gabriela, 4.0).
notaModelosSegundoCorte(fabian, 3.9).
notaModelosSegundoCorte(laura, 5.0).
notaModelosSegundoCorte(sebastian, 2.8).
notaModelosSegundoCorte(gabriela, 4.2).
notaModelosTercerCorte(fabian, 3.7).
notaModelosTercerCorte(laura, 4.1).
notaModelosTercerCorte(sebastian, 4.5).
notaModelosTercerCorte(gabriela, 3.4).

notaFotografiaPrimerCorte(fabian, 3.5).
notaFotografiaPrimerCorte(laura, 3.7).
notaFotografiaPrimerCorte(sebastian, 3.0).
notaFotografiaPrimerCorte(gabriela, 4.0).
notaFotografiaSegundoCorte(fabian, 3.9).
notaFotografiaSegundoCorte(laura, 4.5).
notaFotografiaSegundoCorte(sebastian, 2.8).
notaFotografiaSegundoCorte(gabriela, 4.2).
notaFotografiaTercerCorte(fabian, 3.7).
notaFotografiaTercerCorte(laura, 4.1).
notaFotografiaTercerCorte(sebastian, 4.5).
notaFotografiaTercerCorte(gabriela, 3.4).

asistenciaNecesaria(Materia, X, Y):-numeroDeClases(Materia, X), Y is X*0.70.

pasaPorAsistencia(Materia,Alumno):-
    asistenciaNecesaria(Materia,NumeroDeClases,MinimoAsistencia), asistenciaEstudiante(Alumno, Materia, X),X>MinimoAsistencia.

notaCalculo(Alumno, X):-
    notaCalculoPrimerCorte(Alumno, Nota1),
    notaCalculoSegundoCorte(Alumno, Nota2),
    notaCalculoTercerCorte(Alumno, Nota3), X is Nota1*0.35 + Nota2*0.35 + Nota3*0.30.

notaModelos2(Alumno, X):-
    notaModelosPrimerCorte(Alumno, Nota1),
    notaModelosSegundoCorte(Alumno, Nota2),
    notaModelosTercerCorte(Alumno, Nota3), X is Nota1*0.35 + Nota2*0.35 + Nota3*0.30.

notaFotografia(Alumno, X):-
    notaFotografiaPrimerCorte(Alumno, Nota1),
    notaFotografiaSegundoCorte(Alumno, Nota2),
    notaFotografiaTercerCorte(Alumno, Nota3), X is Nota1*0.35 + Nota2*0.35 + Nota3*0.30.









