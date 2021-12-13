import 'package:facebook/tabsPage.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class detailsPage extends StatelessWidget {
  const detailsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFFe9eaec),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              cursorColor: Color(0xFF000000),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF000000).withOpacity(0.5),
                  ),
                  hintText: "Search",
                  border: InputBorder.none),
            ),
          ),
          leading: Row(
            children: [
              SizedBox(width: 8),
              IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(Icons.forward, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/image.jpeg'),
              ),
              SizedBox(
                height: 12,
              ),
              const Details(),
              const Buttons(),
              const Followers(),
              const Divider(),
              const Tabs(),
              SizedBox(
                height: 8,
                child: Container(
                  color: Color.fromRGBO(199, 199, 199, 1),
                ),
              ),
              About(),
              SizedBox(
                height: 8,
                child: Container(
                  color: Color.fromRGBO(199, 199, 199, 1),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label:""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_outlined),
              label:""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label:""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label:""
            ),
          ],
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 18.0),
            child: Text(
              "About",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(Icons.info),
                    SizedBox(width: 4),
                    Text(
                      "New playground. Same kid",
                      style: TextStyle(color: Colors.black),
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(Icons.web),
                    SizedBox(width: 4),
                    Text(
                      "www.sebsmith.com",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(Icons.folder),
                    SizedBox(width: 4),
                    Text(
                      "Actor",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                    )
                  ]),
                )
              ],
            ),
          ),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "See All",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
            ),
            SizedBox(width: 4),
            Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey,
                )),
          ]),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Center(
          child: TabBar(
            isScrollable: true,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(child: Text("Home")),
              Tab(child: Text("Posts")),
              Tab(child: Text("About")),
              Tab(child: Text("Videos")),
              Tab(child: Text("Photos")),
              Tab(child: Text("Events")),
            ],
          ),
        ));
  }
}

class Followers extends StatelessWidget {
  const Followers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(children: [
          CircleAvatar(
              backgroundImage: AssetImage('assets/image.jpeg'), radius: 14),
          CircleAvatar(
              backgroundImage: AssetImage('assets/image.png'), radius: 14)
        ]),
        Text('Allie,Atishay, and 2,307,772 others like this')
      ],
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.message),
                        SizedBox(width: 4),
                        Text('Follow')
                      ],
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.message_outlined,
                  color: Colors.black,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(242, 242, 242, 0.75)),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(242, 242, 242, 0.75)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/photo.jpeg'),
        radius: 30,
      ),
      title: Row(
        children: [
          Text(
            "Sebastian Smith",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            'assets/bluetick.png',
            width: 20,
          )
        ],
      ),
      subtitle: Text('Actor'),
      trailing: Column(
        children: [
          SizedBox(height: 4),
          Icon(Icons.thumb_up),
          SizedBox(height: 2),
          Text("Like")
        ],
      ),
    );
  }
}
