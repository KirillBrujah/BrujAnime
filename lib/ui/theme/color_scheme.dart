
// Background			      #040A04
// on BackGround 		  	#E4FFE3
// ==================
// Primary				      #67F562
// On Primary			      #040A04
// Primary Container		#AEFFAB
// On Prim. Container		#233322
// ==================
// Secondary			      #FCDEEF
// On Secondary			    #2E1824
// ==================
// Error				        #FF3633
// On Error			        #FFC8C7
// Err Container			  #FFA09E
// on Err Container		  #FF3633

import 'package:flutter/material.dart';

const _primary = Color.fromRGBO(103, 245, 98, 1);
const _onPrimary = Color.fromRGBO(22, 54, 21, 1.0);
const _primaryContainer = Color.fromRGBO(174, 255, 171, 1);
const _onPrimaryContainer = Color.fromRGBO(35, 51, 34, 1);

const _secondary = Color.fromRGBO(252, 222, 239, 1);
const _onSecondary = Color.fromRGBO(46, 24, 36, 1.0);

const _background = Color.fromRGBO(4, 10, 4, 1);
const _onBackground = Color.fromRGBO(228, 255, 227, 1.0);

const _surface = Color.fromRGBO(103, 245, 98, 0.05);
const _onSurface = _onBackground;

const _error = Color.fromRGBO(255, 54, 51, 1);
const _onError = Color.fromRGBO(255, 200, 199, 1);
const _errorContainer = Color.fromRGBO(255, 160, 158, 1);
const _onErrorContainer = Color.fromRGBO(255, 54, 51, 1);

const colorScheme = ColorScheme(
  primary: _primary,
  onPrimary: _onPrimary,
  primaryContainer: _primaryContainer,
  onPrimaryContainer: _onPrimaryContainer,
  secondary: _secondary,
  onSecondary: _onSecondary,
  background: _background,
  onBackground: _onBackground,
  surface: _surface,
  onSurface: _onSurface,
  error: _error,
  onError: _onError,
  errorContainer: _errorContainer,
  onErrorContainer: _onErrorContainer,
  brightness: Brightness.dark,
);
