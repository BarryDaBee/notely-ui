import 'package:flutter/material.dart';

class SlideFromLeftCornerRoute extends PageRouteBuilder {
  final Widget child;
  SlideFromLeftCornerRoute({required this.child})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1, -1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}
