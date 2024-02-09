
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
Widget locationItem(String region, String addres, String hour, void Function() onClick) {
  return InkWell(
      onTap: onClick,
    child: Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  'assets/images/ic_location.png',
                  width: 36,
                  height: 36,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      addres,
                      maxLines: 2,
                      style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Du-Ya(${hour})',
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ],
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
              )
            ],
          ),
          const Divider()
        ],
      ),
    ),
  );
}
