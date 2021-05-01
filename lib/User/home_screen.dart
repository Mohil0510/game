import 'package:flutter/material.dart';
import 'package:game/model/poster.dart';
import 'package:game/widget/comman_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Poster> posterlist = [];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hi Cybdom!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/avtar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(95),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Saerch for your fovorite game..',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TabBar(
                  labelColor: Colors.white,
                  isScrollable: true,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.white,
                  automaticIndicatorColorAdjustment: true,
                  indicatorWeight: 3,

                  // indicator: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(50),
                  //   color: Colors.black,
                  // ),
                  tabs: [
                    CommanWidget.category(name: 'Action'),
                    CommanWidget.category(name: 'Advencher'),
                    CommanWidget.category(name: 'thriller'),
                    CommanWidget.category(name: 'Horror'),
                    CommanWidget.category(name: 'Science faction'),
                    CommanWidget.category(name: 'Fantansy'),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: const EdgeInsets.all(10),
              children: posterlist.map((Poster poster) {
                return CommanWidget.categoryList(categoryListData:poster );
              }).toList(),
            ),
            Container(
              child: Center(
                child: Text(
                  'Display Tab 2',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Display Tab 3',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Display Tab 4',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Display Tab 1',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Display Tab 2',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
