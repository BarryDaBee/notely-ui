import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notely/src/core/extensions/extensions.dart';
import 'package:notely/src/features/manage_notes/data/models/note.dart';

import 'note_card.dart';

class RecentNotesBuilder extends StatelessWidget {
  final List<Note> notes;
  const RecentNotesBuilder({Key? key, required this.notes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: notes.length,
      padding: EdgeInsets.zero,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      crossAxisSpacing: 12.width,
      mainAxisSpacing: 8.height,
      itemBuilder: (context, index) {
        final note = notes[index];
        return NoteCard(title: note.title, body: note.body);
      },
    );
  }
}
