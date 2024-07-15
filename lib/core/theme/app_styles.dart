import 'package:books_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static final style12 = GoogleFonts.inter(
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.darkGrey,
  );
  static final style14 = GoogleFonts.inter(
    fontSize: 14.sp,
  );

  static final style16 = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  static final style18 = GoogleFonts.inter(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
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

  static final style32 = GoogleFonts.cairo(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );
}
