import 'package:Quizzo/about/about.dart';
import 'package:Quizzo/home/home.dart';
import 'package:Quizzo/login/login.dart';
import 'package:Quizzo/profile/profile.dart';
import 'package:Quizzo/topics/topics.dart';

var appRoutes = {
  '/': (context) => const Home(),
  '/login': (context) => const Login(),
  '/about': (context) => const About(),
  '/topics': (context) => const Topics(),
  '/profile': (context) => const Profile( ),
  
};