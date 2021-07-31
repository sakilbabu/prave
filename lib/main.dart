import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

const List<Tab> tabs = <Tab>[
  Tab(text: 'HOME'),
  Tab(text: 'SETTINGS'),
  Tab(text: 'PROFILE'),
];
List<String> lis = ["Sam", "Dam", "Lam", "Kam"];
List<String> liss = [
  "Area of fight",
  "Area of peace",
  "Area of love",
  "Area of romance"
];


/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  get nameController => null;

  get passwordController => null;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        // The Builder widget is used to have a different BuildContext to access
        // closest DefaultTabController.
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context)!;
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              // Your code goes here.
              // To get index of current tab use tabController.index
            }
          });
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Icon(Icons.menu);
                },
                icon: Icon(Icons.menu),
              ),
              title: Text("LusX"),
              bottom: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), // Creates border
                    color: Colors.black),
                tabs: tabs,
              ),
              actions: [
                IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    onPressed: () {

                    }),
              ],
            ),
            body: TabBarView(
              children: <Widget>[
                SingleChildScrollView(
                  child: Container(
                    child: Column(children: [
                      CarouselSlider(
                        items: [
                          Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1627048679561-a9079cb4da1d?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1593642531955-b62e17bdaa9c?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzMHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1627007523381-4d3661481428?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1593642532871-8b12e02d091c?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzN3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1626964799839-aadc2fc1e738?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0NXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover,
                                ),
                              )),

                        ],
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                      Card(
                        elevation: 4.0,
                        child: Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width ,
                                height:
                                    MediaQuery.of(context).size.width * 0.65,
                                child: Image.network(
                                    "https://images.unsplash.com/photo-1598153346810-860daa814c4b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFycnklMjBwb3R0ZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Harry potter",
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Jk rowling",
                                style: TextStyle(color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4.0,
                        child: Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width ,
                                height:
                                MediaQuery.of(context).size.width * 0.65,
                                child: Image.network(
                                    "https://images.unsplash.com/photo-1627007778238-e555392e1661?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Himu",
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "humayun ahmed",
                                style: TextStyle(color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4.0,
                        child: Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height:
                                MediaQuery.of(context).size.width * 0.65,
                                child: Image.network(
                                    "https://images.unsplash.com/photo-1627007778238-e555392e1661?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "himu",
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "humayun ahmed",
                                style: TextStyle(color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4.0,
                        child: Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 230,
                                decoration: BoxDecoration( color: Colors.green,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10)
                                  )
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        top: 80,
                                        bottom: 300,
                                        child: Container(
                                          decoration: BoxDecoration( color: Colors.grey,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(50),
                                                bottomLeft: Radius.circular(50)
                                              )
                                          ),
                                    ))
                                  ],
                                ),
                               ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(12.0),
                    child: GridView.builder(
                      itemCount: lis.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Colors.blue,
                          elevation: 10,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.album, size: 20),
                                title: Text(
                                  lis[index],
                                  style: TextStyle(fontSize: 12.0),
                                ),
                                subtitle: Text(liss[index],
                                    style: TextStyle(fontSize: 12.0)),
                              ),
                              ButtonBar(
                                children: <Widget>[
                                  FlatButton(
                                    child: const Text('Edit',
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {},
                                  ),
                                  FlatButton(
                                    child: const Text('Delete',
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    )),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: ListView(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'LUSX LOGIN',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30),
                            )),
                        Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 20),
                            )),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'User Name',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            obscureText: true,
                            controller: passwordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            //forgot password screen
                          },
                          textColor: Colors.blue,
                          child: Text('Forgot Password'),
                        ),
                        Container(
                            height: 50,
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: RaisedButton(
                              textColor: Colors.white,
                              color: Colors.blue,
                              child: Text('Login'),
                              onPressed: () {
                                print(nameController.text);
                                print(passwordController.text);
                              },
                            )),
                        NewWidget(),
                      ],
                    ))
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.mail),
                  title: new Text('Messages'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text('Profile'))
              ],
            ),
          );
        }));
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Text('Do not have account?'),
        FlatButton(
          textColor: Colors.blue,
          child: Text(
            'Sign up',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            //signup screen
          },
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    ));
  }
}
