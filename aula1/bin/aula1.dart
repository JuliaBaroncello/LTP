import 'dart:io';
import 'dart:math';

String converterDecimal(double valor) {
  return valor.toStringAsFixed(2);
}

// Exercício 1
double calcularSalarioEmpresaABC(double salario) {
  return salario + (salario * 25.00) / 100.00;
}

// Exercício 2
double calcularAumentoSalario(double salario, num percentual) {
  return salario + (salario * percentual) / 100.00;
}

// Exercício 3
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
double calcularRestoRacao(double pesoSacoRacao, double quantidadeRacaoGato1, double quantidadeRacaoGato2) {
  return ((pesoSacoRacao * 1000.00) - (quantidadeRacaoGato1 * 5) - (quantidadeRacaoGato2 * 5)) / 1000.00;
}

// Exercício 5
num calcularVolumeCaixa(num comprimento, num largura, num altura) {
  return comprimento * largura * altura;
}

// Exercício 6
void efetuarTrocaAB(num A, num B) {
  num aux = A;
  A = B;
  B = aux;
  print("Valor das variáveis após a troca é: A = $A e B = $B");
}

// Exercício 7
num calcularQuadradoDiferenca(int A, int B) {
  return pow((A - B), 2);
}

// Exercício 8
double calcularConvercaoDolarReal(double dolares, double cotacao) {
  return dolares * cotacao;
}

// Exercício 9
num calcularQuadradoSoma(int A, int B, int C) {
  return pow((A + B + C), 2);
}

// Exercício 10
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
num calcularVolumeEsfera(double raio, double pi) {
  return (4.00 / 3.00) * pi * pow(raio, 3);
}

// Exercício 12
void calcularSucessorAntecessor(int numero) {
  int sucessor = numero + 1;
  int antecessor = numero - 1;
  print("O sucessor do número $numero é: $sucessor");
  print("O antecessor do número $numero é: $antecessor");
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
    novoSalario = calcularAumentoSalario(salario, percentual);
  } else if ((anos >= 3) && (anos < 10)) {
    num percentual = 12.50;
    novoSalario = calcularAumentoSalario(salario, percentual);
  } else if (salario >= 10) {
    num percentual = 20.00;
    novoSalario = calcularAumentoSalario(salario, percentual);
  }
  return novoSalario;
}

// Exercício 24

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
        salarioRejustado = calcularAumentoSalario(salario, percentual);
      } else if ((anosTrabalho >= 15) && (anosTrabalho <= 20)) {
        percentual = 12;
        salarioRejustado = calcularAumentoSalario(salario, percentual);
      } else {
        percentual = 23;
        salarioRejustado = calcularAumentoSalario(salario, percentual);
      }
      break;
    case 2:
      if (anosTrabalho < 20) {
        percentual = 3;
        salarioRejustado = calcularAumentoSalario(salario, percentual);
      } else if ((anosTrabalho >= 20) && (anosTrabalho <= 30)) {
        percentual = 13;
        salarioRejustado = calcularAumentoSalario(salario, percentual);
      } else {
        percentual = 25;
        salarioRejustado = calcularAumentoSalario(salario, percentual);
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
  print("Esse vetor possui $impar números ímpares e $par números pares.");
  print("Vetor: $lista.");
  print("Os números ímpares são $listaImpar e os números pares são $listaPar.");
}

// Exercício 34

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
  print("A média de idade do grupo é $mediaIdade anos.");
  print("A quantidade de pessoas com mais de 18 anos é $idadeMaior");
  print("A quantidade de pessoas com menos de 5 anos é $idadeMenor");
  print("A maior idade do grupo é $maiorIdade");
}

// Exercício 37

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
      print("Número ${lista[i]} na posição $i");
    }
  }
}

// Exercício 39

// Exercício 40
void lerVetorIdades() {
  List<int> lista = [];
  for (int i = 0; i < 8; i++) {
    String? valor = stdin.readLineSync();
    if (valor != null) {
      int idade = int.parse(valor);
      lista.add(idade);
    }
  }
  int somaIdade = 0;
  int maiorIdade = 0;
  for (int i = 0; i < 10; i++) {
    somaIdade = somaIdade + lista[i];
    if (maiorIdade < lista[i]) {
      maiorIdade = lista[i];
    }
  }
  num mediaIdade = (somaIdade / 10).round();
  print("A média de idade das pessoas cadastradas é $mediaIdade anos.");

  print("A maior idade do grupo é $maiorIdade");
  
}


// Exercício 41

// Exercício 42

// Exercício 43

// Exercício 44

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
            print("O salário de ${converterDecimal(salario)} reais será reajustado para ${converterDecimal(calcularAumentoSalario(salario, percentual))} reais.");
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
          
        }
        break;
      case 40:
        {
          
        }
        break;
      case 41:
        {

        }
        break;
      case 42:
        {
          
        }
        break;
      case 43:
        {
          
        }
        break;
      case 44:
        {
          
        }
        break;
      default:
        print("Opção Inválida.");
    }
  } while (op != 0);
}