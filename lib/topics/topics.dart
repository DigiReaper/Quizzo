import 'package:Quizzo/shared/bottom_nav.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Topics extends StatelessWidget {
const Topics({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      bottomNavigationBar: BottomNavBar(),
    );
  }
}