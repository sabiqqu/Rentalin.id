import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constant/color.dart';
import '../controllers/search_controller.dart';
import 'searchAvail_view.dart';
import 'searchBooked_view.dart';
import 'search_view.dart';

class SearchRentView extends GetView<SearchingController>{
  const SearchRentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: tdBg,
      body: ListView(
        children: const [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScrBar(),

              SizedBox(
                width: 20,
              ),
              Scr(),
            ],
          ),

          SizedBox(
            height: 10,
          ),
          
          ScrOpAll(),

          SizedBox(
            height: 10,
          ),

          CardRent(),
        ],
      ),
      // bottomNavigationBar: BottomFloatBar()
    );
  }
  
}

class ScrOpRent extends StatelessWidget {
  const ScrOpRent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 70,
                height: 30,
                child: ElevatedButton(
                  onPressed: () { Get.to(const SearchView()); },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffC7DAFF),
                    foregroundColor: const Color(0xff1966FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "All",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 98,
                height: 30,
                child: ElevatedButton(
                  onPressed: () { Get.to(const SearchAvailView());},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffC7DAFF),
                    foregroundColor: const Color(0xff1966FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Available",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
               SizedBox(
                width: 90,
                height: 30,
                child: ElevatedButton(
                  onPressed: () { Get.to(const SearchBookedView());},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  const Color(0xffC7DAFF),
                    foregroundColor:  const Color(0xff1966FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Booked",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
               SizedBox(
                width: 92,
                height: 30,
                child: ElevatedButton(
                  onPressed: () { Get.to(const SearchRentView());},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  tdBlue,
                    foregroundColor:  tdWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "On Rent",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          );
  }
}