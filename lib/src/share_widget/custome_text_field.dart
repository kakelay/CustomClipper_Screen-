import 'package:flutter/material.dart';
import 'package:uber/src/share_widget/text_widget.dart';

class CustomeTextField extends StatelessWidget {
  final String title;

  CustomeTextField({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: '',
          ),
        ),
        TextWidget(
          title,
          fontSize: 20,
          color: Colors.red,
        )
      ],
    );
  }
}
