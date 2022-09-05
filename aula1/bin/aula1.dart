import 'dart:io';
import 'dart:math';

double calcularSalario(double salario, num percentual) {
  return salario + (salario * percentual) / 100.00;
}

void calcularIdade(int anoDeNascimento, int anoAtual) {
  int idade = anoAtual - anoDeNascimento;
  int idadeEmMeses = idade * 12;
  int idadeEmDias = idade * 365;
  int idadeEmSemanas = idade * 52;
  print("A sua idade em anos é $idade anos."
        "\nA sua idade em meses é $idadeEmMeses meses."
        "\nA sua idade em dias é $idadeEmDias dias."
        "\nA sua idade em semanas é $idadeEmSemanas semanas.");
}

void calcularRestoRacao(double pesoSacoRacao, double quantidadeRacaoGato1, double quantidadeRacaoGato2) {
  double restoRacao = ((pesoSacoRacao * 1000.00) - (quantidadeRacaoGato1 * 5) - (quantidadeRacaoGato2 * 5)) / 1000.00;
  if (restoRacao >= 0) {
    print("A quantidade restante de ração após cinco dias é $restoRacao kg.");
  } else {
    print("Você vai precisar comprar um novo saco de ração antes de cinco dias.");
  }
}

void trocarValoresAB(var A, var B) {
  var aux = A;
  A = B;
  B = aux;
  print("O valor das variáveis após a troca é:"
        "\nA = $A"
        "\nB = $B");
}

int calcularVolumeCaixa(int comprimento, int largura, int altura) {
  int volume = comprimento * largura * altura;
  return volume;
}

num calcularQuadradoDiferenca(int A, int B) {
  return pow((A - B), 2);
}

double calcularConversaoDolar(double dolares, double cotacao) {
  return dolares * cotacao;
}

num calcularQuadradoSoma(int A, int B, int C) {
  return pow((A + B + C), 2);
}

void calcularOperacoesBasicas(num A, num B) {
  num soma = A + B;
  num subtracao = A - B;
  num divisao = A / B;
  num multiplicacao = A * B;
  print("O resultado de A + B é $soma"
        "\nO resultado de A - B é $subtracao"
        "\nO resultado de A / B é $divisao"
        "\nO resultado de A * B é $multiplicacao");
}

num calcularVolumeEsfera(num raio) {
  return (4.00 * 3.14159 * pow(raio, 3)) / 3.00;
}

void calcularSucessorAntecessor(int numero) {
  int sucessor = numero + 1;
  int antecessor = numero - 1;
  print("O sucessor de $numero é $sucessor."
        "\nO antecessor de $numero é $antecessor.");
}

void calcularMulta(int velocidade) {
  int velocidadePermitida = 80;
  if (velocidade > velocidadePermitida) {
    int multa = (velocidade - velocidadePermitida) * 5;
    print("Você foi multado em ${(multa).toStringAsFixed(2)} reais.");
  } else {
    print("Você não foi multado.");
  }
}

void calcularIdadeVoto(int anoDeNascimento) {
  int idade = 2022 - anoDeNascimento;
  if (idade >= 18) {
    print("Você já pode votar.");
  } else {
    print("Você não pode votar.");
  }
}

void calcularMedia(String nome, double nota1, double nota2) {
  double media = (nota1 + nota2) / 2.00;
  print("$nome a sua média é ${media.toStringAsFixed(1)}");
  if (media > 7.0) {
    print("Você teve um bom aproveitamento.");
  } else {
    print("Você não teve um bom aproveitamento.");
  }
}

void verificarParidade(int numero) {
  if (numero % 2 == 0) {
    print("Esse número é par.");
  } else {
    print("Esse número é ímpar.");
  }
}

void verificarAlistamentoMilitar(int anoDeNascimento) {
  int idade = 2022 - anoDeNascimento;
  int idadeAlistamento = 18;
  if (idade < idadeAlistamento) {
    idadeAlistamento -= idade;
    print("Ainda faltam $idadeAlistamento anos para o alistamento.");
  } else {
    idadeAlistamento = idade - idadeAlistamento;
    print("Já se passaram $idadeAlistamento anos do alistamento.");
  }
}

void calcularDesconto(String nome, int sexo, double valorCompras) {
  double desconto;
  if (sexo == 1) {
    desconto = valorCompras - (valorCompras * 13.00) / 100.00;
    print("$nome o preço das suas compras é ${converterDecimal(desconto)} reais.");
  } else if (sexo == 2) {
    desconto = valorCompras - (valorCompras * 5.00) / 100.00;
    print("$nome o preço das suas compras é ${converterDecimal(desconto)} reais.");
  } else {
    print("Valor Inválido!");
  }
}

double calcularPrecoPassagem(int distancia) {
  double precoPassagem;
  if (distancia <= 200) {
    precoPassagem = distancia * 0.50;
  } else {
    precoPassagem = distancia * 0.45;
  }
  return precoPassagem;
}

