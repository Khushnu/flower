import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder {
  CustomPageRoute({required this.child}): super (
    transitionDuration: const Duration(seconds: 2),
    pageBuilder: (context, animation, secondaryAnimation) => child);
  final Widget child;

  Widget builTransition(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, 
  Widget child) => SlideTransition(
    position: Tween<Offset> (
      begin: const Offset(-1, 0), 
      end: Offset.zero
    ).animate(animation), 
    child: child,);
}