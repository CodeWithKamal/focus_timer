import 'package:flutter/material.dart';
import 'package:focustimer/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green2,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: green1),
        title: Text(
          "About Me",
          style: TextStyle(
            color: green1,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  "assets/logo.png",
                  width: 150,
                  height: 150,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Focus Timer",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: green1,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 72,
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                decoration: BoxDecoration(
                  color: green1,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      color: Colors.black.withOpacity(0.16),
                    ),
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Designed & Developed By",
                          style: TextStyle(
                            color: green2,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Kamal Panara",
                          style: TextStyle(
                            color: green4,
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0.0,
                      top: 0.0,
                      right: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              _launchURL("https://instagram.com/codewithkamal");
                            },
                            child: Image.asset("assets/insta.png"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL("https://codewithkamal.in");
                            },
                            child: Image.asset("assets/web.png"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 72,
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: green1,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      color: Colors.black.withOpacity(0.16),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Support me at Patreon",
                      style: TextStyle(
                        color: green2,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchURL(
                            "https://www.patreon.com/join/codewithkamal?");
                      },
                      child: Image.asset("assets/patreon.png"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 72,
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: green1,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      color: Colors.black.withOpacity(0.16),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Checkout the making of this app",
                      style: TextStyle(
                        color: green2,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchURL(
                            "https://www.youtube.com/channel/UCyWaeN7uSlwMAbOMgmOY-7A");
                      },
                      child: Image.asset("assets/youtube.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