// Exercício 20
/*
20 Escreva um aplicativo que leia na tela uma das mensagens abaixo: segmentos
formarem um triângulo, o comprimento soma dos outros dois. dois números
inteiros e compare-os, mostrando - O primeiro valor é o maior - O segundo valor é
o maior - Não existe valor maior, os dois são iguais
*/

void calcularMediaAluno(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2.00;
  if ((media >= 0.0) && (media <= 4.9)) {
    print("Reprovado.");
  } else if ((media >= 5.0) && (media <= 6.9)) {
    print("Recuperação.");
  } else if ((media >= 7.0) && (media <= 10.0)) {
    print("Aprovado.");
  } else {
    print("Nota inválida.");
  }
}

void calcularArea(int largura, int comprimento) {
  int area = largura * comprimento;
  print("A área desse terreno é $area m²."
        "\nE a sua classificação é:");
  if ((area > 0) && (area < 100)) {
    print("Terreno Popular.");
  } else if ((area >= 100) && (area <= 500)) {
    print("Terreno Master.");
  } else if (area > 500) {
    print("Terreno VIP.");
  } else {
    print("Área inválida.");
  }
}

double calcularNovoSalario(double salario, int anos) {
  double novoSalario = 0;
  if ((anos >= 0) && (anos < 3)) {
    num percentual = 3.00;
    novoSalario = calcularSalario(salario, percentual);
  } else if ((anos >= 3) && (anos < 10)) {
    num percentual = 12.50;
    novoSalario = calcularSalario(salario, percentual);
  } else if (anos >= 10) {
    num percentual = 20.00;
    novoSalario = calcularSalario(salario, percentual);
  } else {
    print("Valor Inválido!");
  }
  return novoSalario;
}

void jogarJoKenPo(num jogador) {
  Random random = Random();
  int computador = random.nextInt(3);
  switch (jogador) {
    case 0:
      if (computador == 1) {
        print("Você perdeu!");
      } else if (computador == 2) {
        print("Você ganhou!");
      } else {
        print("Empate");
      }
      break;
    case 1:
      if (computador == 0) {
        print("Você ganhou!");
      } else if (computador == 2) {
        print("Você perdeu!");
      } else {
        print("Empate");
      }
      break;
    case 2:
      if (computador == 0) {
        print("Você perdeu!");
      } else if (computador == 1) {
        print("Você ganhou!");
      } else {
        print("Empate");
      }
      break;
    default:
      print("Valor Inválido!");
  }
}

void calcularEmprestimo(double precoCasa, double salario, int anos) {
  double parcela = precoCasa / anos / 12;
  double porcentagemSalario = (parcela * 100) / 1000.00;
  if (porcentagemSalario <= 30.0) {
    print("Seu empréstimo foi aprovado.");
  } else {
    print("Seu empréstimo foi negado.");
  }
}

void calcularIMC(double altura, double peso) {
  double imc = peso / pow(altura, 2);
  if (imc < 18.5) {
    print("Você está Abaixo do peso.");
  } else if ((imc >= 18.5) && (imc <= 25)) {
    print("Você está no Peso ideal.");
  } else if ((imc > 25) && (imc <= 30)) {
    print("Você está com Sobrepeso.");
  } else if ((imc > 30) && (imc <= 40)) {
    print("Você está com Obesidade.");
  } else if (imc > 40) {
    print("Você está com Obesidade mórbida.");
  } else {
    print("Valor Inválido!");
  }
}

double calcularAluguelCarro(int tipoCarro, int diasAluguel, int quilometros) {
  double precoAluguel = 0;
  switch (tipoCarro) {
    case 1:
      if (quilometros <= 100) {
        precoAluguel = (90.00 * diasAluguel) + (quilometros * 0.20);
      } else {
        precoAluguel = (90.00 * diasAluguel) + (quilometros * 0.10);
      }
      break;
    case 2:
      if (quilometros <= 200) {
        precoAluguel = (150.00 * diasAluguel) + (quilometros * 0.30);
      } else {
        precoAluguel = (150.00 * diasAluguel) + (quilometros * 0.25);
      }
      break;
    default:
      print("Informação Inválida.");
  }
  return precoAluguel;
}

void calcularPontos(int horasAtividades) {
  int pontos = 0;
  if (horasAtividades < 10) {
    pontos = horasAtividades * 2;
  } else if ((horasAtividades >= 10) && (horasAtividades <= 20)) {
    pontos = horasAtividades * 5;
  } else {
    pontos = horasAtividades * 10;
  }
  print("Você fez $pontos pontos e ganhou ${converterDecimal(pontos * 0.05)} reais.");
}

