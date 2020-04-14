import 'package:flutter/material.dart';
import 'package:mergeme/Pages/Lists.dart';



class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
 List<Lists> categories =[
   Lists(text:'Offer a Job'),
   Lists(text:'Search for a Work'),
   Lists(text:'Learn a Trade'),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('MergeMe',
        style: TextStyle(
          fontSize: 50.0,
        ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.blue[900],
          ),
        ),
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Choose from the categories below',
            style: TextStyle(
              fontSize: 22.0,
                  color: Colors.white
            ),
            ),
          ),
          preferredSize: Size.fromHeight(90.0),),
        brightness: Brightness.light,
        

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: DrawerHeader(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/jene.jpg'),
                      radius: 50.0,
                    ),
                    SizedBox(width: 10.0,),

                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Column(
                        children: <Widget>[
                          Text('Ken Jessie',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                          ),
                          Text('Bead Making',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),

                decoration: BoxDecoration(

                  color: Colors.blue[900],

                ),

              ),
            ),
            ListTile(
              title: Text("Home",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
              ),
              leading: Icon(Icons.home, color: Colors.black,),
              onTap: () {},
            ),
            Divider(
              height: 15.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("My Profile",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),),
              leading: Icon(Icons.person, color: Colors.black,),
              onTap: () {},
            ),
            Divider(
              height: 15.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Dashboard",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),),
              leading: Icon(Icons.dashboard, color: Colors.black,),
              onTap: () {},
            ),
            Divider(
              height: 12.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Feedback",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),),
              leading: Icon(Icons.rss_feed, color: Colors.black,),
              onTap: () {},
            ),
            Divider(
              height: 12.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Find a Job",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),),
              leading: Icon(Icons.search, color: Colors.black,),
              onTap: () {},
            ),
            Divider(
              height: 10.0,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Logout",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),),
              leading: Icon(Icons.lock_outline, color: Colors.black,),
              onTap: () {
                Navigator.pop(context, '/home');
              },
            ),
          ],
        ),
      ),
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back2.jpg'),
            fit: BoxFit.fill,
          ),

        ),
        padding: EdgeInsets.only(top: 120, bottom: 120),
        child: PageView.builder(
          controller: PageController(
            viewportFraction: 0.7,
          ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                child: Card(
                  color: Colors.blue[900],
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                  child: ListTile(
                    onTap: () {},
                    title: Center(
                      widthFactor: 15.0,
                      child: Text(categories[index].text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30

                      ),
                      ),
                    ),
                  ),
                ),
              );
            }

        ),
      )


    );
  }
}
