import 'package:flutter/material.dart';

class DetailScreenImage extends StatelessWidget {
  const DetailScreenImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Image.network(
          'https://picsum.photos/200/300',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
