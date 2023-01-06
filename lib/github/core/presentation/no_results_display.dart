import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NoResultsDisplay extends StatelessWidget {
  final String message;

  const NoResultsDisplay({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              MdiIcons.emoticonPoop,
              size: 96,
            ),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
