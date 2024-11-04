// lib/app/modules/manage-motorcycle/views/add_motorcycle_detail_view.dart

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:rentalin_id/app/modules/manage-motorcycle/controllers/motorcycle_input_controller.dart'; // Import controller
import 'package:rentalin_id/app/data/constant/color.dart';
import 'package:rentalin_id/app/modules/manage-motorcycle/views/manage_motorcycle_view.dart'; // Import ManageMotorcycleView
import 'package:rentalin_id/app/widgets/app_bar.components.dart';
import 'package:rentalin_id/app/widgets/input_text.components.dart';

class AddMotorcycleDetailView extends StatelessWidget {
  const AddMotorcycleDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final MotorcycleInputController inputController = Get.find(); // Mengambil controller yang sudah ada

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 344,
              height: 148,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/img1.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  border: Border.all(color: tdGrey),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              width: 345,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Detail Motor",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8), // Spasi antara judul dan detail
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Merk Motor"),
                      Text(inputController.merk.value),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Motor Name"),
                      Text(inputController.motorName.value),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Type Motor"),
                      Text(inputController.type.value),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Plat Motor"),
                      Text(inputController.plate.value),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: InputText(
                labelText: "Is Recommendation",
                hintText: "Yes",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: InputText(
                labelText: "Price/Day",
                hintText: "Rp. 150.000",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Tombol "Go Back"
                SizedBox(
                  width: 163,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: tdBlue,
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: tdBlue),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Go Back',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                // Tombol "Add New"
                SizedBox(
                  width: 163,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      _addMotorcycleToFirestore(inputController); // Memanggil method untuk menambah data
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: tdgreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Add New',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _addMotorcycleToFirestore(MotorcycleInputController inputController) async {
    try {
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
        barrierDismissible: false,
      );

      final CollectionReference motorcycles = FirebaseFirestore.instance.collection('motorcycles');
      
      await motorcycles.add({
        'merk': inputController.merk.value,
        'motorName': inputController.motorName.value,
        'type': inputController.type.value,
        'plate': inputController.plate.value,
        'isRecommendation': inputController.isRecommendation.value,
        'pricePerDay': inputController.pricePerDay.value,
        'createdAt': FieldValue.serverTimestamp(),
      });

      Get.back();
      Get.snackbar(
        "Success", 
        "Motorcycle details added successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

      inputController.clear(); // Kosongkan input field setelah berhasil ditambahkan

      // Navigasi ke ManageMotorcycleView setelah menambahkan sepeda motor
      Get.to(const ManageMotorcycleView());

    } catch (e) {
      Get.back();
      Get.snackbar(
        "Error", 
        "Failed to add motorcycle details: $e",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}