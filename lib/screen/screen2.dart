import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(500),
                    child: Image.network(
                      "https://img.freepik.com/free-vector/smiling-redhaired-boy-illustration_1308-176664.jpg",
                      height: 100,
                      errorBuilder: (_, __, ___) {
                        return const Icon(Icons.image, size: 100);
                      },
                    ),
                  ),
                  Text(
                    "Kazi Omar Faruk",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  tileColor: Colors.green[100],
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  subtitle: Text("Tap to logout"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Button"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          TextButton(onPressed: (){
            alertDialog(context);
          }, child: Text("button 2")),
          OutlinedButton(onPressed: (){
            DialogBox(context);
          }, child: Text("outlined button")),

        InkWell(
          splashColor: Colors.red[200],
          onTap: (){
           alertDialog(context);
          },
          child: Card(
            color: Colors.green[300],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Hello"),
            ),
          ),
        ),
          
          ],
        ),
      ),
    );
  }
}

DialogBox(BuildContext context) {
  showDialog(context: context, builder: (context){
     return Dialog(
      child: Container(
        padding: EdgeInsets.all(20),
        height: 200,
        width: 300,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("this is a dialog box", style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, 
          child: Text("Close")),
          ],
        )
      ),
     );
      
  });
}

alertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Alert Dialog"),
        content: Text("This is an alert dialog box."),
        actions: [
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Yes"),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("No"),
          ),
        ],
      );
    },
  );
}

