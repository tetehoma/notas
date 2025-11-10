import 'dart:io';

void main() {
  List<String> notas = <String>[];
  menu(notas);
}

String getComand(){
  print("Digite um comando: 1 - Adicionar notas, 2 - Listas notas, 3 - Sair");
  List<String> comandos = <String> ["1","2","3"];
  String? entrada = "";

  entrada = stdin.readLineSync();
  if(entrada == null || !comandos.contains(entrada)){
    print("Comando inválido");
    getComand();
  }
  return entrada!;
}
//recebe uma lista do tipo string, devolve a mesma lista
List<String> adicionarNota(List<String>notas){
print("Escreva uma nota");
String? nota = "";

nota = stdin.readLineSync();

if(nota == null || nota.isEmpty){
  print("Não é possivel adicionar uma nota vazia");
  adicionarNota(notas);
}
notas.add(nota!);
return notas;
}

//i < notas.lenght porque se o length tiver 2 itens, [0],[1]
void listarNotas(List <String> notas){
  for (var i = 0; i < notas.length; i++){
    print(notas[i]);
  }
// for in também pode ser usado
// for (tipoElemento elemento in colecaoDeDados) {
// Código a ser executado para cada elemento da coleção
// for (String nome in nomes) {
// print('Nome: $nome');
// }
}

void menu(List<String> notas){
  String comando = getComand();
  switch (comando) {
    case "1":
    adicionarNota(notas);
    menu(notas);

    case "2":
    listarNotas(notas);
    menu(notas);

    case "3": 
    print("Até breve!");     
  }
}