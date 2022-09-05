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

/*
11 Elaborar um programa de computador que calcule e apresente o valor do volume
de uma esfera. Utilize a fórmula VOLUME <- (4 / 3) * 3.14159 * (RAIO3).
12 Construir um programa que leia um valor numérico inteiro e apresente como
resultado os seus valores: sucessor e antecessor.
13 Escreva um programa que pergunte a velocidade de um carro. Caso ultrapasse
80Km/h, exiba uma mensagem dizendo que o usuário foi multado. Nesse caso,
exiba o valor da multa, cobrando R$5 por cada Km acima da velocidade permitida.
14 Faça um programa que leia o ano de nascimento de uma pessoa, calcule a idade
dela e depois mostre se ela pode ou não votar.
15 Crie um algoritmo que leia o nome e as duas notas de um aluno, calcule a sua
média e mostre na tela. No final, analise a média e mostre se o aluno teve ou não
um bom aproveitamento (se ficou acima da média 7.0).
16 Desenvolva um programa que leia um número inteiro e mostre se ele é PAR ou
ÍMPAR.
17 Escreva um programa que leia o ano de nascimento de um rapaz e mostre a sua
situação em relação ao alistamento militar. - Se estiver antes dos 18 anos, mostre
em quantos anos faltam para o alistamento. - Se já tiver depois dos 18 anos,
mostre quantos anos já se passaram do alistamento.
18 Numa promoção exclusiva para o Dia da Mulher, uma loja quer dar descontos
para todos, mas especialmente para mulheres. Faça um programa que leia nome,
sexo e o valor das compras do cliente e calcule o preço com desconto. Sabendo
que: - Homens ganham 5% de desconto - Mulheres ganham 13% de desconto
19 Faça uma aplicação que pergunte a distância que um passageiro deseja
percorrer em Km. Calcule o preço da passagem, cobrando R$0.50 por Km para
viagens até 200Km e R$0.45 para viagens mais longas.
20 Escreva um aplicativo que leia na tela uma das mensagens abaixo: segmentos
formarem um triângulo, o comprimento soma dos outros dois. dois números
inteiros e compare-os, mostrando - O primeiro valor é o maior - O segundo valor é
o maior - Não existe valor maior, os dois são iguais
21 Crie um programa que leia duas notas de um aluno e calcule a sua média,
mostrando uma mensagem no final, de acordo com a média atingida: - Média até
4.9: REPROVADO - Média entre 5.0 e 6.9: RECUPERAÇÃO - Média 7.0 ou
superior: APROVADO
22 Faça um programa que leia a largura e o comprimento de um terreno retangular,
calculando e mostrando a sua área em m2. O programa também devemostrar a
classificação desse terreno, de acordo com a lista abaixo: - Abaixo de 100m² =
TERRENO POPULAR - Entre 100m² e 500m² = TERRENO MASTER - Acima de
500m² = TERRENO VIP
23 Desenvolva um programa que leia o nome de um funcionário, seu salário,
quantos anos ele trabalha na empresa e mostre seu novo salário, reajustado de
acordo com a tabela a seguir: - Até 3 anos de empresa: aumento de 3% - entre 3
e 10 anos: aumento de 12.5- 10 anos ou mais: aumento de 20%

25 Escreva um programa para aprovar ou não o empréstimo bancário para a compra
de uma casa. O programa vai perguntar o valor da casa, o salário do comprador e
em quantos anos ele vai pagar. Calcule o valor da prestação mensal, sabendo
que ela não pode exceder 30% do salário ou então o empréstimo será negado.
26 O Índice de Massa Corpórea (IMC) é um valor calculado baseado na altura e no
peso de uma pessoa. De acordo com o valor do IMC, podemos classificar o
indivíduo dentro de certas faixas.
abaixo de 18.5: Abaixo do peso
entre 18.5 e 25: Peso ideal
entre 25 e 30: Sobrepeso
entre 30 e 40: Obesidade
acima de 40: Obesidade mórbida
Obs: O IMC é calculado pela expressão peso/altura2 (peso dividido pelo quadrado da
altura)
27 Uma empresa de aluguel de carros precisa cobrar pelos seus serviços. O aluguel
de um carro custa R$90 por dia para carro popular e R$150 por dia para carro de
luxo. Além disso, o cliente paga por Km percorrido. Faça um programa que leia o
tipo de carro alugado (popular ou luxo), quantos dias de aluguel e quantos Km
foram percorridos. No final mostre o preço a ser pago de acordo com a tabela a
seguir:
Carros populares (aluguel de R$90 por dia)
Até 100Km percorridos: R$0,20 por Km
Acima de 100Km percorridos: R$0,10 por Km
Carros de luxo (aluguel de R$150 por dia)
Até 200Km percorridos: R$0,30 por Km
Acima de 200Km percorridos: R$0,25 por Km
28 Um programa de vida saudável quer dar pontos atividades físicas que podem ser
trocados por dinheiro. O sistema funciona assim:
Cada hora de atividade física no mês vale pontos
até 10h de atividade no mês: ganha 2 pontos por hora
de 10h até 20h de atividade no mês: ganha 5 pontos por hora
acima de 20h de atividade no mês: ganha 10 pontos por hora
A cada ponto ganho, o cliente fatura R$0,05 (5 centavos)
Faça um programa que leia quantas horas de atividade uma pessoa teve por mês,
calcule e mostre quantos pontos ela teve e quanto dinheiro ela conseguiu ganhar.
29 Uma empresa precisa reajustar o salário dos seus funcionários, dando um
aumento de acordo com alguns fatores. Faça um programa que leia o salário
atual, o gênero do funcionário e há quantos anos esse funcionário trabalha na
empresa. No final, mostre o seu novo salário, baseado na tabela a seguir:
Mulheres
menos de 15 anos de empresa: +5%
de 15 até 20 anos de empresa: +12%
mais de 20 anos de empresa: +23%
Homens
menos de 20 anos de empresa: +3%
de 20 até 30 anos de empresa: +13%
mais de 30 anos de empresa: +25%
30 Desenvolva um algoritmo que mostre uma contagem regressiva de 30 até 1,
marcando os números que forem divisíveis por 4, exatamente como mostrado
abaixo: 30 29 [28] 27 26 25 [24] 23 22 21 [20] 19 18 17 [16]...
31 Crie um programa que calcule e mostre na tela o resultado da soma entre 6 + 8 +
10 + 12 + 14 + ... + 98 + 100.
32 Desenvolva um aplicativo que mostre na tela o resultado da expressão 500 + 450
+ 400 +350 + 300 + ... + 50 + 0
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

// Exercício 11
num calcularVolumeEsfera(double raio, double pi) {
  return (4.00 / 3.00) * pi * pow(raio, 3);
}

// Exercício 12
void calcularSucessorAntecessor(int numero) {
  int sucessor = numero + 1;
  int antecessor = numero - 1;
  print("O sucessor do número $numero é: $sucessor"
        "\nO antecessor do número $numero é: $antecessor");
}

// Exercício 13
void calcularMulta(int velocidade) {
  int velocidadeMaxima = 80;
  if (velocidade > 80) {
    int multa = (velocidade - velocidadeMaxima) * 5;
    print("Você foi multado em $multa reais.");
  } else {
    print("Você não foi multado.");
  }
}

// Exercício 14
void calcularIdadeVoto(int anoNascimento) {
  int idade = 2022 - anoNascimento;
  if (idade > 18) {
    print("Você já pode votar.");
  } else {
    print("Você não pode votar.");
  }
}

// Exercício 15
void calcularMedia(String nome, double nota1, double nota2) {
  double media = (nota1 + nota2) / 2.00;
  print("A média desse aluno é: $media");
  if (media > 7.0) {
    print("$nome teve um bom aproveitamento.");
  } else {
    print("$nome não teve um bom aproveitamento.");
  }
}

// Exercício 16
void verificarParImpar(int numero) {
  if (numero % 2 == 0) {
    print("Esse número é par.");
  } else {
    print("Esse número é ímpar.");
  }
}

// Exercício 17
void verificarAlistamentoMilitar(int anoNascimento) {
  int idade = 2022 - anoNascimento;
  int idadeAlistamento = 18;
  if (idade < 18) {
    idadeAlistamento -= idade;
    print("Ainda faltam $idadeAlistamento anos para o alistamento.");
  } else {
    idadeAlistamento = idade - idadeAlistamento;
    print("Já se passaram $idadeAlistamento anos do alistamento.");
  }
}

// Exercício 18
void calcularDesconto(String nome, int sexo, double valorCompras) {
  double desconto = 0.00;
  if (sexo == 1) {
    desconto = valorCompras - (valorCompras * 13.00) / 100.00;
    print("O preço das compras com desconto para a cliente $nome é de: ${converterDecimal(desconto)} reais.");
  } else {
    desconto = valorCompras - (valorCompras * 5.00) / 100.00;
    print("O preço das compras com desconto para o cliente $nome é de: ${converterDecimal(desconto)} reais.");
  }
}

// Exercício 19
double calcularPrecoPassagem(int distancia) {
  double precoPassagem = 0.00;
  if (distancia < 200) {
    precoPassagem = distancia * 0.50;
  } else {
    precoPassagem = distancia * 0.45;
  }
  return precoPassagem;
}

// Exercício 20

// Exercício 21
void calcularMediaAluno(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2.00;
  if ((media >= 0.0) && (media <= 4.9)) {
    print("Reprovado");
  } else if ((media >= 5.0) && (media <= 6.9)) {
    print("Recuperação.");
  } else if ((media >= 7.0) && (media <= 10.0)) {
    print("Aprovado.");
  } else {
    print("Nota inválida.");
  }
}

// Exercício 22
void calcularArea(int largura, int comprimento) {
  int area = largura * comprimento;
  print("A área desse terreno é $area m².");
  if ((area > 0) && (area < 100)) {
    print("Terreno Popular.");
  } else if ((area >= 100) && (area < 500)) {
    print("Terreno Master.");
  } else if (area >= 500) {
    print("Terreno VIP.");
  } else {
    print("Área inválida.");
  }
}

// Exercício 23
double calcularNovoSalario(double salario, int anos) {
  double novoSalario = 0.00;
  if ((anos >= 0) && (anos < 3)) {
    num percentual = 3.00;
    novoSalario = calcularSalario(salario, percentual);
  } else if ((anos >= 3) && (anos < 10)) {
    num percentual = 12.50;
    novoSalario = calcularSalario(salario, percentual);
  } else if (salario >= 10) {
    num percentual = 20.00;
    novoSalario = calcularSalario(salario, percentual);
  }
  return novoSalario;
}

// Exercício 24
void jogarJoKenPo(num jogador) {
  Random random = Random();
  int computador = random.nextInt(3);
  print("$computador");
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

// Exercício 25
void calcularEmprestimo(double precoCasa, double salario, int anos) {
  double parcela = precoCasa / anos / 12;
  double porcentagemSalario = (parcela * 100) / 1000.00;
  if (porcentagemSalario <= 30.0) {
    print("Seu empréstimo foi aprovado.");
  } else {
    print("Seu empréstimo foi negado.");
  }
}

// Exercício 26
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
  } else {
    print("Você está com Obesidade mórbida.");
  }
}

// Exercício 27
double calcularAluguelCarro(int tipoCarro, int diasAluguel, int quilometros) {
  double precoAluguel = 0.00;
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

// Exercício 28
void calcularPontos(int horasAtividades) {
  int pontos = 0;
  if (horasAtividades < 10) {
    pontos = horasAtividades * 2;
  } else if ((horasAtividades >= 10) && (horasAtividades <= 20)) {
    pontos = horasAtividades * 5;
  } else {
    pontos = horasAtividades * 10;
  }
  double faturou = pontos * 0.05;
  print("Você fez $pontos pontos e ganhou ${converterDecimal(faturou)} reais.");
}

// Exercício 29
double calcularReajusteSalario(double salario, int genero, int anosTrabalho) {
  double salarioRejustado = 0.00;
  num percentual = 0;
  switch (genero) {
    case 1:
      if (anosTrabalho < 15) {
        percentual = 5;
        salarioRejustado = calcularSalario(salario, percentual);
      } else if ((anosTrabalho >= 15) && (anosTrabalho <= 20)) {
        percentual = 12;
        salarioRejustado = calcularSalario(salario, percentual);
      } else {
        percentual = 23;
        salarioRejustado = calcularSalario(salario, percentual);
      }
      break;
    case 2:
      if (anosTrabalho < 20) {
        percentual = 3;
        salarioRejustado = calcularSalario(salario, percentual);
      } else if ((anosTrabalho >= 20) && (anosTrabalho <= 30)) {
        percentual = 13;
        salarioRejustado = calcularSalario(salario, percentual);
      } else {
        percentual = 25;
        salarioRejustado = calcularSalario(salario, percentual);
      }
      break;
    default:
      print("Informação Inválida.");
  }
  return salarioRejustado;
}

// Exercício 30
void realizarContagemRegressiva() {
  for (int i = 30; i >= 1; i--) {
    if (i % 4 == 0) {
      print("[$i]");
    } else {
      print("$i");
    }
  }
}

// Exercício 31
int calcularSoma() {
  int soma = 0;
  for (int i = 6; i <= 100; i += 2) {
    soma = soma + i;
  }
  return soma;
}

// Exercício 32
int calcularExpressao() {
  int soma = 0;
  for (int i = 500; i >= 0; i -= 50) {
    soma = soma + i;
  }
  return soma;
}

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
  double menorPreco = 1000000;
  double maiorPreco = 0.0;
  for (int i = 0; i < 8; i++) {
    if (menorPreco > lista[i]) {
      menorPreco = lista[i];
    } else if (maiorPreco < lista[i]) {
      maiorPreco = lista[i];
    }
  }
  print("O maior preço é ${converterDecimal(maiorPreco)} reais e o menor preço é ${converterDecimal(menorPreco)} reais.");
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

void retornoNulo() {
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
            print("O salário não pode ser nulo.");
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
            retornoNulo();
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
            retornoNulo();
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
            retornoNulo();
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
            retornoNulo();
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
            retornoNulo();
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
            retornoNulo();
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
            retornoNulo();
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
            retornoNulo();
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
            retornoNulo();
          }
        }
        break;
      case 11:
        {
          print("Informe o raio da esfera:");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            double raio = double.parse(valor);
            double pi = 3.14159;
            print("O volume da esfera é ${calcularVolumeEsfera(raio, pi)}");
          } else {
            print("O valor do raio não pode ser nulo.");
          }
        }
        break;
      case 12:
        {
          print("Informe um valor qualquer:");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            int numero = int.parse(valor);
            calcularSucessorAntecessor(numero);
          } else {
            print("O valor não pode ser nulo.");
          }
        }
        break;
      case 13:
        {
          print("Informe a velocidade do carro:");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            int velocidade = int.parse(valor);
            calcularMulta(velocidade);
          } else {
            print("A velocidade não pode ser nula.");
          }
        }
        break;
      case 14:
        {
          print("Informe o ano de nascimento de uma pessoa:");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            int anoNascimento = int.parse(valor);
            calcularIdadeVoto(anoNascimento);
          } else {
            print("O ano de nascimento não pode ser nulo.");
          }
        }
        break;
      case 15:
        {
          print("Informe o nome do aluno:");
          String? valor1 = stdin.readLineSync();
          print("Informe a primeira nota desse aluno:");
          String? valor2 = stdin.readLineSync();
          print("Informe a segunda nota desse aluno:");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            String nome = valor1;
            double nota1 = double.parse(valor2);
            double nota2 = double.parse(valor3);
            calcularMedia(nome, nota1, nota2);
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 16:
        {
          print("Informe um número inteiro:");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            int numero = int.parse(valor);
            verificarParImpar(numero);
          } else {
            print("O número não pode ser nulo.");
          }
        }
        break;
      case 17:
        {
          print("Informe o ano de nascimento de um rapaz:");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            int anoNascimento = int.parse(valor);
            verificarAlistamentoMilitar(anoNascimento);
          } else {
            print("O ano de nascimento não pode ser nulo.");
          }
        }
        break;
      case 18:
        {
          print("Informe o nome do cliente:");
          String? valor1 = stdin.readLineSync();
          print("Informe o sexo do cliente (1 - feminino, 2 - masculino):");
          String? valor2 = stdin.readLineSync();
          print("Informe o valor das compras do cliente:");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            String nome = valor1;
            int sexo = int.parse(valor2);
            double valorCompras = double.parse(valor3);
            calcularDesconto(nome, sexo, valorCompras);
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 19:
        {
          print("Informe a distância que o passageiro dejesa percorrer em km.");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            int distancia = int.parse(valor);
            print("O preço da passagem é ${converterDecimal(calcularPrecoPassagem(distancia))} reais.");
          } else {
            print("A distância não pode ser nula.");
          }
        }
        break;
      case 20:
        {
          
        }
        break;
      case 21:
        {
          print("Informe a primeira nota do aluno:");
          String? valor1 = stdin.readLineSync();
          print("Informe a segunda nota do aluno:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            double nota1 = double.parse(valor1);
            double nota2 = double.parse(valor2);
            calcularMediaAluno(nota1, nota2);
          } else {
            print("Nenhuma das notas pode ser nula.");
          }
        }
        break;
      case 22:
        {
          print("Informe a largura do terreno retangular:");
          String? valor1 = stdin.readLineSync();
          print("Informe o comprimento do terreno retangular:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            int largura = int.parse(valor1);
            int comprimento = int.parse(valor2);
            calcularArea(largura, comprimento);
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 23:
        {
          print("Informe o nome do funcionário:");
          String? valor1 = stdin.readLineSync();
          print("Informe o salário do funcionário:");
          String? valor2 = stdin.readLineSync();
          print("Informe a quantos anos ele trabalha na empresa:");
          String? valor3 = stdin.readLineSync();
          if((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            String nome = valor1;
            double salario = double.parse(valor2);
            int anos = int.parse(valor3);
            print("O novo salário de $nome é ${converterDecimal(calcularNovoSalario(salario, anos))} reais.");
          } else {
            print("Nenhumas das informações pode ser nula.");
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
            retornoNulo();
          }
        }
        break;
      case 25:
        {
          print("Qual o valor da casa?");
          String? valor1 = stdin.readLineSync();
          print("Qual o salário do comprador?");
          String? valor2 = stdin.readLineSync();
          print("Em quantos anos o comprador vai pagar?");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            double precoCasa = double.parse(valor1);
            double salario = double.parse(valor2);
            int anos = int.parse(valor3);
            calcularEmprestimo(precoCasa, salario, anos);
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 26:
        {
          print("Informe a sua altura:");
          String? valor1 = stdin.readLineSync();
          print("Informe a seu peso:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            double altura = double.parse(valor1);
            double peso = double.parse(valor2);
            calcularIMC(altura, peso);
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 27:
        {
          print("Qual é o tipo do carro alugado? (1: popular, 2: luxo)");
          String? valor1 = stdin.readLineSync();
          print("Qual a quantidade de dias do aluguel?");
          String? valor2 = stdin.readLineSync();
          print("Quantos quilometros foram percorridos?");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            int tipoCarro = int.parse(valor1);
            int diasAluguel = int.parse(valor2);
            int quilometros = int.parse(valor3);
            print("O preço a ser pago é ${converterDecimal(calcularAluguelCarro(tipoCarro, diasAluguel, quilometros))} reais.");
          } else {
            print("Nenhuma das informações pode ser nula.");
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
            print("A quantidade de horas não pode ser nula.");
          }
        }
        break;
      case 29:
        {
          print("Qual o salário atual desse funcionário?");
          String? valor1 = stdin.readLineSync();
          print("Qual o gênero desse funcionário? 1 - feminino, 2 - masculino.");
          String? valor2 = stdin.readLineSync();
          print("Há quantos anos esse funcionário trabalha na empresa?");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            double salario = double.parse(valor1);
            int genero = int.parse(valor2);
            int anosTrabalho = int.parse(valor3);
            print("O novo salário desse funcionário é ${converterDecimal(calcularReajusteSalario(salario, genero, anosTrabalho))} reais.");
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 30:
        {
         realizarContagemRegressiva();
        }
        break;
      case 31:
        {
          print("O resultado da soma é ${calcularSoma()}.");
        }
        break;
      case 32:
        {
          print("O resultado da soma da expressão é ${calcularExpressao()}.");
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