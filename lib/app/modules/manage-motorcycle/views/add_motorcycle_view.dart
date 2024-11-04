// lib/app/modules/manage-motorcycle/views/add_motorcycle_view.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentalin_id/app/modules/manage-motorcycle/controllers/motorcycle_input_controller.dart'; // Import controller
import 'package:rentalin_id/app/data/constant/color.dart';
import 'package:rentalin_id/app/modules/manage-motorcycle/views/add_motorcycle_detail_view.dart';
import 'package:rentalin_id/app/widgets/app_bar.components.dart';
import 'package:rentalin_id/app/widgets/button_main.components.dart';
import 'package:rentalin_id/app/widgets/input_text.components.dart';

class AddMotorcycleView extends StatelessWidget {
  const AddMotorcycleView({super.key});

  @override
  Widget build(BuildContext context) {
    final MotorcycleInputController inputController = Get.put(MotorcycleInputController()); // Inisialisasi controller

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: tdBg,
          toolbarHeight: 80,
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          title: const AppBarComponents(
            nameMenu: 'Add New Motorcycle',
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 23, right: 23),
        child: Column(
          children: [
            const Text(
              "Motor Picture",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: tdBlue,
              ),
            ),
            SizedBox(
              width: 380,
              height: 100,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: tdWhite,
                  foregroundColor: tdWhite,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: tdBlue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/icon/image-plus.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InputText(
                labelText: "Merk Motor",
                hintText: "Honda",
                onChanged: (value) => inputController.merk.value = value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InputText(
                labelText: "Motor Name",
                hintText: "PCX",
                onChanged: (value) => inputController.motorName.value = value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InputText(
                labelText: "Type Motor",
                hintText: "Matic",
                onChanged: (value) => inputController.type.value = value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InputText(
                labelText: "Plat Motor",
                hintText: "KH 1213 WH",
                onChanged: (value) => inputController.plate.value = value,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ButtonMainComponents(
                buttonName: "Next",
                nextPage: () {
                  Get.to(const AddMotorcycleDetailView());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}