double calcularReajusteSalario(double salario, int genero, int anosTrabalho) {
  double salarioReajustado = 0;
  num percentual = 0;
  switch (genero) {
    case 1:
      if (anosTrabalho < 15) {
        percentual = 5;
        salarioReajustado = calcularSalario(salario, percentual);
      } else if ((anosTrabalho >= 15) && (anosTrabalho <= 20)) {
        percentual = 12;
        salarioReajustado = calcularSalario(salario, percentual);
      } else {
        percentual = 23;
        salarioReajustado = calcularSalario(salario, percentual);
      }
      break;
    case 2:
      if (anosTrabalho < 20) {
        percentual = 3;
        salarioReajustado = calcularSalario(salario, percentual);
      } else if ((anosTrabalho >= 20) && (anosTrabalho <= 30)) {
        percentual = 13;
        salarioReajustado = calcularSalario(salario, percentual);
      } else {
        percentual = 25;
        salarioReajustado = calcularSalario(salario, percentual);
      }
      break;
    default:
      print("Informação Inválida.");
  }
  return salarioReajustado;
}

void realizarContagemRegressiva() {
  for (int i = 30; i >= 1; i--) {
    if (i % 4 == 0) {
      print("[$i]");
    } else {
      print("$i");
    }
  }
}

int calcularSoma() {
  int soma = 0;
  for (int i = 6; i <= 100; i += 2) {
    soma = soma + i;
  }
  return soma;
}

int calcularExpressao() {
  int soma = 0;
  for (int i = 500; i >= 0; i -= 50) {
    soma = soma + i;
  }
  return soma;
}

/*
33 Desenvolva uma aplicação que leia 6 números em um vetor, e no final mostre
quantos deles são impares e quantos são pares. Imprima também os valores.
34 Desenvolva um programa que faça o sorteio de 20 números entre 0 e 10 e mostre
na tela:
Quais foram os números sorteados
Quantos números estão acima de 5
Quantos números são divisíveis por 3
35
36
Desenvolva uma aplicação que leia o preço de 8 produtos, e armazenem em uma
lista. No final, mostre na tela qual foi o maior e qual foi o menor preço informado.
Crie um algoritmo que leia a idade de 10 pessoas, mostrando no final:
Qual é a média de idade do grupo
Quantas pessoas tem mais de 18 anos
Quantas pessoas tem menos de 5 anos
Qual foi a maior idade lida
37
Faça uma aplicação que leia a idade e o sexo de 5 pessoas, mostre no final:
Quantos homens foram cadastrados
Quantas mulheres foram cadastradas
A média de idade do grupo
A média de idade dos homens
Quantas mulheres tem mais de 20 anos
38 Desenvolva um programa que leia 10 números inteiros e guarde-os em um vetor.
No final, mostre quais são os números pares que foram digitados e em que
posições eles estão armazenados.

39
40
Desenvolva um programa que faça o sorteio de 20 números entre 0 e 10 e mostre
na tela:
Crie um programa que leia a idade de 8 pessoas e guarde-as em um vetor. No
final, mostre:
Qual é a média de idade das pessoas cadastradas
Em quais posições temos pessoas com mais de 25 anos
Qual foi a maior idade digitada (podem haver repetições)
Em que posições digitamos a maior idade
41
Faça um algoritmo que leia a nota de 10 alunos de uma turma e guarde-as em
um vetor. No final, mostre:
Qual é a média da turma
Quantos alunos estão acima da média da turma
Qual foi a maior nota digitada
Em que posições a maior nota aparece
42
43
44
Crie uma lógica que preencha um vetor de 20 posições com números aleatórios
(entre 0 e 99) gerados pelo computador. Logo em seguida, mostre os números
gerados e depois coloque o vetor em ordem crescente, mostrando no final os
valores ordenados.
Crie um programa que leia o nome e a idade de 9 pessoas e guarde esses
valores em dois vetores, em posições relacionadas. No final, mostre uma
listagem contendo apenas os dados das pessoas menores de idade.
Faça um algoritmo que leia o nome, o sexo e o salário de 5 funcionários e guarde
esses dados em três vetores. No final, mostre uma listagem contendo apenas os
dados das funcionárias mulheres que ganham mais de R$5 mil.
*/

// Exercício 33
void verificarVetor() {
  List<int> lista = [];
  for (int i = 0; i < 6; i++) {
    String? valor = stdin.readLineSync();
    if (valor != null) {
      int numero = int.parse(valor);
      lista.add(numero);
    }
  }
  List<int> listaImpar = [];
  List<int> listaPar = [];
  int impar = 0;
  int par = 0;
  for (int i = 0; i < 6; i++) {
    if (lista[i] % 2 != 0) {
      impar = impar + 1;
      listaImpar.add(lista[i]);
    } else {
      par = par + 1;
      listaPar.add(lista[i]);
    }
  }
  print("Esse vetor possui $impar números ímpares e $par números pares."
        "\nVetor: $lista."
        "\nOs números ímpares são $listaImpar e os números pares são $listaPar.");
}

// Exercício 34
void sorteioNumerico() {
  List lista = sortearNumeros();
  int acimaCinco = 0;
  int divisivelTres = 0;
  for (int i = 0; i < 20; i++) {
    if (lista[i] > 5) {
      acimaCinco = acimaCinco + 1;
    }
    if (lista[i] % 3 == 0) {
      divisivelTres = divisivelTres + 1;
    }
  }
  print("Os números sorteados foram: $lista"
        "\n$acimaCinco números estão acima de 5"
        "\n$divisivelTres números são divisíveis por 3");
}

