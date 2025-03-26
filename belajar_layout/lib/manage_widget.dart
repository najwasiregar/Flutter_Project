import 'package:flutter/material.dart';

class ManageWidget extends StatefulWidget {
  const ManageWidget({super.key});

  @override
  _ManageWidgetState createState() => _ManageWidgetState();
}

class _ManageWidgetState extends State<ManageWidget> {
  bool _isVisible = true;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Manage Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _isVisible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: CustomPaint(
                painter: LovePainter(),
                child: Container(
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleVisibility,
              child: const Text('Toggle Visibility'),
            ),
          ],
        ),
      ),
    );
  }
}

class LovePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 236, 191, 242)
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(size.width / 2, size.height / 4);
    path.quadraticBezierTo(size.width / 4, size.height / 2, size.width / 2, size.height * 3 / 4);
    path.quadraticBezierTo(size.width * 3 / 4, size.height / 2, size.width / 2, size.height / 4);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}