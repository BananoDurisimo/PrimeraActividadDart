import 'dart:io';
/* 1. Registrar el nombre del aprendiz.
2. Registrar la edad del aprendiz.
3. Registrar el programa de formación.
4. Registrar el centro de formación.
5. Registrar mínimo tres notas.
6. Calcular el promedio de las notas.
7. Validar si el aprendiz aprobó o no aprobó.
8. Validar si el aprendiz está activo.
9. Validar si el aprendiz es mayor de edad.
10. Determinar si el aprendiz puede continuar en el proceso.
11. Determinar si el aprendiz requiere apoyo.
12. Mostrar los resultados en consola usando print().
*/
void main() {
  //Información del Aprendiz
  stdout.write("Ingresa tu nombre: ");
  String? nombre = stdin.readLineSync();

  stdout.write("Ingresa tu edad: ");
  int? edad = int.parse(stdin.readLineSync()!);

  stdout.write("Ingresa tu programa de formación: ");
  String? programadeformacion = stdin.readLineSync();

  stdout.write("Ingresa tu centro de formación: ");
  String? centrodeformacion = stdin.readLineSync();



  //Información de las Notas
  stdout.write("Ingresa la Nota #1: ");
  double? nota1 = double.parse(stdin.readLineSync()!);

  stdout.write("Ingresa la Nota #2: ");
  double? nota2 = double.parse(stdin.readLineSync()!);

  stdout.write("Ingresa la Nota #3: ");
  double? nota3 = double.parse(stdin.readLineSync()!);
  

  double promedioNotas = (nota1 + nota2 + nota3)/3;

  


  //Validaciones

  var aprobo;
  if(promedioNotas >= 3.0 ){
    aprobo = true;
  }
  else{
    aprobo = false;
  }

  var activo;
  stdout.write("El aprendiz está activo? (si/no): ");
  var estaactivo = stdin.readLineSync();

  if(estaactivo == 'si'){
    activo = true;
  }
  else{
    activo = false;
  }

  var mayorDeEdad;
  if(edad >= 18){
    mayorDeEdad = true;
  }
  else{
    mayorDeEdad = false;
  }





  //Determinaciones

  var continua;
  if(aprobo && activo){
    stdout.write("El aprendiz puede continuar en la formación");
    continua = true;
  }
  else{
    stdout.write("El aprendiz no puede continuar en la formación");
    continua = false;
  }

  var requiereapoyo;
  if(promedioNotas < 4.0){
    stdout.write("El aprendiz requiere apoyo");
    requiereapoyo = true; 
  }
  else{
    stdout.write("El aprendiz no requiere apoyo");
    requiereapoyo = false;
  }
  
  //Mostrar la información en la consola
  print("");
  print("== Información del estudiante ==");
  print("Nombre: $nombre");
  print("Edad: $edad");
  print("Programa de formación: $programadeformacion");
  print("Centro de formación: $centrodeformacion");
  print("== Notas ==");
  print("Nota 1: $nota1");
  print("Nota 2: $nota2");
  print("Nota 3: $nota3");
  print("Promedio: $promedioNotas");
  print("== Validaciones ==");
  print("El aprendiz aprobó? $aprobo");
  print("El aprendiz está activo? $activo");
  print("El aprendiz es mayor de edad? $mayorDeEdad");
  print("== Determinaciones ==");
  print("El aprendiz continua? $continua");
  print("El aprendiz requiere apoyo? $requiereapoyo");
}
