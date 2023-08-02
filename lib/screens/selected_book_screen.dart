import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/models/popularbook_model.dart';
import '/widgets/custom_tab_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SelectedBookScreen extends StatelessWidget {
  final PopularBookModel popularBookModel;

  const SelectedBookScreen({Key? key, required this.popularBookModel})
      : super(key: key);

  get directions => popularBookModel.directions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
        height: 49,
        color: Colors.transparent,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF5F9BFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () async {
            final Uri _url = Uri.parse(popularBookModel.directions);
            final urlString = _url.toString();
            if (!await launchUrl(_url)) {
              await launch(urlString);
            } else {
              throw 'Could not launch $urlString';
            }
          },
          child: Text(
            'Read More',
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Color(0xFF5F9BFF),
                expandedHeight: MediaQuery.of(context).size.height * 0.5,
                flexibleSpace: Container(
                  color: Color(popularBookModel.color),
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 25,
                        top: 35,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/home',
                            );
                          },
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                            child: SvgPicture.asset(
                                'assets/icons/icon_back_arrow.svg'),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 62),
                          width: 172,
                          height: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(popularBookModel.image),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 25),
                  child: Text(
                    popularBookModel.title2,
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7, left: 25),
                  child: Text(
                    popularBookModel.author,
                    style: GoogleFonts.openSans(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 7, left: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '',
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: Color(0xFF5F9BFF),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          popularBookModel.published,
                          style: GoogleFonts.openSans(
                              fontSize: 32,
                              color: Color(0xFF5F9BFF),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )),
                Container(
                  height: 28,
                  margin: const EdgeInsets.only(top: 23, bottom: 36),
                  padding: const EdgeInsets.only(left: 25),
                  child: DefaultTabController(
                    length: 1,
                    child: TabBar(
                        labelPadding: const EdgeInsets.all(0),
                        indicatorPadding: const EdgeInsets.all(0),
                        isScrollable: true,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        labelStyle: GoogleFonts.openSans(
                            fontSize: 14, fontWeight: FontWeight.w700),
                        unselectedLabelStyle: GoogleFonts.openSans(
                            fontSize: 14, fontWeight: FontWeight.w600),
                        indicator: RoundedRectangleTabIndicator(
                            weight: 2, width: 30, color: Colors.black),
                        tabs: [
                          Tab(
                            child: Container(
                              margin: const EdgeInsets.only(right: 39),
                              child: const Text('Description'),
                            ),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                  child: Text(
                    popularBookModel.description,
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      letterSpacing: 1.5,
                      height: 2,
                    ),
                  ),
                )
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
