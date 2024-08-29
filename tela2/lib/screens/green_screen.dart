import 'package:flutter/material.dart';

class GreenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green, // Define o fundo verde para toda a tela
      body: Column(
        children: [
          // Parte superior
          Expanded(
            flex: 1, // Ocupa metade da tela
            child: Container(
              color: Colors.green, // Também verde para uniformidade
              child: Stack(
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Círculo
                        Container(
                          width: 200, // Largura do círculo
                          height: 200, // Altura do círculo
                          decoration: BoxDecoration(
                            color: Colors.black, // Cor do círculo
                            shape: BoxShape.circle, // Forma do círculo
                          ),
                        ),
                        // Retângulo vertical central
                        Container(
                          width: 15, // Largura do retângulo vertical
                          height: 200, // Altura do retângulo vertical
                          color: Colors.green, // Cor do retângulo vertical
                        ),
                        // Retângulos horizontais
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < 9; i++) ...[
                              Container(
                                width: 200, // Largura do retângulo horizontal
                                height: 10, // Altura do retângulo horizontal
                                color: Colors.green, // Cor do retângulo horizontal
                              ),
                              SizedBox(height: 15), // Espaço entre os retângulos
                            ],
                          ],
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.only(left: 10.0, top: 30.0),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            child: Text(
                              'Brief',
                              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            top: 20, // Ajuste a posição para que fique logo abaixo do "Brief"
                            child: Text(
                              'Thought',
                              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight, // Alinha no canto superior direito
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30.0, top: 30.0), // Espaçamento em relação às bordas
                      child: Transform.rotate(
                        angle: 3.14 / 2, // Rotaciona a seta em 90 graus para baixo
                        child: Text(
                          '>',
                          style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft, // Alinha no canto inferior direito
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, bottom: 0.0), // Espaçamento em relação às bordas
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '00:',
                              style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 128, 128, 128)),
                            ),
                            TextSpan(
                              text: '00:00',
                              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight, // Alinha no canto inferior direito
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0, bottom: 0.0), // Espaçamento em relação às bordas
                      child: Text(
                        '01:55:58',
                        style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 128, 128, 128)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Parte inferior com 2 colunas e 2 linhas
          Expanded(
            flex: 1, // Ocupa a outra metade da tela
            child: Container(
              color: Colors.green, // Fundo verde para a parte inferior
              child: Column(
                children: [
                  // Primeira linha
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(2.0), // Espaço ao redor
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 10, 175, 80), // Tom de verde mais escuro
                              borderRadius: BorderRadius.circular(15.0), // Arredonda as bordas
                            ),
                            child: Stack(
                              children: [
                                Center(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 120, // Largura do círculo preto
                                        height: 120, // Altura do círculo preto
                                        decoration: BoxDecoration(
                                          color: Colors.black, // Cor do círculo preto
                                          shape: BoxShape.circle, // Forma do círculo preto
                                        ),
                                      ),
                                      Positioned(
                                        left: 90, // Posiciona o círculo amarelo à esquerda
                                        top: 30,
                                        child: Container(
                                          width: 10, // Largura do círculo amarelo
                                          height: 10, // Altura do círculo amarelo
                                          decoration: BoxDecoration(
                                            color: Colors.yellow, // Cor do círculo amarelo
                                            shape: BoxShape.circle, // Forma do círculo amarelo
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    '',
                                    style: TextStyle(fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft, // Alinha à esquerda
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0), // Espaçamento da borda esquerda
                                    child: Text(
                                      'Speed',
                                      style: TextStyle(fontSize: 16, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(2.0), // Espaço ao redor
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 10, 175, 80), // Tom de verde mais escuro
                              borderRadius: BorderRadius.circular(15.0), // Arredonda as bordas
                            ),
                            child: Stack(
                              children: [
                                Center(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 120, // Largura do círculo preto
                                        height: 120, // Altura do círculo preto
                                        decoration: BoxDecoration(
                                          color: Colors.black, // Cor do círculo preto
                                          shape: BoxShape.circle, // Forma do círculo preto
                                        ),
                                      ),
                                      Positioned(
                                        left: 10, // Posiciona o círculo amarelo à esquerda
                                        top: 70,
                                        child: Container(
                                          width: 10, // Largura do círculo amarelo
                                          height: 10, // Altura do círculo amarelo
                                          decoration: BoxDecoration(
                                            color: Colors.yellow, // Cor do círculo amarelo
                                            shape: BoxShape.circle, // Forma do círculo amarelo
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    '',
                                    style: TextStyle(fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft, // Alinha à esquerda
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0), // Espaçamento da borda esquerda
                                    child: Text(
                                      'Rorare',
                                      style: TextStyle(fontSize: 16, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Segunda linha
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(2.0), // Espaço ao redor
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 10, 175, 80), // Tom de verde mais escuro
                              borderRadius: BorderRadius.circular(15.0), // Arredonda as bordas
                            ),
                            child: Stack(
                              children: [
                                Center(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 120, // Largura do círculo preto
                                        height: 120, // Altura do círculo preto
                                        decoration: BoxDecoration(
                                          color: Colors.black, // Cor do círculo preto
                                          shape: BoxShape.circle, // Forma do círculo preto
                                        ),
                                      ),
                                      Positioned(
                                        left: 75, // Posiciona o círculo amarelo à esquerda
                                        top: 100,
                                        child: Container(
                                          width: 10, // Largura do círculo amarelo
                                          height: 10, // Altura do círculo amarelo
                                          decoration: BoxDecoration(
                                            color: Colors.yellow, // Cor do círculo amarelo
                                            shape: BoxShape.circle, // Forma do círculo amarelo
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    '',
                                    style: TextStyle(fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft, // Alinha à esquerda
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0), // Espaçamento da borda esquerda
                                    child: Text(
                                      'VOL',
                                      style: TextStyle(fontSize: 16, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(2.0), // Espaço ao redor
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 10, 175, 80), // Tom de verde mais escuro
                              borderRadius: BorderRadius.circular(15.0), // Arredonda as bordas
                            ),
                            child: Stack(
                              children: [
                                Center(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 120, // Largura do círculo preto
                                        height: 120, // Altura do círculo preto
                                        decoration: BoxDecoration(
                                          color: Colors.black, // Cor do círculo preto
                                          shape: BoxShape.circle, // Forma do círculo preto
                                        ),
                                      ),
                                      Positioned(
                                        left: 20, // Posiciona o círculo amarelo à esquerda
                                        top: 20,
                                        child: Container(
                                          width: 10, // Largura do círculo amarelo
                                          height: 10, // Altura do círculo amarelo
                                          decoration: BoxDecoration(
                                            color: Colors.yellow, // Cor do círculo amarelo
                                            shape: BoxShape.circle, // Forma do círculo amarelo
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    '',
                                    style: TextStyle(fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft, // Alinha à esquerda
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0), // Espaçamento da borda esquerda
                                    child: Text(
                                      'Effect',
                                      style: TextStyle(fontSize: 16, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}