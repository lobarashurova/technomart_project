import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technomart_project/presentation/stores/stores_screen.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F2F2),
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Profile",
            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500)),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // firstContainer(),
            secondContainer(),
            thirdContainer(),
            fourthContainer()
          ],
        ),
      ),
    );
  }

  Container fourthContainer() {
    return Container(
            width: double.infinity,
            height: 180,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: const BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              children: [
                InkWell(
                  hoverColor: Colors.amberAccent,
                  focusColor: Colors.amberAccent,
                  overlayColor: MaterialStatePropertyAll(Colors.amberAccent),
                  splashColor: Colors.amberAccent,
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>const StoresScreen()
                        ));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8, left: 8),
                          child: Icon(Icons.warehouse_outlined, color: Colors.black54, ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 13, right: 8, top: 8),
                          child: Text(
                            "Bizning do'konlarimiz",
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Icon(Icons.info_outline, color: Colors.black54,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 8),
                        child: Text(
                          "Ma'lumot",
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Icon(Icons.queue_sharp, color: Colors.black54,),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Text(
                          "Qo'llab quvvatlash markazi",
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }

  Container thirdContainer() {
    return Container(
      width: double.infinity,
      height: 120,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: const BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8, left: 8),
                  child: Icon(Icons.location_on_outlined, color: Colors.black54,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Text(
                    "Shahar",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Icon(Icons.language, color: Colors.black54,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8),
                  child: Text(
                    "Ilova tili",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container secondContainer() {
    return Container(
      width: double.infinity,
      height: 160,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: const BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8, left: 8),
                  child: Icon(Icons.percent, color: Colors.black54,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Text(
                    "Aksiya",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Icon(Icons.favorite_border, color: Colors.black54,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8),
                  child: Text(
                    "Sevimlilar",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Icon(Icons.balance, color: Colors.black54,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Text(
                    "Taqqoslash",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container firstContainer() {
    return Container(
      width: double.infinity,
      height: 130,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Text(
              "Xarid qilish, buyurtmalarni kuzatish muddati to'lov uchun tizimga kiring!",
              style: GoogleFonts.nunitoSans(
                fontSize: 15,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {

            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))))),
            child:
                Text("Kirish", style: GoogleFonts.aBeeZee(color: Colors.black)),
          )
        ],
      ),
    );
  }
}
