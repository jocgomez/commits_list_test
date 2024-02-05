import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CommitShimmer extends StatelessWidget {
  const CommitShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 112,
      decoration: BoxDecoration(
        color: colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CommitAuthorDetailShimmer(colorScheme: colorScheme),
          const SizedBox(height: 8),
          Shimmer.fromColors(
            baseColor: colorScheme.onSurface,
            highlightColor: Colors.white,
            child: Container(
              width: 70,
              height: 10,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Shimmer.fromColors(
            baseColor: colorScheme.onSurface,
            highlightColor: Colors.white,
            child: Container(
              width: 70,
              height: 10,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Shimmer.fromColors(
            baseColor: colorScheme.onSurface,
            highlightColor: Colors.white,
            child: Container(
              width: 20,
              height: 8,
              margin: const EdgeInsets.only(left: 150),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class CommitAuthorDetailShimmer extends StatelessWidget {
  const CommitAuthorDetailShimmer({required this.colorScheme, super.key});
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Shimmer.fromColors(
          baseColor: colorScheme.onSurface,
          highlightColor: Colors.white,
          child: Container(
            width: 32,
            height: 32,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer.fromColors(
              baseColor: colorScheme.onSurface,
              highlightColor: Colors.white,
              child: Container(
                width: 70,
                height: 8,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Shimmer.fromColors(
              baseColor: colorScheme.onSurface,
              highlightColor: Colors.white,
              child: Container(
                width: 120,
                height: 8,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
