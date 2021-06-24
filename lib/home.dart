import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: Material(
                elevation: 5,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      icon: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Icon(Icons.dehaze)),
                      suffixIcon: Container(
                        margin: EdgeInsets.all(5),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/profile.jpg"),
                        ),
                      )),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate(List.generate(100, (int i) {
              return _listItem(i);
            })))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.blue.shade300,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _listItem(int i) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(
              "F",
              style: TextStyle(color: Colors.white),
            ),
          ),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Flutter",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  Text("9.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Developer from Flutter",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("This is Gmail Clone"), Icon(Icons.star_border)],
          ),
        ),
        Divider(
          height: 4,
          color: Colors.grey,
        )
      ],
    );
  }
}
