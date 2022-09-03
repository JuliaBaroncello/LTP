import 'dart:io';
import 'dart:math';
import 'dart:core';

/*
Lista de Exercícios:
Utilizando a segurança nula, resolva os exercícios utilizando como motivação a
linguagem de programação Dart.
*/

String converterDecimal(double valor) {
  return valor.toStringAsFixed(2);
}

// Exercício 1
/*
O proprietário da empresa ABC LTDA precisa de um programa de computador
para calcular o novo salário que seus funcionários irão receber a partir do mês
que vem. Sabendo que o aumento de salário para todos os funcionários será de
25%, faça um programa que lê o valor do salário atual do funcionário e informa o
seu novo salário acrescido de 25%.
*/
double calcularSalarioEmpresaABC(double salario) {
  return salario + (salario * 25.00) / 100.00;
}

// Exercício 2
/*
Um dos sócios da empresa XYZ LTDA ficou sabendo que você desenvolveu um
programa de reajuste salarial para a empresa ABC LTDA e pediu que você
desenvolva um programa similar. Na verdade ele está pedindo que você
acrescente ao programa anterior à possibilidade dele informar não somente o
salário atual do funcionário, mas também o valor percentual que deve ser
incrementado para aquele funcionário, pois ele irá aplicar valores percentuais
diferentes a cada funcionário.
*/
double calcularSalarioEmpresaXYZ(double salario, num percentual) {
  return salario + (salario * percentual) / 100.00;
}

// Exercício 3
/*
Crie um programa que lê o ano de nascimento de uma pessoa e o ano atual.
Calcule e mostre qual é: a idade da pessoa em anos, a idade da pessoa em
meses, a idade da pessoa em dias e a idade da pessoa em semanas.
*/
void calcularIdade(int anoNascimento, int anoAtual) {
  int idade = anoAtual - anoNascimento;
  int idadeMeses = idade * 12;
  int idadeSemanas = idade * 52;
  int idadeDias = idade * 365;
  print("A idade dessa pessoa em anos é: $idade anos.");
  print("A idade dessa pessoa em meses é: $idadeMeses meses.");
  print("A idade dessa pessoa em dias é: $idadeDias dias.");
  print("A idade dessa pessoa em semanas é: $idadeSemanas semanas.");
}

// Exercício 4
/*
Pedro comprou um saco de ração com peso em quilos. Ele possui dois gatos,
para os quais fornece a quantidade de ração em gramas. A quantidade diária de
ração fornecida para cada gato é sempre a mesma. Faça um programa que
receba o peso do saco de ração e a quantidade de ração fornecida para cada
gato, calcule e mostre quanto restará de ração no saco após cinco dias.
*/
double calcularRestoRacao(double pesoSacoRacao, double quantidadeRacaoGato1, double quantidadeRacaoGato2) {
  return ((pesoSacoRacao * 1000.00) - (quantidadeRacaoGato1 * 5) - (quantidadeRacaoGato2 * 5)) / 1000.00;
}

// Exercício 5
/*
Ler dois valores para as variáveis A e B e efetuar a troca dos valores de forma
que a variável A passe a possuir o valor da variável B e a variável B passe a
possuir o valor da variável A. Apresentar os valores após a efetivação do
processamento da troca.
*/
num calcularVolumeCaixa(num comprimento, num largura, num altura) {
  return comprimento * largura * altura;
}

// Exercício 6
/*
Elaborar um programa que calcule e apresente o valor do volume de uma caixa
retangular, utilizando a fórmula VOLUME <- COMPRIMENTO * LARGURA * ALTURA.
*/
void efetuarTrocaAB(num A, num B) {
  num aux = A;
  A = B;
  B = aux;
  print("Valor das variáveis após a troca é: A = $A e B = $B");
}

// Exercício 7
/*
Ler dois valores numéricos inteiros (representados pelas variáveis A e B) e
apresentar o resultado do quadrado da diferença do primeiro valor (variável A) em
relação ao segundo valor (variável B).
*/
num calcularQuadradoDiferenca(int A, int B) {
  return pow((A - B), 2);
}

// Exercício 8
/*
Elaborar um programa que apresente o valor da conversão em real (R$) de um
valor lido em dólar (US$). O programa deve solicitar o valor da cotação do dólar.
*/
double calcularConvercaoDolarReal(double dolares, double cotacao) {
  return dolares * cotacao;
}

