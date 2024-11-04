// lib/app/widgets/input_text.components.dart

import 'package:flutter/material.dart';
import 'package:rentalin_id/app/data/constant/color.dart';

class InputText extends StatelessWidget {
  final String labelText; // Teks label
  final String hintText; // Teks petunjuk
  final String? iconPath; // Jalur ke ikon (opsional)
  final TextEditingController? controller; // Controller untuk field teks
  final ValueChanged<String>? onChanged; // Callback untuk perubahan teks

  const InputText({
    super.key,
    required this.labelText,
    required this.hintText,
    this.iconPath, // Buat iconPath opsional
    this.controller, // Tambahkan parameter controller
    this.onChanged, // Tambahkan callback onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            color: tdBlue,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          controller: controller, // Gunakan controller
          onChanged: onChanged, // Gunakan callback onChanged
          cursorColor: tdSecBlue,
          style: const TextStyle(color: tdBlue, fontSize: 16),
          decoration: InputDecoration(
            prefixIcon: iconPath != null // Cek apakah iconPath disediakan
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      iconPath!,
                      width: 20,
                      height: 20,
                    ),
                  )
                : null,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: tdSecBlue),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: tdSecBlue),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: tdSecBlue),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            fillColor: tdWhite,
            hoverColor: tdSecBlue,
            filled: true,
            alignLabelWithHint: false,
            hintText: hintText,
            hintStyle: const TextStyle(color: tdSecBlue),
          ),
        ),
      ],
    );
  }
}