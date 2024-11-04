import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentalin_id/app/modules/calendar/views/calendar_view.dart';
import 'package:rentalin_id/app/modules/home/views/home_view.dart';
import 'package:rentalin_id/app/modules/manage-motorcycle/views/manage_motorcycle_view.dart';
import 'package:rentalin_id/app/modules/profile/views/profile_view.dart';
import 'package:rentalin_id/app/modules/search/views/search_view.dart';

class ChildBottomBar extends StatelessWidget {
  const ChildBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Get.to(const HomeView());
              },
              icon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  "assets/icon/bottombar/home.png",
                  width: 26,
                  height: 26,
                ),
              ),
            ),
            IconButton(
              onPressed: () {Get.to(const SearchView());},
              icon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  "assets/icon/bottombar/search.png",
                  width: 26,
                  height: 26,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Get.to(const ManageMotorcycleView());
              },
              icon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  "assets/icon/bottombar/plus-square.png",
                  width: 26,
                  height: 26,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Get.to(const CalendarView());
              },
              icon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  "assets/icon/bottombar/calendar-range.png",
                  width: 26,
                  height: 26,
                ),
              ),
            ),
            IconButton(
              onPressed: () {Get.to(const ProfileView());},
              icon: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Image.asset(
                  "assets/icon/bottombar/user.png",
                  width: 26,
                  height: 26,
                ),
              ),
            ),
          ],
        ));
  }
}