// Exercício 9
/*
Construir um programa que leia três valores numéricos inteiros (representados
pelas variáveis A, B e C) e apresente como resultado final o valor do quadrado da
soma dos três valores lidos.
*/
num calcularQuadradoSoma(int A, int B, int C) {
  return pow((A + B + C), 2);
}

// Exercício 10
/*
Elaborar um programa que leia dois valores numéricos reais desconhecidos
representados pelas variáveis A e B. Calcular e apresentar os resultados das
quatro operações aritméticas básicas (soma, subtração, divisão e multiplicação).
*/
void calcularOperacoesBasicas(num A, num B) {
  num soma = A + B;
  num subtracao = A - B;
  num divisao = A / B;
  num multiplicacao = A * B;
  print("O resultado da soma entre A e B é: $soma");
  print("O resultado da subtracao entre A e B é: $subtracao");
  print("O resultado da divisao de A por B é: $divisao");
  print("O resultado da multiplicacao de A por B é: $multiplicacao");
}

// Exercício 11
/*
Elaborar um programa de computador que calcule e apresente o valor do volume
de uma esfera. Utilize a fórmula VOLUME <- (4 / 3) * 3.14159 * (RAIO3).
*/
num calcularVolumeEsfera(double raio, double pi) {
  return (4.00 / 3.00) * pi * pow(raio, 3);
}

// Exercício 12
/*
Construir um programa que leia um valor numérico inteiro e apresente como
resultado os seus valores: sucessor e antecessor.
*/
void calcularSucessorAntecessor(int numero) {
  int sucessor = numero + 1;
  int antecessor = numero - 1;
  print("O sucessor do número $numero é: $sucessor");
  print("O antecessor do número $numero é: $antecessor");
}

// Exercício 13
/*
Escreva um programa que pergunte a velocidade de um carro. Caso ultrapasse
80Km/h, exiba uma mensagem dizendo que o usuário foi multado. Nesse caso,
exiba o valor da multa, cobrando R$5 por cada Km acima da velocidade permitida.
*/
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
/*
Faça um programa que leia o ano de nascimento de uma pessoa, calcule a idade
dela e depois mostre se ela pode ou não votar.
*/
void calcularIdadeVoto(int anoNascimento) {
  int idade = 2022 - anoNascimento;
  if (idade > 18) {
    print("Você já pode votar.");
  } else {
    print("Você não pode votar.");
  }
}

// Exercício 15
/*
Crie um algoritmo que leia o nome e as duas notas de um aluno, calcule a sua
média e mostre na tela. No final, analise a média e mostre se o aluno teve ou não
um bom aproveitamento (se ficou acima da média 7.0).
*/
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
/*
Desenvolva um programa que leia um número inteiro e mostre se ele é PAR ou
ÍMPAR.
*/
void verificarParImpar(int numero) {
  if (numero % 2 == 0) {
    print("Esse número é par.");
  } else {
    print("Esse número é ímpar.");
  }
}

// Exercício 17
/*
Escreva um programa que leia o ano de nascimento de um rapaz e mostre a sua
situação em relação ao alistamento militar. - Se estiver antes dos 18 anos, mostre
em quantos anos faltam para o alistamento. - Se já tiver depois dos 18 anos,
mostre quantos anos já se passaram do alistamento.
*/
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
/*
Numa promoção exclusiva para o Dia da Mulher, uma loja quer dar descontos
para todos, mas especialmente para mulheres. Faça um programa que leia nome,
sexo e o valor das compras do cliente e calcule o preço com desconto. Sabendo
que: - Homens ganham 5% de desconto - Mulheres ganham 13% de desconto
*/
void calcularDesconto(String nome, String sexo, double valorCompras) {
  double desconto = 0.00;
  if (sexo == "feminino") {
    desconto = valorCompras - (valorCompras * 13.00) / 100.00;
    print("O preço das compras com desconto para a cliente $nome é de: ${converterDecimal(desconto)} reais.");
  } else {
    desconto = valorCompras - (valorCompras * 5.00) / 100.00;
    print("O preço das compras com desconto para o cliente $nome é de: ${converterDecimal(desconto)} reais.");
  }
}

// Exercício 19
/*
Faça uma aplicação que pergunte a distância que um passageiro deseja
percorrer em Km. Calcule o preço da passagem, cobrando R$0.50 por Km para
viagens até 200Km e R$0.45 para viagens mais longas.
*/
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
/*
Escreva um aplicativo que leia na tela uma das mensagens abaixo: segmentos
formarem um triângulo, o comprimento soma dos outros dois. dois números
inteiros e compare-os, mostrando - O primeiro valor é o maior - O segundo valor é
o maior - Não existe valor maior, os dois são iguais
*/


