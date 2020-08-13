import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static const String id = "home_page";
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Drawer Header'),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 100.0,
                          width: double.infinity,
                          color: Colors.blue,
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: <Widget>[
                                  GestureDetector(
                                    child: Icon(
                                      Icons.dehaze,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "Location",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text("Place Name",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 180.0,
                                  ),
                                  Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              Container(
                                width: 370,
                                child: TextField(
                                  decoration: InputDecoration(
                                      labelText: "Search",
                                      prefixIcon: Icon(Icons.search),
                                      border: OutlineInputBorder()),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          child: Image.asset(
                            'images/homegroceryk.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Our Guarentees",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        child: Image.asset(
                                          'images/1.png',
                                          fit: BoxFit.cover,
                                        ),
                                        height: 60.0,
                                        width: 60.0,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 3.0,
                                                spreadRadius: 1.0,
                                              ),
                                            ]),
                                      ),
                                      Text(
                                        "Quality",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("You can trust"),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        child: Image.asset(
                                          'images/2.png',
                                          fit: BoxFit.cover,
                                        ),
                                        height: 60.0,
                                        width: 60.0,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 3.0,
                                                spreadRadius: 1.0,
                                              ),
                                            ]),
                                      ),
                                      Text(
                                        "Upto Rs.200",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Free Delivery"),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        child: Image.asset(
                                          'images/j.png',
                                          fit: BoxFit.cover,
                                        ),
                                        height: 60.0,
                                        width: 60.0,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 3.0,
                                                spreadRadius: 1.0,
                                              ),
                                            ]),
                                      ),
                                      Text(
                                        "On Time",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Gaurentees"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: GridTab(controller: controller),
                ),
              )
            ],
          )),
    );
  }
}

class GridTab extends StatelessWidget {
  const GridTab({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
              ),
              child: TabBar(
                controller: controller,
                unselectedLabelColor: Colors.blue,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue),
                tabs: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Tab(
                      text: "Category",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Tab(
                      text: "New Arrival",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Tab(
                      text: "Budget Friendly",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: TabBarView(
                controller: controller,
                children: <Widget>[
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/3.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/4.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/5.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/6.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/7.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/8.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/9.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/10.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/11.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/12.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/13.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/14.png'),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/3.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/4.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/5.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/6.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/7.png'),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/7.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/8.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/9.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/10.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/11.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/12.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/13.png'),
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('images/14.png'),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
