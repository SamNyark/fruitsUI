import 'package:flutter/material.dart';
import 'package:new_beginning/TabPages.dart';

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
        body: SafeArea(
          child: ListView(
            children:  [
              const SizedBox(height: 10,),
              Row(
               children: [
                 IconButton(onPressed: (){}, icon: const Icon(Icons.menu, size: 25,color: Colors.grey,)),
                 const SizedBox(width: 25,),
                 Container(
                   height: 40,
                   width: 220,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(25.0),
                     color: Colors.grey.withOpacity(0.1)
                   ),
                   child: const TextField(
                     cursorColor: Colors.grey,
                     decoration: InputDecoration(
                       hintText: "search",
                       prefixIcon: Icon(Icons.search, color: Colors.grey,),
                       contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                       border: InputBorder.none,
    
                     ),
                   ),
                 ),
                 const SizedBox(width: 50,),
                 IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart, size: 25, color: Colors.grey,))
               ], 
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text("All Fruits", style: TextStyle(
                  fontSize: 22
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
                SizedBox(
                  height: MediaQuery.of(context).size.height - 300,
                  child: const TabBarView(children: [
                      TabPage(),
                      TabPage(),
                      TabPage(),
                      TabPage()

                  ]),
                )
            ],
          ),
        ),
      ),
    );
  }
}