// Exercício 21
/*
Crie um programa que leia duas notas de um aluno e calcule a sua média,
mostrando uma mensagem no final, de acordo com a média atingida: - Média até
4.9: REPROVADO - Média entre 5.0 e 6.9: RECUPERAÇÃO - Média 7.0 ou
superior: APROVADO
*/
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
/*
Faça um programa que leia a largura e o comprimento de um terreno retangular,
calculando e mostrando a sua área em m2. O programa também devemostrar a
classificação desse terreno, de acordo com a lista abaixo: - Abaixo de 100m² =
TERRENO POPULAR - Entre 100m² e 500m² = TERRENO MASTER - Acima de
500m² = TERRENO VIP
*/
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
/*
Desenvolva um programa que leia o nome de um funcionário, seu salário,
quantos anos ele trabalha na empresa e mostre seu novo salário, reajustado de
acordo com a tabela a seguir: - Até 3 anos de empresa: aumento de 3% - entre 3
e 10 anos: aumento de 12.5- 10 anos ou mais: aumento de 20%
*/
double calcularNovoSalario(double salario, int anos) {
  double novoSalario = 0.00;
  if ((anos >= 0) && (anos < 3)) {
    novoSalario = salario + (salario * 3.00) / 100.00;
  } else if ((anos >= 3) && (anos < 10)) {
    novoSalario = salario + (salario * 12.50) / 100.00;
  } else if (salario >= 10) {
    novoSalario = salario + (salario * 20.00) / 100.00;
  }
  return novoSalario;
}

// Exercício 24
/*
Crie um jogo de JoKenPo (Pedra-Papel-Tesoura)
*/


// Exercício 25
/*
Escreva um programa para aprovar ou não o empréstimo bancário para a compra
de uma casa. O programa vai perguntar o valor da casa, o salário do comprador e
em quantos anos ele vai pagar. Calcule o valor da prestação mensal, sabendo
que ela não pode exceder 30% do salário ou então o empréstimo será negado.
*/
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
/*
O Índice de Massa Corpórea (IMC) é um valor calculado baseado na altura e no
peso de uma pessoa. De acordo com o valor do IMC, podemos classificar o
indivíduo dentro de certas faixas.
abaixo de 18.5: Abaixo do peso
entre 18.5 e 25: Peso ideal
entre 25 e 30: Sobrepeso
entre 30 e 40: Obesidade
acima de 40: Obesidade mórbida
Obs: O IMC é calculado pela expressão peso/altura2 (peso dividido pelo quadrado da
altura)
*/
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
/*
Uma empresa de aluguel de carros precisa cobrar pelos seus serviços. O aluguel
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
*/
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
/*
Um programa de vida saudável quer dar pontos atividades físicas que podem ser
trocados por dinheiro. O sistema funciona assim:
Cada hora de atividade física no mês vale pontos
até 10h de atividade no mês: ganha 2 pontos por hora
de 10h até 20h de atividade no mês: ganha 5 pontos por hora
acima de 20h de atividade no mês: ganha 10 pontos por hora
A cada ponto ganho, o cliente fatura R$0,05 (5 centavos)
Faça um programa que leia quantas horas de atividade uma pessoa teve por mês,
calcule e mostre quantos pontos ela teve e quanto dinheiro ela conseguiu ganhar.
*/
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
/*
Uma empresa precisa reajustar o salário dos seus funcionários, dando um
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
*/
double calcularReajusteSalario(double salario, int genero, int anosTrabalho) {
  double salarioRejustado = 0.00;
  num percentual = 0;
  switch (genero) {
    case 1:
      if (anosTrabalho < 15) {
        percentual = 5;
        salarioRejustado = calcularSalarioEmpresaXYZ(salario, percentual);
      } else if ((anosTrabalho >= 15) && (anosTrabalho <= 20)) {
        percentual = 12;
        salarioRejustado = calcularSalarioEmpresaXYZ(salario, percentual);
      } else {
        percentual = 23;
        salarioRejustado = calcularSalarioEmpresaXYZ(salario, percentual);
      }
      break;
    case 2:
      if (anosTrabalho < 20) {
        percentual = 3;
        salarioRejustado = calcularSalarioEmpresaXYZ(salario, percentual);
      } else if ((anosTrabalho >= 20) && (anosTrabalho <= 30)) {
        percentual = 13;
        salarioRejustado = calcularSalarioEmpresaXYZ(salario, percentual);
      } else {
        percentual = 25;
        salarioRejustado = calcularSalarioEmpresaXYZ(salario, percentual);
      }
      break;
    default:
      print("Informação Inválida.");
  }
  return salarioRejustado;
}