// Exercício 35
void listarPreco() {
  List<double> lista = [];
  for (int i = 0; i < 8; i++) {
    String? valor = stdin.readLineSync();
    if (valor != null) {
      double precoProduto = double.parse(valor);
      lista.add(precoProduto);
    }
  }
  lista.sort();
  print("O maior preço é ${converterDecimal(lista[7])} reais e o menor preço é ${converterDecimal(lista[0])} reais.");
}

// Exercício 36
void verificarVetorIdade() {
  List<int> lista = [];
  for (int i = 0; i < 10; i++) {
    String? valor = stdin.readLineSync();
    if (valor != null) {
      int idade = int.parse(valor);
      lista.add(idade);
    }
  }
  int somaIdade = 0;
  int idadeMaior = 0;
  int idadeMenor = 0;
  int maiorIdade = 0;
  for (int i = 0; i < 10; i++) {
    somaIdade = somaIdade + lista[i];
    if (lista[i] > 18) {
      idadeMaior = idadeMaior + 1;
    } else if (lista[i] < 5) {
      idadeMenor = idadeMenor + 1;
    }
    if (maiorIdade < lista[i]) {
      maiorIdade = lista[i];
    }
  }
  num mediaIdade = (somaIdade / 10).round();
  print("A média de idade do grupo é $mediaIdade anos."
        "\nA quantidade de pessoas com mais de 18 anos é $idadeMaior"
        "\nA quantidade de pessoas com menos de 5 anos é $idadeMenor"
        "\nA maior idade do grupo é $maiorIdade");
}

// Exercício 37
void calcularVetorIdadeSexo() {
  List<int> listaIdade = [];
  List<int> listaSexo = [];
  print("Digite a idade de cinco pessoas:");
  for (int i = 0; i < 5; i++) {
    String? valor = stdin.readLineSync();
    if(valor != null) {
      int idade = int.parse(valor);
      listaIdade.add(idade);
    }
  }
  print("Digite o sexo de cinco pessoas: (1 - feminino e 2 - masculino)");
  for (int i = 0; i < 5; i++) {
    String? valor = stdin.readLineSync();
    if(valor != null) {
      int sexo = int.parse(valor);
      listaSexo.add(sexo);
    }
  }
  int somaHomens = 0;
  int somaMulheres = 0;
  int somaIdade = 0;
  int somaIdadeHomens = 0;
  int somaMulheresMaiores = 0;
  for (int i = 0; i < 5; i++) {
    switch (listaSexo[i]) {
      case 1:
        somaMulheres = somaMulheres + 1;
        if (listaIdade[i] > 20) {
          somaMulheresMaiores = somaMulheresMaiores + 1;
        }
        break;
      case 2:
        somaHomens = somaHomens + 1;
        somaIdadeHomens = somaIdadeHomens + listaIdade[i];
        break;
      default:
        print("Valor Inválido.");
    }
    somaIdade = somaIdade + listaIdade[i];
  }
  num mediaIdade = (somaIdade / 5).round();
  num mediaIdadeHomens = (somaIdadeHomens / somaHomens).round();
  print("Foram cadastrados $somaHomens homens."
        "\nForam cadastradas $somaMulheres mulheres."
        "\nA média da idade do grupo é $mediaIdade anos."
        "\nA média da idade dos homens é $mediaIdadeHomens anos."
        "\nExistem $somaMulheresMaiores mulheres com mais de 20 anos.");
}

// Exercício 38
void verificarPosicaoParVetor() {
  List<int> lista = [];
  for (int i = 0; i < 10; i++) {
    String? valor = stdin.readLineSync();
    if (valor != null) {
      int numero = int.parse(valor);
      lista.add(numero);
    }
  }
  for (int i = 0; i < 10; i++) {
    if (lista[i] % 2 == 0) {
      print("Número ${lista[i]} na posição ${i + 1}");
    }
  }
}

// Exercício 39
List sortearNumeros() {
  var numeros = Random();
  List<int> lista = [];
  for (int i = 0; i < 20; i++) {
    lista.add(numeros.nextInt(11));
  }
  return lista;
}

// Exercício 40
void lerVetorIdades() {
  List<int> listaIdade = [];
  for (int i = 0; i < 8; i++) {
    String? valor = stdin.readLineSync();
    if (valor != null) {
      int idade = int.parse(valor);
      listaIdade.add(idade);
    }
  }
  int somaIdade = 0;
  int maiorIdade = 0;
  List<int> listaPosicoes = [];
  List<int> listaMaiorIdade = [];
  for (int i = 0; i < 8; i++) {
    somaIdade = somaIdade + listaIdade[i];
    if (maiorIdade < listaIdade[i]) {
      maiorIdade = listaIdade[i];
    }
    if (listaIdade[i] > 25) {
      listaPosicoes.add(i + 1);
    }
  }
  for (int i = 0; i < 8; i++) {
    if (listaIdade[i] == maiorIdade) {
      listaMaiorIdade.add(i + 1);
    }
  }
  num mediaIdade = (somaIdade / 8).round();
  print("A média de idade das pessoas cadastradas é $mediaIdade anos."
        "\nTemos pessoas com mais de 25 anos nas posições $listaPosicoes."
        "\nA maior idade do grupo é $maiorIdade anos."
        "\nA maior idade foi digitada nas posições $listaMaiorIdade.");
}

