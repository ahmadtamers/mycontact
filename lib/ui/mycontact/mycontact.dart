import 'package:flutter/material.dart';
import 'package:gammaltechcourseproject/ui/SocialMediaIcon/SMICON.dart';
import 'package:url_launcher/url_launcher.dart';

class IconAndUrl {
  String IconImgAdd;
  String IconImgUrl;
  IconAndUrl({required this.IconImgAdd, required this.IconImgUrl});
}

class MyContact extends StatelessWidget {
  MyContact({Key? key}) : super(key: key);

  List<IconAndUrl> SMIconsList = [
    IconAndUrl(
        IconImgAdd: "fbIcon.png",
        IconImgUrl: "https://www.facebook.com/Routelearning/"),
    IconAndUrl(
        IconImgAdd: "iG.png",
        IconImgUrl: "https://www.instagram.com/routelearning/"),
    IconAndUrl(
        IconImgAdd: "waIcon.png", IconImgUrl: "https://wa.me/+201023639954"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                 padding: EdgeInsets.symmetric(horizontal: 100,),
                 child: ClipRRect(
                  child: Image(image: AssetImage("assets/pp.jpeg")),
                  borderRadius: BorderRadius.circular(500),
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
              GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 65),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: SMIconsList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 60,
                    crossAxisSpacing: 100,
                  ),
                  itemBuilder: (BuildContext, index) {
                    return SMediaIcon(
                      iconAdd: SMIconsList[index].IconImgAdd,
                      iconURL: SMIconsList[index].IconImgUrl,
                    );
                  }),
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
