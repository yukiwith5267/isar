import 'package:flutter/material.dart';
import 'package:minimal_notes_app/components/note_settings.dart';
import 'package:popover/popover.dart';

class NoteTile extends StatelessWidget {
  final String text;
  final void Function()? onEditPressed;
  final void Function()? onDeletePressed;
  const NoteTile(
      {super.key,
      required this.text,
      this.onEditPressed,
      this.onDeletePressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      child: ListTile(
          title: Text(text),
          trailing: Builder(
            builder: (context) => IconButton(
                onPressed: () => showPopover(
                      width: 100,
                      height: 100,
                      context: context,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      bodyBuilder: (context) => NoteSettings(
                          onEditTap: onEditPressed!,
                          onDeleteTap: onDeletePressed!),
                    ),
                icon: const Icon(Icons.more_vert)),
          )),
    );
  }
}