// Exercício 41
void lerVetorNotas() {
  List<double> listaNotas = [];
  for (int i = 0; i < 10; i++) {
    String? valor = stdin.readLineSync();
    if (valor != null) {
      double nota = double.parse(valor);
      listaNotas.add(nota);
    }
  }
  double somaNotas = 0;
  double maiorNota = 0;
  for (int i = 0; i < 10; i++) {
    somaNotas = somaNotas + listaNotas[i];
    if (listaNotas[i] > maiorNota) {
      maiorNota = listaNotas[i];
    }
  }
  double mediaNotas = somaNotas / 10;
  int alunosAcima = 0;
  List<int> listaMaiorNota = [];
  for (int i = 0; i < 10; i ++) {
    if (listaNotas[i] > mediaNotas) {
      alunosAcima = alunosAcima + 1;
    }
    if (listaNotas[i] == maiorNota) {
      listaMaiorNota.add(i + 1);
    }
  }
  print("A média das notas da turma é ${mediaNotas.toStringAsFixed(1)}"
        "\n$alunosAcima alunos estão acima da média da turma"
        "\nA maior nota digitada foi $maiorNota"
        "\nA maior nota aparece nas posições: $listaMaiorNota");
}

// Exercício 42
void preencherVetorAleatorio() {
  var numeros = Random();
  List<int> lista = [];
  for (int i = 0; i < 20; i++) {
    lista.add(numeros.nextInt(100));
  }
  print("Vetor Aleatório: $lista");
  lista.sort();
  print("Vetor Ordenado: $lista");
}

// Exercício 43
void lerDoisVetores() {
  List<String> listaNome = [];
  List<int> listaIdade = [];
  for (int i = 0; i < 9; i++) {
    String? valor1 = stdin.readLineSync();
    String? valor2 = stdin.readLineSync();
    if ((valor1 != null) && (valor2 != null)) {
      String nome = valor1;
      int idade = int.parse(valor2);
      listaNome.add(nome);
      listaIdade.add(idade);
    }
  }
  print("As pessoas menores de idade são:");
  for (int i = 0; i < 9; i++) {
    if (listaIdade[i] < 18) {
      print("${listaNome[i]} tem ${listaIdade[i]} anos.");
    }
  }
}

// Exercício 44
void lerTresVetores() {
  List<String> listaNomes = [];
  List<int> listaSexo = [];
  List<double> listaSalario = [];
  print("Digite o nome, o sexo e o salário de 5 funcionários, respectivamente."
        "\nDigite uma informação em cada linha, com 1 - feminino e 2 - masculino");
  for (int i = 0; i < 5; i++) {
    String? valor1 = stdin.readLineSync();
    String? valor2 = stdin.readLineSync();
    String? valor3 = stdin.readLineSync();
    if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
      String nome = valor1;
      int sexo = int.parse(valor2);
      double salario = double.parse(valor3);
      listaNomes.add(nome);
      listaSexo.add(sexo);
      listaSalario.add(salario);
    }
  }
  print("As mulheres que ganham mais de 5 mil são:");
  for (int i = 0; i < 5; i++) {
    if (listaSexo[i] == 1) {
      if (listaSalario[i] > 5000) {
        print("${listaNomes[i]} ganha ${converterDecimal(listaSalario[i])}");
      }
    }
  }
}

String converterDecimal(double valor) {
  return valor.toStringAsFixed(2);
}

void valorNulo() {
  print("Nenhuma informação pode ser nula.");
}

