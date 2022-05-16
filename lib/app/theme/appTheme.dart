import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/*
 * * * * * * * * * * * * * * * * * *
 *                                 *
 *          Color Pallete          *
 *                                 *
 * * * * * * * * * * * * * * * * * *
 */

const PRIMARY_COLOR = Color.fromARGB(255, 35, 206, 107);
const SECONDARY_COLOR = Color.fromARGB(255, 247, 249, 249);
const TERTIARY_COLOR = Color.fromARGB(0, 0, 0, 0);
const QUATERNARY_COLOR = Color.fromARGB(255, 0, 0, 0);

/*
 * * * * * * * * * * * * * * * * * *
 *                                 *
 *            App Theme            *
 *                                 *
 * * * * * * * * * * * * * * * * * *
 */


final ThemeData appThemeData = ThemeData(
  primaryColor: PRIMARY_COLOR,
  backgroundColor: SECONDARY_COLOR,
  
  colorScheme: ThemeData().colorScheme.copyWith(primary: PRIMARY_COLOR,),

  /*
  |--------------------------------------------------------------------------
  | App Bar
  |--------------------------------------------------------------------------
  |
  */

  appBarTheme: const AppBarTheme(
    backgroundColor: TERTIARY_COLOR,
    foregroundColor: QUATERNARY_COLOR,
    elevation: 0,
  ),


  /*
  |--------------------------------------------------------------------------
  | Botões
  |--------------------------------------------------------------------------
  |
  */

  // Default

  buttonTheme: const ButtonThemeData(
    buttonColor: PRIMARY_COLOR,
    focusColor: PRIMARY_COLOR,
  ),


  // Elevated Button 

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle (
      backgroundColor: MaterialStateProperty.all(PRIMARY_COLOR)
    )
  ),


  // Text Button

  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle (
      foregroundColor: MaterialStateProperty.all(SECONDARY_COLOR),
      backgroundColor: MaterialStateProperty.all(PRIMARY_COLOR),
      shape: MaterialStateProperty.all<RoundedRectangleBorder> (
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: PRIMARY_COLOR)
        ),
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.fromLTRB(100, 20, 100, 20)),
    )
  ),
);