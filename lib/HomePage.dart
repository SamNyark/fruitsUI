import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_beginning/TabPages.dart';
import 'components/cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
   
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.grey),
          backgroundColor: Colors.transparent,
          elevation: 0,
              actions: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 20,
                     width: 220,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(25.0),
                       color: Colors.grey.withOpacity(0.2)
                     ),
                     child: const TextField(
                       cursorColor: Colors.grey,
                       decoration: InputDecoration(
                         hintText: "search",
                         prefixIcon: Icon(Icons.search, color: Colors.grey,),
                         contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 7),
                         border: InputBorder.none,
    
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(width: 40,),
                 IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart, size: 25, color: Colors.grey,))
          ],
        ),
        drawer: const Drawer(
          child: Text("data"),
        ),
        body: SafeArea(   
          child: ListView(
            children:  [
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text("All Fruits", style: TextStyle(
                  fontSize: 25
                ),),),
                 const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  TabBar(
                    isScrollable: true,
                    labelColor: Colors.black,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Tab(child: Text("Avocado", style: TextStyle(fontSize: 20),),),
                      Tab(child: Text("Grapes", style: TextStyle(fontSize: 20)),),
                      Tab(child: Text("Apple", style: TextStyle(fontSize: 20))),
                      Tab(child: Text("Watermelon", style: TextStyle(fontSize: 20)))
                    ],
                    
                  ),
                ),
                Container(
                  height: 400,
                  child: const TabBarView(children: [
                      TabPage(),
                      TabPage(),
                      TabPage(),
                      TabPage()

                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Sales", style: TextStyle(fontSize: 25),),
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: sales.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(16)
                      ),
                      height: 150,
                      width: 150,
                      child: Column(
                        children: [
                          Text(sales[index].price, style: const TextStyle(fontSize: 25),)
                        ],
                      ),
                  ),
                    )),
                )
            ],
          ),
        ),
      ),
    );
  }
}