int menu() {
  print("Digite 0 para sair.");
  print("Digite 1 para o primeiro exercício.");
  print("Digite 2 para o segundo exercício.");
  print("Digite 3 para o terceiro exercício.");
  print("Digite 4 para o quarto exercício.");
  print("Digite 5 para o quinto exercício.");
  print("Digite 6 para o sexto exercício.");
  print("Digite 7 para o sétimo exercício.");
  print("Digite 8 para o oitavo exercício.");
  print("Digite 9 para o nono exercício.");
  print("Digite 10 para o décimo exercício.");
  print("Digite 11 para o décimo primeiro exercício.");
  print("Digite 12 para o décimo segundo exercício.");
  print("Digite 13 para o décimo terceiro exercício.");
  print("Digite 14 para o décimo quarto exercício.");
  print("Digite 15 para o décimo quinto exercício.");
  print("Digite 16 para o décimo sexto exercício.");
  print("Digite 17 para o décimo sétimo exercício.");
  print("Digite 18 para o décimo oitavo exercício.");
  print("Digite 19 para o décimo no exercício.");
  print("Digite 20 para o vigésimo exercício.");
  print("Digite 21 para o vigésimo primeiro exercício.");
  print("Digite 22 para o vigésimo segundo exercício.");
  print("Digite 23 para o vigésimo terceiro exercício.");
  print("Digite 24 para o vigésimo quarto exercício.");
  print("Digite 25 para o vigésimo quinto exercício.");
  print("Digite 26 para o vigésimo sexto exercício.");
  print("Digite 27 para o vigésimo sétimo exercício.");
  print("Digite 28 para o vigésimo oitavo exercício.");
  print("Digite 29 para o vigésimo nono exercício.");
  print("Digite 30 para o trigésimo exercício.");
  print("Digite 31 para o trigésimo primeiro exercício.");
  print("Digite 32 para o trigésimo segundo exercício.");
  print("Digite 33 para o trigésimo terceiro exercício.");
  print("Digite 34 para o trigésimo quarto exercício.");
  print("Digite 35 para o trigésimo quinto exercício.");
  print("Digite 36 para o trigésimo sexto exercício.");
  print("Digite 37 para o trigésimo sétimo exercício.");
  print("Digite 38 para o trigésimo oitavo exercício.");
  print("Digite 39 para o trigésimo nono exercício.");
  print("Digite 40 para o quadragésimo exercício.");
  print("Digite 41 para o quadragésimo primeiro exercício.");
  print("Digite 42 para o quadragésimo segundo exercício.");
  print("Digite 43 para o quadragésimo terceiro exercício.");
  print("Digite 44 para o quadragésimo quarto exercício.");
  String? aux = stdin.readLineSync();
  return (aux != null) ? int.parse(aux) : -1;
}

