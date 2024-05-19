import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Style.dart';

class ToDoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ToDoPageView();
  }
}

class ToDoPageView extends State<ToDoPage> {
  List ToDoList = [];
  String item = "";

  MyInputOnChange(content) {
    setState(() {
      item = content;
    });
  }

  AddItem() {
    setState(() {
      ToDoList.add({'item': item});
    });
  }

  RemoveItem(index) {
    setState(() {
      ToDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text(
          'To-do List',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        shape: const RoundedRectangleBorder(
            //borderRadius: BorderRadius.all(Radius.circular(15),),
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        )),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/hero.png'),
            ),
          ),
          // IconButton(onPressed: (){},
          //     icon: Icon(Icons.person),),
          //  icon: Image.asset('assets/images/hero.png',
          //   width: 10,
          //   height: 10,
          //  // fit: BoxFit.cover,
          // ),
          // ),

        ],
      ),
      
      // drawer: Drawer(
      //
      // ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: Image.asset('assets/images/hero.png',),
                  accountName: Text('\nGolam Ali',
                    style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,),),
                  accountEmail: Text(' ID: 1111007\n alicsebaiust01@gmail.com',),
                  decoration: BoxDecoration(color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.home_filled, size: 25,color: Colors.black,
              ),
              title: Text('Classes',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
              ),
            ),
            ListTile(
              onTap: (){
              },
              leading: Icon(Icons.calendar_today_outlined, size: 25,
                color:Colors.black,),
              title: Text('Calendar',
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                  color:Colors.black,),
              ),
            ),
            ListTile(
              onTap: (){
              },
              leading: Icon(Icons.stream_outlined, size: 25,
                color: Colors.black,
              ),
              title: Text('Course',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
              ),
            ),
            Container(
              child: Divider(thickness: 2,),
            ),
            Text(' More', style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            ListTile(
              // hoverColor: Colors.black,
              onTap: (){},
              leading: Icon(Icons.list_alt, size: 25,
              ),
              tileColor: Colors.amberAccent,
              title: Text('To Do',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
              ),
            ),

            ListTile(
              onTap: (){},
              leading: Icon(Icons.bookmark_added, size: 25,
              ),
              title: Text('CSE-11th Batch',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.contact_phone, size: 25,
              ),
              title: Text('Contact',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.info_outlined, size: 25,
              ),
              hoverColor: Colors.amber,
              title: Text('FAQ',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
       child: Icon(Icons.add,
       color: Colors.blueGrey,
      ),
        hoverColor: Colors.amber,
        // backgroundColor: Colors.black12,
        backgroundColor: Colors.white60,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 12,),
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(
                        flex: 70,
                        child: TextFormField(
                          onChanged: (content) {
                            MyInputOnChange(content);
                          },
                          decoration: AppInputDecoration("Enter Your To-Do"),
                        )),
                    Expanded(
                        flex: 20,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: ElevatedButton(
                            onPressed: () {
                              AddItem();
                            },
                            child: Text('Add',
                            style: AppButtonTextStyle(),
                            ),
                            style: AppButtonStyle(),
                          ),
                        )),
                  ],
                )),
            Expanded(
                flex: 90,
                child: ListView.builder(
                    itemCount: ToDoList.length,
                    itemBuilder: (context, index) {
                      return Card(
                          child: SizeBox50(Row(
                        children: [
                          Expanded(
                              flex: 80,
                              child: Text(ToDoList[index]['item'].toString())),
                          Expanded(
                              flex: 20,
                              child: TextButton(
                                  onPressed: () {
                                    RemoveItem(index);
                                  },
                                  child: Icon(Icons.delete))),
                        ],
                      )));
                    }))
          ],
        ),
      ),
    );
  }
}
