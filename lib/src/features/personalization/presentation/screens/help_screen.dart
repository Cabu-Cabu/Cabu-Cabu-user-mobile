import 'package:cabu_cabu_user_mobile/src/core/utils/constants/sizes.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/components/header_section.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
        child: Column(
          children: [
            PersonalizationScreenHeader(title: 'Help'),
          ],
        ),
      ),
    );
  }
}