void main() {
  int op;
  do {
    op = menu();
    switch (op) {
      case 0:
          print("Você saiu do programa.");
        break;
      case 1:
        {
          print("Qual é o salário atual desse funcionário?");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            double salario = double.parse(valor);
            num percentual = 25;
            print("O salário atual desse funcionário é ${converterDecimal(salario)} reais e seu novo salaŕio será ${converterDecimal(calcularSalario(salario, percentual))} reais.");
          } else {
            valorNulo();
          }
        }
        break;
      case 2:
        {
          print("Qual é o salário atual desse funcionário?");
          String? valor1 = stdin.readLineSync();
          print("Qual é o valor percentual que deve ser incrementado no salário desse funcionário?");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            double salario = double.parse(valor1);
            num percentual = num.parse(valor2);
            print("O salário de ${converterDecimal(salario)} reais desse funcionário será reajustado para ${converterDecimal(calcularSalario(salario, percentual))} reais.");
          } else {
            valorNulo();
          }
        }
        break;
      case 3:
        {
          print("Qual é o ano do seu nascimento?");
          String? valor1 = stdin.readLineSync();
          print("Qual é o ano atual?");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            int anoDeNascimento = int.parse(valor1);
            int anoAtual = int.parse(valor2);
            calcularIdade(anoDeNascimento, anoAtual);
          } else {
            valorNulo();
          }
        }
        break;
      case 4:
        {
          print("Qual é o peso do saco de ração?");
          String? valor1 = stdin.readLineSync();
          print("Qual é a quantidade de ração fornecida para o primeiro gato?");
          String? valor2 = stdin.readLineSync();
          print("Qual é a quantidade de ração fornecida para o segundo gato?");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            double pesoSacoRacao = double.parse(valor1);
            double quantidadeRacaoGato1 = double.parse(valor2);
            double quantidadeRacaoGato2 = double.parse(valor3);
            calcularRestoRacao(pesoSacoRacao, quantidadeRacaoGato1, quantidadeRacaoGato2);
          } else {
            valorNulo();
          }
        }
        break;
      case 5:
        {
          print("Digite o valor da variável A:");
          String? valor1 = stdin.readLineSync();
          print("Digite o valor da variável B:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            var A = valor1;
            var B = valor2;
            trocarValoresAB(A, B);
          } else {
            valorNulo();
          }
        }
        break;
      case 6:
        {
          print("Digite as dimensões de uma caixa retangular.");
          print("Digite o comprimento:");
          String? valor1 = stdin.readLineSync();
          print("Digite a largura:");
          String? valor2 = stdin.readLineSync();
          print("Digite a altura:");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            int comprimento = int.parse(valor1);
            int largura = int.parse(valor2);
            int altura = int.parse(valor3);
            print("O volume da caixa retangular é ${calcularVolumeCaixa(comprimento, largura, altura)} m³.");
          } else {
            valorNulo();
          }
        }
        break;
      case 7:
        {
          print("Digite o valor da variável A:");
          String? valor1 = stdin.readLineSync();
          print("Digite o valor da variável B:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            int A = int.parse(valor1);
            int B = int.parse(valor2);
            print("O resultado de (A - B)² é ${calcularQuadradoDiferenca(A, B)}.");
          } else {
            valorNulo();
          }
        }
        break;
      case 8:
        {
          print("Digite o valor em dólares:");
          String? valor1 = stdin.readLineSync();
          print("Digite o valor da cotação do dólar:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            double dolares = double.parse(valor1);
            double cotacao = double.parse(valor2);
            print("${converterDecimal(dolares)} dólares são ${converterDecimal(calcularConversaoDolar(dolares, cotacao))} reais.");
          } else {
            valorNulo();
          }
        }
        break;
      case 9:
        {
          print("Digite o valor da variável A:");
          String? valor1 = stdin.readLineSync();
          print("Digite o valor da variável B:");
          String? valor2 = stdin.readLineSync();
          print("Digite o valor da variável C:");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            int A = int.parse(valor1);
            int B = int.parse(valor2);
            int C = int.parse(valor3);
            print("O resultado de (A + B + C)² é ${calcularQuadradoSoma(A, B, C)}.");
          } else {
            valorNulo();
          }
        }
        break;
      case 10:
        {
          print("Digite o valor da variável A:");
          String? valor1 = stdin.readLineSync();
          print("Digite o valor da variável B:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            num A = num.parse(valor1);
            num B = num.parse(valor2);
            calcularOperacoesBasicas(A, B);
          } else {
            valorNulo();
          }
        }
        break;
      case 11:
        {
          print("Digite o raio da esfera:");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            num raio = num.parse(valor);
            print("O volume da esfera é ${calcularVolumeEsfera(raio).toStringAsFixed(2)} cm³.");
          } else {
            valorNulo();
          }
        }
        break;
      case 12:
        {
          print("Digite um número:");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            int numero = int.parse(valor);
            calcularSucessorAntecessor(numero);
          } else {
            valorNulo();
          }
        }
        break;
      case 13:
        {
          print("Qual é a velocidade do carro?");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            int velocidade = int.parse(valor);
            calcularMulta(velocidade);
          } else {
            valorNulo();
          }
        }
        break;
      case 14:
        {
          print("Qual é o ano do seu nascimento?");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            int anoDeNascimento = int.parse(valor);
            calcularIdadeVoto(anoDeNascimento);
          } else {
            valorNulo();
          }
        }
        break;
      case 15:
        {
          print("Qual é o seu nome?");
          String? valor = stdin.readLineSync();
          print("Digite a sua primeira nota:");
          String? valor1 = stdin.readLineSync();
          print("Digite a sua segunda nota:");
          String? valor2 = stdin.readLineSync();
          if ((valor != null) && (valor1 != null) && (valor2 != null)) {
            String nome = valor.toString();
            double nota1 = double.parse(valor1);
            double nota2 = double.parse(valor2);
            calcularMedia(nome, nota1, nota2);
          } else {
            valorNulo();
          }
        }
        break;
      case 16:
        {
          print("Digite um número:");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            int numero = int.parse(valor);
            verificarParidade(numero);
          } else {
            valorNulo();
          }
        }
        break;
      case 17:
        {
          print("Qual é o ano do seu nascimento?");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            int anoDeNascimento = int.parse(valor);
            verificarAlistamentoMilitar(anoDeNascimento);
          } else {
            valorNulo();
          }
        }
        break;
      case 18:
        {
          print("Qual é o seu nome?");
          String? valor1 = stdin.readLineSync();
          print("Qual é o seu sexo? Digite o número correspondente:"
                "\n1: feminino"
                "\n2: masculino");
          String? valor2 = stdin.readLineSync();
          print("Qual foi o valor das suas compras?");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            String nome = valor1.toString();
            int sexo = int.parse(valor2);
            double valorCompras = double.parse(valor3);
            calcularDesconto(nome, sexo, valorCompras);
          } else {
            valorNulo();
          }
        }
        break;
      case 19:
        {
          print("Qual é a distância que você dejesa percorrer?");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            int distancia = int.parse(valor);
            print("O preço da sua passagem é ${converterDecimal(calcularPrecoPassagem(distancia))} reais.");
          } else {
            valorNulo();
          }
        }
        break;
      case 20:
        {
          
        }
        break;
      case 21:
        {
          print("Digite a sua primeira nota:");
          String? valor1 = stdin.readLineSync();
          print("Digite a sua segunda nota:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            double nota1 = double.parse(valor1);
            double nota2 = double.parse(valor2);
            calcularMediaAluno(nota1, nota2);
          } else {
            valorNulo();
          }
        }
        break;
      case 22:
        {
          print("Digite as dimensões do terreno."
                "\nDigite a largura:");
          String? valor1 = stdin.readLineSync();
          print("Digite o comprimento:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            int largura = int.parse(valor1);
            int comprimento = int.parse(valor2);
            calcularArea(largura, comprimento);
          } else {
            valorNulo();
          }
        }
        break;
      case 23:
        {
          print("Qual é o nome do funcionário?");
          String? valor1 = stdin.readLineSync();
          print("Qual é o salário do funcionário?");
          String? valor2 = stdin.readLineSync();
          print("Há quantos anos ele trabalha na empresa?");
          String? valor3 = stdin.readLineSync();
          if((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            String nome = valor1.toString();
            double salario = double.parse(valor2);
            int anos = int.parse(valor3);
            print("O novo salário de $nome é ${converterDecimal(calcularNovoSalario(salario, anos))} reais.");
          } else {
            valorNulo();
          }
        }
        break;
      case 24:
        {
          print("Digite o número correspondente a sua escolha:"
                "\n0: pedra"
                "\n1: papel"
                "\n2: tesoura");
          String? valor = stdin.readLineSync();
          if(valor != null) {
            int jogador = int.parse(valor);
            jogarJoKenPo(jogador);
          } else {
            valorNulo();
          }
        }
        break;
      case 25:
        {
          print("Qual é o valor da casa?");
          String? valor1 = stdin.readLineSync();
          print("Qual é o seu salárior?");
          String? valor2 = stdin.readLineSync();
          print("Em quantos anos você vai pagar?");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            double precoCasa = double.parse(valor1);
            double salario = double.parse(valor2);
            int anos = int.parse(valor3);
            calcularEmprestimo(precoCasa, salario, anos);
          } else {
            valorNulo();
          }
        }
        break;
      case 26:
        {
          print("Digite a sua altura:");
          String? valor1 = stdin.readLineSync();
          print("Digite o seu peso:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            double altura = double.parse(valor1);
            double peso = double.parse(valor2);
            calcularIMC(altura, peso);
          } else {
            valorNulo();
          }
        }
        break;
      case 27:
        {
          print("Qual foi o tipo do carro alugado? Digite o número correspondente:"
                "\n1: popular"
                "\n2: luxo");
          String? valor1 = stdin.readLineSync();
          print("Qual foi a quantidade de dias do aluguel?");
          String? valor2 = stdin.readLineSync();
          print("Quantos quilometros foram percorridos?");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            int tipoCarro = int.parse(valor1);
            int diasAluguel = int.parse(valor2);
            int quilometros = int.parse(valor3);
            print("O preço a ser pago é ${converterDecimal(calcularAluguelCarro(tipoCarro, diasAluguel, quilometros))} reais.");
          } else {
            valorNulo();
          }
        }
        break;
      case 28:
        {
          print("Quantas horas de atividades você fez nesse mês?");
          String? valor =stdin.readLineSync();
          if(valor != null) {
            int horasAtividades = int.parse(valor);
            calcularPontos(horasAtividades);
          } else {
            valorNulo();
          }
        }
        break;
      case 29:
        {
          print("Qual é o salário atual desse funcionário?");
          String? valor1 = stdin.readLineSync();
          print("Qual o gênero desse funcionário? Digite o número correspondente:"
                "\n1: feminino"
                "\n2: masculino");
          String? valor2 = stdin.readLineSync();
          print("Há quantos anos esse funcionário trabalha na empresa?");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            double salario = double.parse(valor1);
            int genero = int.parse(valor2);
            int anosTrabalho = int.parse(valor3);
            print("O novo salário desse funcionário é ${converterDecimal(calcularReajusteSalario(salario, genero, anosTrabalho))} reais.");
          } else {
            valorNulo();
          }
        }
        break;
      case 30:
        {
          print("Contagem regressiva de 30 até 1.");
          realizarContagemRegressiva();
        }
        break;
      case 31:
        {
          print("O resultado da soma da expressão 6 + 8 + 10 + 12 + 14 + ... + 98 + 100 é ${calcularSoma()}.");
        }
        break;
      case 32:
        {
          print("O resultado da soma da expressão 500 + 450 + 400 +350 + 300 + ... + 50 + 0 é ${calcularExpressao()}.");
        }
        break;
      case 33:
        {
          print("Digite um vetor de 6 posições: (Obs: um número por linha)");
          verificarVetor();
        }
        break;
      case 34:
        {
          sorteioNumerico();
        }
        break;
      case 35:
        {
          print("Digite os preços de oito produtos: (Obs: um preço por linha)");
          listarPreco();
        }
        break;
      case 36:
        {
          print("Digite a idade de 10 pessoas: (Obs: uma idade por linha)");
          verificarVetorIdade();
        }
        break;
      case 37:
        {
          calcularVetorIdadeSexo();
        }
        break;
      case 38:
        {
          print("Digite 10 números para um vetor: (Obs: um número por linha)");
          verificarPosicaoParVetor();
        }
        break;
      case 39:
        {
          print("Os números sorteados foram: ${sortearNumeros()}");
        }
        break;
      case 40:
        {
          print("Digite a idade de 8 pessoas: (Obs: uma idade por linha)");
          lerVetorIdades();
        }
        break;
      case 41:
        {
          print("Digite as notas de 10 alunos: (Obs: uma nota por linha)");
          lerVetorNotas();
        }
        break;
      case 42:
        {
          preencherVetorAleatorio();
        }
        break;
      case 43:
        {
          print("Digite o nome e a idade de nove pessoas: (Obs: uma informação em cada linha, primeiro o nome e depois a idade)");
          lerDoisVetores();
        }
        break;
      case 44:
        {
          lerTresVetores();
        }
        break;
      default:
        print("Opção Inválida.");
    }
  } while (op != 0);
}