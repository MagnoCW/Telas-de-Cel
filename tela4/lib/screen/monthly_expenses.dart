import 'package:flutter/material.dart';

class MonthlyExpenses extends StatelessWidget {
  const MonthlyExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    const firstHalfDashes = 51; // Defina o valor aqui ou calcule conforme necessário
    return Scaffold(
      backgroundColor: const Color(0xFFD3D3D3),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Monthly',
                  style: TextStyle(fontSize: 32, color: Colors.black),
                ),
                Transform.translate(
                  offset: const Offset(0, -20),  // Move o texto para cima
                  child: const Text(
                    'Expenses',
                    style: TextStyle(fontSize: 32, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 120,
            left: 80,
            right: 80,
            child: Stack(
              alignment: Alignment.center,  // Mantém o conteúdo centralizado no círculo
              children: [
                CustomPaint(
                  size: const Size(250, 250), // Defina o tamanho fixo do círculo aqui
                  painter: DashedCirclePainter(firstHalfDashes: firstHalfDashes),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,  // Faz com que a coluna ocupe o mínimo de espaço necessário
                  children: [
                    Transform.translate(
                      offset: const Offset(0, 20),  // Move o texto para cima
                      child: const Text(
                        'Food',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, 5),  // Move o texto para cima
                      child: const Text(
                      '$firstHalfDashes%',
                      style: TextStyle(fontSize: 48, color: Colors.black),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -10),  // Move o texto para cima
                      child: const Text(
                      '-\$5,923.50',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 5,
            right: 5,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(15.0),                     
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          left: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Service',
                                style: TextStyle(fontSize: 20, color: Colors.black),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -10),  // Move o texto para cima
                                child: const Text(
                                  'Costs',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 60,
                          left: 0,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Transform.scale(
                                scaleY: 0.4,
                                child: const Text(
                                  '_',
                                  style: TextStyle(fontSize: 110, color: Color(0xFFD3D3D3)),
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -20),  // Move o texto para o lado
                                child: Transform.scale(
                                  scaleY: 0.4,
                                  child: const Text(
                                    '_',
                                    style: TextStyle(fontSize: 110, color: Color(0xFFD3D3D3)),
                                  ),
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -50),  // Move o texto para o lado
                                child: Transform.scale(
                                  scaleY: 0.4,
                                  child: const Text(
                                    '_',
                                    style: TextStyle(fontSize: 110, color: Colors.black),
                                  ),
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -20),  // Move o texto para o lado
                                child: Transform.scale(
                                  scaleY: 0.4,
                                  child: const Text(
                                    '_',
                                    style: TextStyle(fontSize: 110, color: Color(0xFFD3D3D3)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '32%',
                                style: TextStyle(fontSize: 40, color: Colors.black),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -5),  // Move o texto para cima
                                child: const Text(
                                  '-\$3,283.20',
                                  style: TextStyle(fontSize: 12, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                    )
                  )
                ),
                const SizedBox(width: 5), // Espaço entre os containers
                Expanded(
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBEBEBE),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          left: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Tech',
                                style: TextStyle(fontSize: 20, color: Colors.black),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -10),  // Move o texto para cima
                                child: const Text(
                                  'Costs',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 0,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Transform.scale(
                                scaleY: 0.4,
                                child: const Text(
                                  '_',
                                  style: TextStyle(fontSize: 110, color: Color(0xFFD3D3D3)),
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -20),  // Move o texto para o lado
                                child: Transform.scale(
                                  scaleY: 0.4,
                                  child: const Text(
                                    '_',
                                    style: TextStyle(fontSize: 110, color: Color(0xFFD3D3D3)),
                                  ),
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -30),  // Move o texto para o lado
                                child: Transform.scale(
                                  scaleY: 0.4,
                                  child: const Text(
                                    '_',
                                    style: TextStyle(fontSize: 110, color: Colors.black),
                                  ),
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -10),  // Move o texto para o lado
                                child: Transform.scale(
                                  scaleY: 0.4,
                                  child: const Text(
                                    '_',
                                    style: TextStyle(fontSize: 110, color: Color(0xFFD3D3D3)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '10%',
                                style: TextStyle(fontSize: 40, color: Colors.black),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -5),  // Move o texto para cima
                                child: const Text(
                                  '-\$916.80',
                                  style: TextStyle(fontSize: 12, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                    )
                  )
                ),
              ],
            )
          ),
          const Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Monthly',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          const Positioned(
            bottom: 8,
            left: 10,
            child: Icon(
              Icons.chevron_left,
              size: 24,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  final int firstHalfDashes; // Adicione um campo para o valor de firstHalfDashes

  DashedCirclePainter({required this.firstHalfDashes}); // Receba o valor no construtor

  @override
  void paint(Canvas canvas, Size size) {
    // Centro do círculo
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    const dashCount = 100; // Quantidade de partes na borda
    const firstDashWidth = 40.0; // Largura do dash para a primeira metade
    const secondDashWidth = 30.0; // Largura do dash para a segunda metade

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
      ..strokeWidth = 20.0; // Largura da borda do círculo interno

    // Ângulo inicial para começar o primeiro segmento no topo do círculo
    const double initialAngle = -3.14159265359 / 2; // -π/2 para o topo

    // Dividindo o círculo em 100 partes iguais
    for (int i = 0; i < dashCount; i++) {
      final dashWidth = i < firstHalfDashes ? firstDashWidth : secondDashWidth;
      final dashPaint = i < firstHalfDashes ? firstDashPaint : secondDashPaint;
      dashPaint.strokeWidth = dashWidth;
      // Ângulo inicial e final de cada parte
      final startAngle = initialAngle + (i * 2 * 3.14159265359 / dashCount);
      final endAngle = startAngle + 0.8 * 2 * 3.14159265359 / dashCount; // 0.8 para criar uma lacuna

      // Desenhando a parte do círculo
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        endAngle - startAngle,
        false,
        dashPaint,
      );
    }

    // Desenhando o círculo interno dividido em 8 partes
    const int innerDashCount = 8; // Quantidade de partes no círculo interno
    final double innerRadius = radius * 0.7; // Define um raio menor para o círculo interno
    const double segmentAngle = 2 * 3.14159265359 / innerDashCount; // Ângulo de cada segmento

    for (int i = 0; i < innerDashCount; i++) {
      final startAngle = initialAngle + (i * segmentAngle);
      final endAngle = startAngle + 0.05; // Tamanho pequeno para criar a borda

      // Definindo a cor do segmento do círculo interno
      final innerDashPaint = (i < (firstHalfDashes / dashCount * innerDashCount))
          ? firstDashPaint
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