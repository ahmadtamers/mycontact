import 'package:flutter/material.dart';
import 'package:gammaltechcourseproject/ui/myContactProvider/myContactProvider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gammaltechcourseproject/ui/gridviewcontacts/gridViewContacts.dart';
import 'package:gammaltechcourseproject/ui/SMListContact/SMListContact.dart';

class MyContact extends StatelessWidget {
  MyContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {},
          child: Icon(
            Icons.home,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Center(
          child: Title(
              color: Colors.black,
              child: Text(
                "My Contact",
                style: TextStyle(color: Colors.black, fontSize: 30),
              )),
        ),
        actions: [
          Consumer<MyContactProvider>(
            builder: (context, value, child) => GestureDetector(
                onTap: () {
                  value.getHistoryIconLinkValue() == null
                      ? launchUrl(Uri.parse("tel:+201023639954"))
                      : launchUrl(value.getHistoryIconLinkValue()!);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: value.getHistoryIconValue() == null
                      ? Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 30,
                        )
                      : Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image(
                            image: AssetImage(
                                "assets/${value.getHistoryIconValue()}"),
                          ),
                        ),
                )),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            /*mmkn t7ot sizedbox b width double.infinity bdal el CrossAxisAlignment.stretch  */
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 100,
                ),
                child: ClipRRect(
                  child: Image(image: AssetImage("assets/pp.jpeg")),
                  borderRadius: BorderRadius.circular(160),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Route",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Row(
                /*mmkn ast5dem (mainAxisAlignment: MainAxisAlignment.center) bdal*/
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("+201023639954",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse("tel:+201023639954"));
                      },
                      icon: const Icon(
                        Icons.phone,
                        size: 30,
                      ))
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Gridviewcontacts(SMIconsGridList: SMIconsList),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     InkWell(
              //       onTap: () {},
              //       child: Image(
              //         image: AssetImage("assets/waIcon.png"),
              //         width: 80,
              //       ),
              //     ),
              //     InkWell(
              //       onTap: () {},
              //       child: Image(
              //         image: AssetImage("assets/fbIcon.png"),
              //         width: 60,
              //       ),
              //     ),
              //     InkWell(
              //       onTap: () {},
              //       child: Image(
              //         image: AssetImage("assets/iG.png"),
              //         width: 70,
              //       ),
              //     )
              //   ],
              // ),
              // SizedBox(
              //   height: 30,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     InkWell(
              //       onTap: () {},
              //       child: Image(
              //         image: AssetImage("assets/GitHubIcon.png"),
              //         width: 90,
              //       ),
              //     ),
              //     InkWell(
              //       onTap: () {},
              //       child: Image(
              //         image: AssetImage("assets/inkedinIcon.png"),
              //         width: 63,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
