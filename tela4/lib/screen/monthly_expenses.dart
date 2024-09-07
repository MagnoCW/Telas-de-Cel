import 'package:flutter/material.dart';

class MonthlyExpenses extends StatelessWidget {
  const MonthlyExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    // Obter a largura e altura da tela usando MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFD3D3D3),
      body: Center(
        child: Container(
          width: screenWidth,  // Largura do container
          height: screenHeight,  // Altura do container
          color: const Color(0xFFD3D3D3), // Cor de fundo do container
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final containerWidth = constraints.maxWidth;
              final containerHeight = constraints.maxHeight;

              const firstHalfDashes = 51;

              return Stack(
                children: [
                  Positioned(
                    top: containerHeight * 0.05,  // 5% da altura do container
                    left: containerWidth * 0.03,  // 3% da largura do container
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Monthly',
                          style: TextStyle(
                              fontSize: containerWidth * 0.1, color: Colors.black),
                        ),
                        Transform.translate(
                          offset: Offset(0, containerHeight * (-0.025)), // Move o texto para cima
                          child: Text(
                            'Expenses',
                            style: TextStyle(
                                fontSize: containerWidth * 0.1, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: containerHeight * 0.12,  // 10% da altura do container
                    left: containerWidth * 0.1,   // 10% da largura do container
                    right: containerWidth * 0.1,  // 10% da largura do container
                    child: Stack(
                      alignment: Alignment.center,  // Mantém o conteúdo centralizado no círculo
                      children: [
                        CustomPaint(
                          size: Size(containerWidth * 0.75, containerWidth),  // 75% da largura do container para o círculo
                          painter: DashedCirclePainter(firstHalfDashes: firstHalfDashes, screenWidth: screenWidth, screenHeight: screenHeight),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,  // Faz com que a coluna ocupe o mínimo de espaço necessário
                          children: [
                            Transform.translate(
                              offset: Offset(0, containerHeight * (0.01)),  // Move o texto para cima
                              child: Text(
                                'Food',
                                style: TextStyle(fontSize: containerWidth * 0.03, color: Colors.black),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(0, 0),  // Não move
                              child: Text(
                                '$firstHalfDashes%',
                                style: TextStyle(fontSize: containerWidth * 0.1, color: Colors.black),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(0, containerHeight * (-0.01)),  // Move o texto para cima
                              child: Text(
                                '-\$5,923.50',
                                style: TextStyle(fontSize: containerWidth * 0.03, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: containerHeight * 0.07,  // 7% da altura do container
                    left: containerWidth * 0.03,     // 3% da largura do container
                    right: containerWidth * 0.03,    // 3% da largura do container
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: containerHeight * 0.3,  // 30% da altura do container
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: containerHeight * 0.005,  // 0.5% da altura do container
                                  left: containerWidth * 0.02,   // 2% da largura do container
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Service',
                                        style: TextStyle(
                                            fontSize: containerWidth * 0.05,
                                            color: Colors.black),
                                      ),
                                      Transform.translate(
                                        offset: Offset(
                                            0, containerHeight * (-0.01)), // Move o texto para cima
                                        child: Text(
                                          'Costs',
                                          style: TextStyle(
                                              fontSize: containerWidth * 0.05,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: containerHeight * 0.1,  // 10% da altura do container
                                  left: 0,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: List.generate(4, (index) {
                                      // Definindo as cores para cada índice
                                      final colors = [
                                        const Color(0xFFD3D3D3),
                                        const Color(0xFFD3D3D3),
                                        Colors.black,
                                        const Color(0xFFD3D3D3),
                                      ];

                                      // Definindo os offsets para cada índice
                                      final offsets = [
                                        0.0, // Para o primeiro '_'
                                        -0.025, // Para o segundo '_'
                                        -0.06, // Para o terceiro '_'
                                        -0.025, // Para o quarto '_'
                                      ];

                                      return Transform.translate(
                                        offset: Offset(0, containerHeight * offsets[index]),
                                        child: Transform.scale(
                                          scaleY: 0.4,
                                          child: Text(
                                            '_',
                                            style: TextStyle(
                                                fontSize: containerWidth * 0.2,
                                                color: colors[index]),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                                Positioned(
                                  bottom: containerHeight * 0.005,  // 1% da altura do container
                                  left: containerWidth * 0.02,     // 2% da largura do container
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '32%',
                                        style: TextStyle(
                                            fontSize: containerWidth * 0.1,
                                            color: Colors.black),
                                      ),
                                      Transform.translate(
                                        offset: Offset(
                                            0, containerHeight * (-0.01)), // Move o texto para cima
                                        child: Text(
                                          '-\$3,283.20',
                                          style: TextStyle(
                                              fontSize: containerWidth * 0.03,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: containerWidth * 0.01), // Espaço entre os containers
                        Expanded(
                          child: Container(
                            height: containerHeight * 0.3,  // 30% da altura do container
                            decoration: BoxDecoration(
                              color: const Color(0xFFBEBEBE),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: containerHeight * 0.005,  // 1% da altura do container
                                  left: containerWidth * 0.02,  // 2% da largura do container
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Tech',
                                        style: TextStyle(
                                            fontSize: containerWidth * 0.05,
                                            color: Colors.black),
                                      ),
                                      Transform.translate(
                                        offset: Offset(
                                            0, containerHeight * (-0.01)), // Move o texto para cima
                                        child: Text(
                                          'Costs',
                                          style: TextStyle(
                                              fontSize: containerWidth * 0.05,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: containerHeight * 0.04,  // 10% da altura do container
                                  left: 0,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: List.generate(4, (index) {
                                      final colors = [
                                        const Color(0xFFD3D3D3),
                                        const Color(0xFFD3D3D3),
                                        Colors.black,
                                        const Color(0xFFD3D3D3),
                                      ];

                                      final offsets = [
                                        0.0, 
                                        -0.02, 
                                        -0.03, 
                                        -0.01, 
                                      ];

                                      return Transform.translate(
                                        offset: Offset(0, containerHeight * offsets[index]),
                                        child: Transform.scale(
                                          scaleY: 0.4,
                                          child: Text(
                                            '_',
                                            style: TextStyle(
                                                fontSize: containerWidth * 0.2,
                                                color: colors[index]),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                                Positioned(
                                  bottom: containerHeight * 0.005,  // 1% da altura do container
                                  left: containerWidth * 0.02,  // 2% da largura do container
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '10%',
                                        style: TextStyle(
                                            fontSize: containerWidth * 0.1,
                                            color: Colors.black),
                                      ),
                                      Transform.translate(
                                        offset: Offset(
                                            0, containerHeight * (-0.01)), // Move o texto para cima
                                        child: Text(
                                          '-\$916.80',
                                          style: TextStyle(
                                              fontSize: containerWidth * 0.03,
                                              color: Colors.black),
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
                  ),
                  Positioned(
                    bottom: containerHeight * 0.025, // ajusta de acordo com a altura da tela
                    left: containerWidth * 0.05, // ajusta de acordo com a largura da tela
                    right: containerWidth * 0.05, // ajusta de acordo com a largura da tela
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Monthly',
                        style: TextStyle(
                          fontSize: containerWidth * 0.05,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: containerHeight * 0.025, // ajusta de acordo com a altura da tela
                    left: containerWidth * 0.05, // ajusta de acordo com a largura da tela
                    child: Icon(
                      Icons.chevron_left,
                      size: containerWidth * 0.08, // ajusta o tamanho do ícone
                      color: Colors.black,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  final int firstHalfDashes; // Adicione um campo para o valor de firstHalfDashes
  final double screenWidth;
  final double screenHeight;

  DashedCirclePainter({required this.firstHalfDashes, required this.screenWidth, required this.screenHeight}); // Receba o valor no construtor

  @override
  void paint(Canvas canvas, Size size) {
    // Centro do círculo
    final center = Offset(size.width / 2, size.height / 2);
    const dashCount = 200; // Quantidade de partes na borda
    var firstDashWidth = screenHeight * 0.05; // Largura do dash para a primeira metade
    var secondDashWidth = screenHeight * 0.04; // Largura do dash para a segunda metade

    // Criação dos objetos Paint com cores diferentes
    final firstDashPaint = Paint()
      ..color = const Color(0xFFF5F5F5) // Cor branca para a primeira metade
      ..style = PaintingStyle.stroke;
      
    final secondDashPaint = Paint()
      ..color = const Color(0xFFB0B0B0) // Cor cinza claro para a segunda metade
      ..style = PaintingStyle.stroke;

    // Criação do Paint para o círculo interno
    final innerCirclePaint = Paint()
      ..color = const Color(0xFFB0B0B0) // Cor cinza claro para as bordas
      ..style = PaintingStyle.stroke
      ..strokeWidth = screenHeight * 0.02; // Largura da borda do círculo interno

    // Criação do Paint para o círculo interno
    final innerCirclePaint2 = Paint()
      ..color = const Color(0xFFF5F5F5) // Cor cinza claro para as bordas
      ..style = PaintingStyle.stroke
      ..strokeWidth = screenHeight * 0.02; // Largura da borda do círculo interno

    // Ângulo inicial para começar o primeiro segmento no topo do círculo
    const double initialAngle = -3.14159265359 / 2; // -π/2 para o topo

    // Dividindo o círculo em 100 partes iguais
    for (int i = 0; i < dashCount; i++) {
      final dashWidth = i < firstHalfDashes*2 ? firstDashWidth : secondDashWidth;
      final dashPaint = i < firstHalfDashes*2 ? firstDashPaint : secondDashPaint;
      dashPaint.strokeWidth = dashWidth;
      // Ângulo inicial e final de cada parte
      final startAngle = initialAngle + (i * 2 * 3.14159265359 / dashCount);
      final endAngle = startAngle + 0.8 * 2 * 3.14159265359 / dashCount; // 0.8 para criar uma lacuna

      // Desenhando a parte do círculo
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: screenHeight*0.17),
        startAngle,
        endAngle - startAngle,
        false,
        dashPaint,
      );
    }

    // Desenhando o círculo interno dividido em 8 partes
    const int innerDashCount = 8; // Quantidade de partes no círculo interno
    final double innerRadius = screenHeight *0.17 * 0.7; // Define um raio menor para o círculo interno
    const double segmentAngle = 2 * 3.14159265359 / innerDashCount; // Ângulo de cada segmento

    for (int i = 0; i < innerDashCount; i++) {
      final startAngle = initialAngle + (i * segmentAngle);
      final endAngle = startAngle + 0.05; // Tamanho pequeno para criar a borda

      // Definindo a cor do segmento do círculo interno
      final innerDashPaint = (i < (firstHalfDashes*2 / dashCount * innerDashCount))
          ? innerCirclePaint2
          : innerCirclePaint;

      // Desenhando o segmento do círculo interno
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: innerRadius),
        startAngle,
        endAngle - startAngle,
        false,
        innerDashPaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}