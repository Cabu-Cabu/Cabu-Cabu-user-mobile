import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:cabu_cabu_user_mobile/src/core/utils/constants/icon_strings.dart';
import 'package:cabu_cabu_user_mobile/src/features/personalization/presentation/screens/profile_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/screens/past_activity_screen.dart';
import 'package:cabu_cabu_user_mobile/src/features/ride_booking/presentation/screens/ride_booking_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const RideBookingScreen(),
    const PastActivityScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.primary,
        selectedIconTheme: IconThemeData(color: AppColors.primary),
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.home,
              colorFilter: _selectedIndex == 0
                  ? ColorFilter.mode(AppColors.primary, BlendMode.srcIn)
                  : null,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.note,
              colorFilter: _selectedIndex == 1
                  ? ColorFilter.mode(AppColors.primary, BlendMode.srcIn)
                  : null,
            ),
            label: 'Past Rides',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.profile,
              colorFilter: _selectedIndex == 2
                  ? ColorFilter.mode(AppColors.primary, BlendMode.srcIn)
                  : null,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
