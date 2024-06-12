import 'package:books_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static final style16 = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
  
  static final style20 = GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.black60,
  );

  static final style28 = GoogleFonts.poppins(
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
  );
}
