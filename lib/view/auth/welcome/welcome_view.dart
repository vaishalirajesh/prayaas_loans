import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:prayaas_loans/config/color_config.dart';
import 'package:prayaas_loans/config/style_config.dart';
import 'package:prayaas_loans/res/constant/image_constant.dart';
import 'package:prayaas_loans/res/constant/string_constant.dart';
import 'package:prayaas_loans/widget/common_widget.dart';

import 'welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 20.r, right: 20.r, top: 10.r, bottom: 40.r),
          decoration: BoxDecoration(
            gradient: AppCommonWidget.linearGradientWidget(),
          ),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.h,
              ),
              SvgPicture.asset(
                AppImage.appColorLogo,
                fit: BoxFit.fill,
                height: 45.h,
                width: 36.w,
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                AppString.namsteGujarati,
                style: StyleConfig.mediumLargeText.copyWith(fontSize: 50.sp),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                AppString.chooseLanguage,
                style: StyleConfig.semiBoldMediumText.copyWith(fontSize: 16.sp),
              ),
              SizedBox(
                height: 30.h,
              ),
              buildLanguageRowWidget(AppString.english),
              SizedBox(
                height: 25.h,
              ),
              buildLanguageRowWidget(AppString.hindi),
              SizedBox(
                height: 25.h,
              ),
              buildLanguageRowWidget(AppString.gujarati),
              SizedBox(
                height: 25.h,
              ),
              buildLanguageRowWidget(AppString.marathi),
              SizedBox(
                height: 25.h,
              ),
              buildLanguageRowWidget(AppString.tamil),
              SizedBox(
                height: 25.h,
              ),
              buildLanguageRowWidget(AppString.kannada),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLanguageRowWidget(String title) {
    return Row(
      children: [
        Expanded(
            child: Text(
          title,
          style: StyleConfig.regularText16,
        )),
        const Icon(
          Icons.circle_outlined,
          color: ColorConfig.lightGreyColor,
        )
      ],
    );
  }
}
