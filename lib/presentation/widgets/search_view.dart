import 'package:flutter/material.dart';

@override
Widget InputSearch(BuildContext context, TextEditingController controller) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    padding: const EdgeInsets.symmetric(horizontal: 10, ),
    decoration: BoxDecoration(
      color: Colors.black12,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Row(
      children: [
        const Icon(Icons.search, color: Colors.grey),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Manzil',
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    ),
  );
}
