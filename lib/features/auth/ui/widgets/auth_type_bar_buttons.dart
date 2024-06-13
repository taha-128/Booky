import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import 'auth_type_item_widget.dart';

class AuthTypeBarButtons extends StatelessWidget {
  const AuthTypeBarButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AuthTypeItem(title: S.of(context).login),
          AuthTypeItem(title: S.of(context).register)
        ],
      ),
    );
  }
}
