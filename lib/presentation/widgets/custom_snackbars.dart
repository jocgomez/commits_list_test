import 'package:flutter/material.dart';

class CustomSnackBar {
  ///Muestra un mensaje de error con un icono de warning en rojo
  static void showError(BuildContext context, String errorMsg) {
    final colorScheme = Theme.of(context).colorScheme;

    final snackBar = SnackBar(
      backgroundColor: colorScheme.errorContainer,
      behavior: SnackBarBehavior.floating,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      content: Row(
        children: [
          Icon(Icons.error, color: colorScheme.error),
          const SizedBox(width: 16),
          Flexible(
            child: Text(
              errorMsg,
              style: TextStyle(color: colorScheme.onBackground),
            ),
          ),
        ],
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
