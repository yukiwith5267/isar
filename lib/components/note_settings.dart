import 'package:flutter/material.dart';

class NoteSettings extends StatelessWidget {
  const NoteSettings(
      {super.key, required this.onEditTap, required this.onDeleteTap});
  final void Function() onEditTap;
  final void Function() onDeleteTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onEditTap,
          child: const SizedBox(
            height: 50,
            width: 50,
            child: Center(child: Text('Edit')),
          ),
        ),
        GestureDetector(
          onTap: onDeleteTap,
          child: const SizedBox(
            height: 50,
            width: 50,
            child: Center(child: Text('Delete')),
          ),
        ),
      ],
    );
  }
}
