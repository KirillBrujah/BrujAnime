import 'package:brujanime/generated/l10n.dart';
import 'package:flutter/material.dart';


class EmptyListMessage extends StatelessWidget {
  const EmptyListMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(S.of(context).list_is_empty),
    );
  }
}
