import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentalin_id/app/modules/rent/controllers/rent_controller.dart';
import 'package:rentalin_id/app/widgets/input_text_noicon.components.dart';

import '../../../data/constant/color.dart';
import '../../../widgets/app_bar.components.dart';
import 'rent_view.dart';
import 'rent2_view.dart';
import 'rent4_view.dart';

class Rent3View extends GetView<RentController>{
  const Rent3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: tdBg,
        toolbarHeight: 100,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: const AppBarComponents(nameMenu: 'Rent Motorcycle',),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                motorP(),
                motorI(),
              ],
            ),
            Info3(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BtnBk2(),
                SizedBox(width: 18),
                BtnN3(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Info3 extends StatelessWidget {
  const Info3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.fromLTRB(13, 21, 14, 21),
      width: 344,
      height: 400  ,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        children: [
          InputTextNoIcon(
            labelText: 'Deliver Address', 
            hintText: 'Enter your Delivery Address'
          ),
          SizedBox(height: 10,),
          InputTextNoIcon(
            labelText: 'Pickup Address', 
            hintText: 'Enter your Pickup Address'
          ),
          SizedBox(height: 10,),
          InputTextNoIcon(
            labelText: 'Method Payment', 
            hintText: 'Select your method payment'
          ),
          SizedBox(height: 10,),
           InputTextNoIcon(
            labelText: 'Total Payment', 
            hintText: 'Rp.300.000'
          ),
        ],
      ),
    );
  }
}

class BtnBk2 extends StatelessWidget {
  const BtnBk2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 163,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Get.to(const Rent2View());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: tdWhite,
          foregroundColor: tdBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          "Go Back",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class BtnN3 extends StatelessWidget {
  const BtnN3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 163,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Get.to(const Rent4View());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: tdBlue,
          foregroundColor: tdWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          "Next",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}