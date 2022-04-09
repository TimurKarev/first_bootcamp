import 'package:flutter/material.dart';

class AsyncRequestPage extends StatelessWidget {
  const AsyncRequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Асинхронный запрос"),
      ),
    );
  }
}
