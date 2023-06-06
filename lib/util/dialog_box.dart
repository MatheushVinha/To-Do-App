import 'package:flutter/material.dart';
import 'package:to_do_app/util/myButton.dart';

class DialogBox extends StatelessWidget {
  VoidCallback onSave;
  VoidCallback onCancel;
  final controller;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Adicione uma nova task',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(text: 'Save', onPressed: onSave),

                const SizedBox(width: 8),

                //cancell button
                MyButton(text: 'Cancel', onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
