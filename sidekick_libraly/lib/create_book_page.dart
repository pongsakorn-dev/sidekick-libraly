import 'package:flutter/material.dart';

class CreateBookPage extends StatefulWidget {
  const CreateBookPage({super.key});

  @override
  State<CreateBookPage> createState() => _CreateBookPageState();
}

class _CreateBookPageState extends State<CreateBookPage> {
  @override
  Widget build(BuildContext context) {
    final contentWidth = MediaQuery.of(context).size.width / 2;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(),
        TextButton(
            onPressed: () {
              createBook();
            },
            child: Text("SAVE"))
      ],
    );
  }
}

void createBook() {}
