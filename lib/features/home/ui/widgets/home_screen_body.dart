import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:flutter/material.dart';

import '../../../../core/app_constants.dart';

import 'hello_widget.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppConstants.horizontalSpace,
        vertical: AppConstants.verticalSpace,
      ),
      width: context.screenWidth,
      height: context.screenHeight,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeScreenHelloWidget(),
        ],
      ),
    );
  }
}
