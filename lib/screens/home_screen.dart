import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/models/newbook_model.dart';
import '/models/popularbook_model.dart';
import '/screens/selected_book_screen.dart';
import '/widgets/custom_tab_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 25, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hi, Joshua',
                        style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                      Text(
                        'UEU Djournal Portal',
                        style: GoogleFonts.openSans(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  )),
              Container(
                height: 39,
                margin: EdgeInsets.only(left: 25, right: 25, top: 18),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 238, 238, 238)),
                child: Stack(
                  children: <Widget>[
                    TextField(
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      style: GoogleFonts.openSans(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 19, right: 50, bottom: 8),
                          border: InputBorder.none,
                          hintText: 'Find the djournal...',
                          hintStyle: GoogleFonts.openSans(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600)),
                    ),
                    Positioned(
                      right: 0,
                      child:
                          SvgPicture.asset('assets/svg/background_search.svg'),
                    ),
                    Positioned(
                      top: 8,
                      right: 9,
                      child: SvgPicture.asset(
                          'assets/icons/icon_search_white.svg'),
                    )
                  ],
                ),
              ),
              Container(
                height: 25,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(left: 25),
                child: DefaultTabController(
                  length: 1,
                  child: TabBar(
                      labelPadding: EdgeInsets.all(0),
                      indicatorPadding: EdgeInsets.all(0),
                      isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      labelStyle: GoogleFonts.openSans(
                          fontSize: 14, fontWeight: FontWeight.w700),
                      unselectedLabelStyle: GoogleFonts.openSans(
                          fontSize: 14, fontWeight: FontWeight.w600),
                      indicator: RoundedRectangleTabIndicator(
                          weight: 2, width: 10, color: Colors.black),
                      tabs: [
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text('New'),
                          ),
                        ),
                      ]),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 21),
                height: 210,
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 25, right: 6),
                    itemCount: newbooks.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          print('ListView Tapped');
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedBookScreen(
                                  popularBookModel: newest[index]),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 19),
                          height: 210,
                          width: 153,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(newbooks[index].image),
                              )),
                        ),
                      );
                    }),
              ),

              //TRENDING
              Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: Text(
                  'Trending',
                  style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              ListView.builder(
                  padding: EdgeInsets.only(top: 25, right: 25, left: 25),
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: trending.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print('ListView Tapped');
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectedBookScreen(
                                popularBookModel: trending[index]),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 19),
                        height: 81,
                        width: MediaQuery.of(context).size.width - 25,
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 81,
                              width: 62,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(trending[index].image),
                                  ),
                                  color: Colors.orange),
                            ),
                            SizedBox(
                              width: 21,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  child: Text(
                                    trending[index].title,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  trending[index].author,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.openSans(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '' + trending[index].published,
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: Text(
                  'Popular',
                  style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              ListView.builder(
                  padding: EdgeInsets.only(top: 25, right: 25, left: 25),
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: populars.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print('ListView Tapped');
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectedBookScreen(
                                popularBookModel: populars[index]),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 19),
                        height: 81,
                        width: MediaQuery.of(context).size.width - 50,
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 81,
                              width: 62,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(populars[index].image),
                                  ),
                                  color: Colors.orange),
                            ),
                            SizedBox(
                              width: 21,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  populars[index].title,
                                  style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  populars[index].author,
                                  style: GoogleFonts.openSans(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '' + populars[index].published,
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
