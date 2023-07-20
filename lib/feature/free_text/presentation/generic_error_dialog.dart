import 'package:flutter/material.dart';

class GenericErrorDialog extends StatelessWidget {
  const GenericErrorDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text('Oops something went wrong'),
    );
  }
}
