import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:books_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_styles.dart';
import '../../logic/auth_type_bar_cubit/auth_type_bar_cubit.dart';
import '../auth_screen.dart';

class AuthTypeItem extends StatelessWidget {
  const AuthTypeItem({super.key, required this.title, this.color});
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<AuthTypeBarCubit>().changeAuthType(
              title == S.of(context).login ? AuthType.login : AuthType.register,
            );
      },
      child: Container(
        width: context.screenWidth / 2 - 28.w,
        height: 34.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(title, style: AppStyles.style16),
      ),
    );
  }
}
