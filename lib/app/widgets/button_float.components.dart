// lib/app/widgets/button_float.components.dart

import 'package:flutter/material.dart';
import 'package:rentalin_id/app/data/constant/color.dart';

class ButtonFloatComponents extends StatelessWidget {
  final String buttonName;
  final VoidCallback nextPage;
  final IconData? icon; // Tambahkan parameter untuk ikon (opsional)
  final double width; // Tambahkan parameter untuk lebar (opsional)
  final double height; // Tambahkan parameter untuk tinggi (opsional)

  const ButtonFloatComponents({
    super.key,
    required this.buttonName,
    required this.nextPage,
    this.icon, // Ikon opsional
    this.width = 344, // Default lebar
    this.height = 52, // Default tinggi
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FloatingActionButton(
        onPressed: nextPage,
        backgroundColor: tdBlue,
        foregroundColor: tdWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon), // Tampilkan ikon jika ada
              const SizedBox(width: 8), // Spasi antara ikon dan teks
            ],
            Text(
              buttonName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}