// Exercício 30
/*
Desenvolva um algoritmo que mostre uma contagem regressiva de 30 até 1,
marcando os números que forem divisíveis por 4, exatamente como mostrado
abaixo: 30 29 [28] 27 26 25 [24] 23 22 21 [20] 19 18 17 [16]...
*/
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
/*
Crie um programa que calcule e mostre na tela o resultado da soma entre 6 + 8 +
10 + 12 + 14 + ... + 98 + 100.
*/
int calcularSoma() {
  int soma = 0;
  for (int i = 6; i <= 100; i += 2) {
    soma = soma + i;
  }
  return soma;
}

// Exercício 32
/*
Desenvolva um aplicativo que mostre na tela o resultado da expressão 500 + 450
+ 400 +350 + 300 + ... + 50 + 0
*/
int calcularExpressao() {
  int soma = 0;
  for (int i = 500; i >= 0; i -= 50) {
    soma = soma + i;
  }
  return soma;
}

// Exercício 33
/*
Desenvolva uma aplicação que leia 6 números em um vetor, e no final mostre
quantos deles são impares e quantos são pares. Imprima também os valores.
*/
List lerVetor(int posicoes) {
  List<int> lista = [];
  for (int i = 0; i < posicoes; i++) {
    String? valor = stdin.readLineSync();
    if (valor != null) {
      int numero = int.parse(valor);
      lista.add(numero);
    }
  }
  return lista;
}

void verificarImparParVetor(List lista, int posicoes) {
  int impar = 0;
  int par = 0;
  for (int i = 0; i < posicoes; i++) {
    if (lista[i] % 2 != 0) {
      impar = impar + 1;
    } else {
      par = par + 1;
    }
  }
  print("Esse vetor possui $impar números ímpares e $par números pares.");
}

// Exercício 34
/*
Desenvolva um programa que faça o sorteio de 20 números entre 0 e 10 e mostre
na tela:
Quais foram os números sorteados
Quantos números estão acima de 5
Quantos números são divisíveis por 3
*/

// Exercício 35
/*
Desenvolva uma aplicação que leia o preço de 8 produtos, e armazenem em uma
lista. No final, mostre na tela qual foi o maior e qual foi o menor preço informado.
*/

// Exercício 36
/*
Crie um algoritmo que leia a idade de 10 pessoas, mostrando no final:
Qual é a média de idade do grupo
Quantas pessoas tem mais de 18 anos
Quantas pessoas tem menos de 5 anos
Qual foi a maior idade lida
*/

// Exercício 37
/*
Faça uma aplicação que leia a idade e o sexo de 5 pessoas, mostre no final:
Quantos homens foram cadastrados
Quantas mulheres foram cadastradas
A média de idade do grupo
A média de idade dos homens
Quantas mulheres tem mais de 20 anos
*/

// Exercício 38
/*
Desenvolva um programa que leia 10 números inteiros e guarde-os em um vetor.
No final, mostre quais são os números pares que foram digitados e em que
posições eles estão armazenados.
*/

// Exercício 39
/*
Desenvolva um programa que faça o sorteio de 20 números entre 0 e 10 e mostre
na tela:
*/

// Exercício 40
/*
Crie um programa que leia a idade de 8 pessoas e guarde-as em um vetor. No
final, mostre:
Qual é a média de idade das pessoas cadastradas
Em quais posições temos pessoas com mais de 25 anos
Qual foi a maior idade digitada (podem haver repetições)
Em que posições digitamos a maior idade
*/

// Exercício 41
/*
Faça um algoritmo que leia a nota de 10 alunos de uma turma e guarde-as em
um vetor. No final, mostre:
Qual é a média da turma
Quantos alunos estão acima da média da turma
Qual foi a maior nota digitada
Em que posições a maior nota aparece
*/

// Exercício 42
/*
Crie uma lógica que preencha um vetor de 20 posições com números aleatórios
(entre 0 e 99) gerados pelo computador. Logo em seguida, mostre os números
gerados e depois coloque o vetor em ordem crescente, mostrando no final os
valores ordenados.
*/

