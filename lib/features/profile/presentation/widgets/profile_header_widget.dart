import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recast_flutter_assessment/core/constants/app_strings.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';
import 'package:recast_flutter_assessment/core/utils/app_text_styles.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';

import '../../data/models/profile_model.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final ProfileModel? profileData;

  const ProfileHeaderWidget({super.key, this.profileData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: UiSizes.profileAvatarSize.w,
          height: UiSizes.profileAvatarSize.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              (UiSizes.profileAvatarSize / 2).w,
            ),
            child: profileData?.avatarUrl != null
                ? Image.network(
                    profileData!.avatarUrl!,
                    fit: BoxFit.cover,
                  )
                : Container(
                    color: AppColors.avatarColor,
                    child: Icon(
                      FontAwesomeIcons.circleUser.data,
                      color: AppColors.white,
                      size: UiSizes.iconSize.sp,
                    ),
                  ),
          ),
        ),
        SizedBox(width: UiSizes.spaceWidthM.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                profileData?.name ?? AppStrings.userName,
                style: AppTextStyles.style11Bold.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
              SizedBox(height: UiSizes.spaceHeightXS.h),
              Text(
                profileData?.phoneNumber ?? '+962 79 123 4567',
                style: AppTextStyles.style9Bold.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            AppStrings.edit,
            style: AppTextStyles.style10Bold.copyWith(
              color: AppColors.secondaryColorLight,
            ),
          ),
        ),
      ],
    );
  }
}
