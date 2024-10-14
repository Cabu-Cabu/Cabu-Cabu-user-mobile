import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/containers/search_container.dart';
import 'package:cabu_cabu_user_mobile/src/core/components/custom_shapes/images/rounded_image.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/extentions.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/image_strings.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/texts.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.defaultPadding,
        ),
        child: Column(
          children: [
            const PersonalizationScreenHeader(
              title: AppTexts.messages,
              subtitle: AppTexts.chats,
            ),
            16.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AppSearchContainer(),
                    24.verticalSpace,

                    // This is the list of chats
                    ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (_, __) => Divider(
                        thickness: 1.0,
                        indent: 60.w,
                        height: 10.0,
                        color: AppColors.opacBlack,
                      ),
                      itemBuilder: (_, int index) {
                        return ChatListTile(index: index);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatListTile extends StatelessWidget {
  final int index;

  const ChatListTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 40.w,
      horizontalTitleGap: 24.w,
      title: Text('John Doe', style: context.textTheme.headlineSmall),
      contentPadding: EdgeInsets.zero,
      leading: AppRoundedImage.square(image: AppImages.person1, size: 40),
    );
  }
}
