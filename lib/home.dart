import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail Clone'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Eslam Medhat",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text("eslammedhat765@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/28203059?v=4'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage('https://user-images.githubusercontent.com/28203059/159008453-1fb9a75a-7503-41ae-9fe2-b70d8bdccc57.png'
                ),
                ),
              ],
            ),
            ListTile(
              title: Text("Sent"),
              leading: Icon(Icons.send),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Inbox"),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text("Stared"),
              leading: Icon(Icons.star),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Archive"),
              leading: Icon(Icons.archive),
            ),
            ListTile(
              title: Text("Chat"),
              leading: Icon(Icons.chat),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Log out"),
              leading: Icon(Icons.logout),
            ),


          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'chat'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: (){

        },
      ),
    );
  }
}
