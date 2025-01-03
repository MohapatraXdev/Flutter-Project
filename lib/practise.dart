import 'dart:io';

void main( ){
  print('Welcome to Dart!');

  stdout.write('Enter Your Name:');
  var name = stdin.readLineSync();
  print('Welcom,$name');
}