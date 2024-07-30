import 'package:flutter/material.dart';
import 'package:pixelcraft/core/constants/image_constants.dart';
import 'package:pixelcraft/core/constants/message_constants.dart';
import 'package:pixelcraft/theme/app_theme.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: <Widget>[
          Image.asset(ImageConstants.onboardingImagePath),

          //* General huge container
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: AppPadding.onboardingPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //* Messages container
                  SizedBox(
                    width: 345,
                    child: Text(
                      MessageConstants.onboardingPrimaryMessage,
                      textAlign: TextAlign.center,
                      style: context.appTextTheme.displayMedium?.copyWith(
                        color: AppColors.primaryLabel,
                        //fontSize: 12,
                      ),
                    ),
                  ),

                  //* Space between messages
                  AppSpacing.onboardingMessagesSpace,

                  //* Secondary message
                  const SizedBox(
                    height: 44,
                    width: 345,
                    child: Text(
                      MessageConstants.onboardingSecondaryMessage,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.secondaryLabel,
                        fontSize: 17,
                      ),
                    ),
                  ),

                  //* Space between message container and button
                  AppSpacing.onboardingButtonSpace,

                  //* Button
                  //IconButton(onPressed: (){}, icon:)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
