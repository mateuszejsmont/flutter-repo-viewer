import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shimmer/shimmer.dart';

class LoadingRepoTile extends StatelessWidget {
  const LoadingRepoTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade300,
      child: ListTile(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 14,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.grey,
            ),
          ),
        ),
        subtitle: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 14,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.grey,
            ),
          ),
        ),
        leading: const CircleAvatar(),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.star_border),
            Text(
              '',
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
    );
  }
}