// Exercício 43
/*
Crie um programa que leia o nome e a idade de 9 pessoas e guarde esses
valores em dois vetores, em posições relacionadas. No final, mostre uma
listagem contendo apenas os dados das pessoas menores de idade.
*/

// Exercício 44
/*
Faça um algoritmo que leia o nome, o sexo e o salário de 5 funcionários e guarde
esses dados em três vetores. No final, mostre uma listagem contendo apenas os
dados das funcionárias mulheres que ganham mais de R$5 mil.
*/

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
          print("Informe o salário do funcionário:");
          String? valor = stdin.readLineSync();
          if (valor != null) {
            double salario = double.parse(valor);
            print("O salário de ${converterDecimal(salario)} reais será reajustado para ${converterDecimal(calcularSalarioEmpresaABC(salario))} reais.");
          } else {
            print("O salário não pode ser nulo.");
          }
        }
        break;
      case 2:
        {
          print("Informe o sálario do funcionário:");
          String? valor1 = stdin.readLineSync();
          print("Informe o valor percentual que deve ser incrementado no salário deste funcionário:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            double salario = double.parse(valor1);
            num percentual = num.parse(valor2);
            print("O salário de ${converterDecimal(salario)} reais será reajustado para ${converterDecimal(calcularSalarioEmpresaXYZ(salario, percentual))} reais.");
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 3:
        {
          print("Informe o ano de nascimento de uma pessoa:");
          String? valor1 = stdin.readLineSync();
          print("Informe o ano atual:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            int anoNascimento = int.parse(valor1);
            int anoAtual = int.parse(valor2);
            calcularIdade(anoNascimento, anoAtual);
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 4:
        {
          print("Informe o peso do saco de ração (em quilos):");
          String? valor1 = stdin.readLineSync();
          print("Informe a quantidade de ração (em gramas) fornecida para o primeiro gato:");
          String? valor2 = stdin.readLineSync();
          print("Informe a quantidade de ração (em gramas) fornecida para o segundo gato:");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            double pesoSacoRacao = double.parse(valor1);
            double quantidadeRacaoGato1 = double.parse(valor2);
            double quantidadeRacaoGato2 = double.parse(valor3);
            print("A quantidade restante de ração após cinco dias é ${calcularRestoRacao(pesoSacoRacao, quantidadeRacaoGato1, quantidadeRacaoGato2)} kg.");
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 5:
        {
          print("Informe o valor da variável A:");
          String? valor1 = stdin.readLineSync();
          print("Informe o valor da variável B:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            num A = num.parse(valor1);
            num B = num.parse(valor2);
            efetuarTrocaAB(A, B);
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 6:
        {
          print("Informe as dimensões da caixa retangular em metros.");
          print("Informe o comprimento:");
          String? valor1 = stdin.readLineSync();
          print("Informe a largura:");
          String? valor2 = stdin.readLineSync();
          print("Informe a altura:");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            num comprimento = num.parse(valor1);
            num largura = num.parse(valor2);
            num altura = num.parse(valor3);
            print("O volume da caixa retangular é ${calcularVolumeCaixa(comprimento, largura, altura)} m³.");
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 7:
        {
          print("Informe o valor da variável A:");
          String? valor1 = stdin.readLineSync();
          print("Informe o valor da variável B:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            int A = int.parse(valor1);
            int B = int.parse(valor2);
            print("O valor do quadrado da diferença de A em relação a B é ${calcularQuadradoDiferenca(A, B)}");
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 8:
        {
          print("Informe o valor em dolares:");
          String? valor1 = stdin.readLineSync();
          print("Informe o valor da cotação do dólar:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            double dolares = double.parse(valor1);
            double cotacao = double.parse(valor2);
            print("O valor de ${converterDecimal(dolares)} dolares em reais é ${converterDecimal(calcularConvercaoDolarReal(dolares, cotacao))} reais.");
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 9:
        {
          print("Informe o valor da variável A:");
          String? valor1 = stdin.readLineSync();
          print("Informe o valor da variável B:");
          String? valor2 = stdin.readLineSync();
          print("Informe o valor da variável B:");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            int A = int.parse(valor1);
            int B = int.parse(valor2);
            int C = int.parse(valor3);
            print("O valor do quadrado da soma entre A, B e C é ${calcularQuadradoSoma(A, B, C)}");
          } else {
            print("Nenhuma das informações pode ser nula.");
          }
        }
        break;
      case 10:
        {
          print("Informe o valor da variável A:");
          String? valor1 = stdin.readLineSync();
          print("Informe o valor da variável B:");
          String? valor2 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null)) {
            num A = num.parse(valor1);
            num B = num.parse(valor2);
            calcularOperacoesBasicas(A, B);
          } else {
            print("Nenhuma das informações pode ser nula.");
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
          print("Informe o sexo do cliente (feminino ou masculino):");
          String? valor2 = stdin.readLineSync();
          print("Informe o valor das compras do cliente:");
          String? valor3 = stdin.readLineSync();
          if ((valor1 != null) && (valor2 != null) && (valor3 != null)) {
            String nome = valor1;
            String sexo = valor2;
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
       /* Escreva um aplicativo que leia na tela uma das mensagens abaixo: segmentos
formarem um triângulo, o comprimento soma dos outros dois. dois números
inteiros e compare-os, mostrando - O primeiro valor é o maior - O segundo valor é
o maior - Não existe valor maior, os dois são iguais */
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
       /* Crie um jogo de JoKenPo (Pedra-Papel-Tesoura) */
        {
          
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
          int posicoes = 6;
          List lista = lerVetor(posicoes);
          verificarImparParVetor(lista, posicoes);
          print("$lista");
        }
        break;
      case 34:
/*
Desenvolva um programa que faça o sorteio de 20 números entre 0 e 10 e mostre
na tela:
Quais foram os números sorteados
Quantos números estão acima de 5
Quantos números são divisíveis por 3
*/
        {
          
        }
        break;
      case 35:
/*
Desenvolva uma aplicação que leia o preço de 8 produtos, e armazenem em uma
lista. No final, mostre na tela qual foi o maior e qual foi o menor preço informado.
*/
        {
          int posicoes = 8;
        }
        break;
      case 36:
/*
Crie um algoritmo que leia a idade de 10 pessoas, mostrando no final:
Qual é a média de idade do grupo
Quantas pessoas tem mais de 18 anos
Quantas pessoas tem menos de 5 anos
Qual foi a maior idade lida
*/
        {

        }
        break;
      case 37:
/*
Faça uma aplicação que leia a idade e o sexo de 5 pessoas, mostre no final:
Quantos homens foram cadastrados
Quantas mulheres foram cadastradas
A média de idade do grupo
A média de idade dos homens
Quantas mulheres tem mais de 20 anos
*/
        {
          
        }
        break;
      case 38:
/*
Desenvolva um programa que leia 10 números inteiros e guarde-os em um vetor.
No final, mostre quais são os números pares que foram digitados e em que
posições eles estão armazenados.
*/
        {
          
        }
        break;
      case 39:
/*
Desenvolva um programa que faça o sorteio de 20 números entre 0 e 10 e mostre
na tela:
*/
        {
          
        }
        break;
      case 40:
/*
Crie um programa que leia a idade de 8 pessoas e guarde-as em um vetor. No
final, mostre:
Qual é a média de idade das pessoas cadastradas
Em quais posições temos pessoas com mais de 25 anos
Qual foi a maior idade digitada (podem haver repetições)
Em que posições digitamos a maior idade
*/
        {
          
        }
        break;
      case 41:
/*
Faça um algoritmo que leia a nota de 10 alunos de uma turma e guarde-as em
um vetor. No final, mostre:
Qual é a média da turma
Quantos alunos estão acima da média da turma
Qual foi a maior nota digitada
Em que posições a maior nota aparece
*/
        {

        }
        break;
      case 42:
/*
Crie uma lógica que preencha um vetor de 20 posições com números aleatórios
(entre 0 e 99) gerados pelo computador. Logo em seguida, mostre os números
gerados e depois coloque o vetor em ordem crescente, mostrando no final os
valores ordenados.
*/
        {
          
        }
        break;
      case 43:
/*
Crie um programa que leia o nome e a idade de 9 pessoas e guarde esses
valores em dois vetores, em posições relacionadas. No final, mostre uma
listagem contendo apenas os dados das pessoas menores de idade.
*/
        {
          
        }
        break;
      case 44:
/*
Faça um algoritmo que leia o nome, o sexo e o salário de 5 funcionários e guarde
esses dados em três vetores. No final, mostre uma listagem contendo apenas os
dados das funcionárias mulheres que ganham mais de R$5 mil.
*/
        {
          
        }
        break;
      default:
        print("Opção Inválida.");
    }
  } while (op != 0);
}