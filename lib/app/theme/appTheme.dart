import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: Color.fromARGB(255, 35, 206, 107),
  backgroundColor: Color.fromARGB(255, 247, 249, 249),
  
  colorScheme: ThemeData().colorScheme.copyWith(primary: Color.fromARGB(255, 35, 206, 107),),

  /*
  |--------------------------------------------------------------------------
  | Botões
  |--------------------------------------------------------------------------
  |
  */

  // Default

  buttonTheme: ButtonThemeData(
    buttonColor: Color.fromARGB(255, 35, 206, 107),
    focusColor: Color.fromARGB(255, 35, 206, 107),
  ),


  // Elevated Button 

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle (
      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 35, 206, 107))
    )
  ),


  // Text Button

  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle (
      foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 35, 206, 107)),
      backgroundColor: MaterialStateProperty.all(Color.fromARGB(0, 35, 206, 106))
    )
  ),
);