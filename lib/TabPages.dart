import 'package:flutter/material.dart';
import 'package:new_beginning/components/products.dart';

class TabPage extends StatefulWidget {
  const TabPage({ Key? key }) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _buildCard(allFruits[0].price, allFruits[0].image, allFruits[0].description, allFruits[0].color),
        _buildCard(allFruits[1].price, allFruits[1].image, allFruits[1].description, allFruits[1].color),
        _buildCard(allFruits[2].price, allFruits[2].image, allFruits[2].description, allFruits[2].color),
        _buildCard(allFruits[3].price, allFruits[3].image, allFruits[3].description, allFruits[3].color),

      ],
      
    );
  }
}

Widget _buildCard(price, String imagePath, String description, color){
  return Padding(padding: const EdgeInsets.all(12),
   child: Container(
    height: 100,
    width: 250,
    decoration: BoxDecoration(
      color: Color(color),
      borderRadius: BorderRadius.circular(25)
    ),
    child: Column(
      children: [
        const SizedBox(height: 10,),
        Image.asset(imagePath,
        height: 150,
        fit: BoxFit.cover,),
        const SizedBox(height: 15,),
        Text(price, style: const TextStyle(fontSize: 30),),
        const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(description, style: const TextStyle(fontSize: 16),),
        ),
        const SizedBox(height: 20,),
        InkWell(
          onTap: (){},
          child: Container(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            height: 40,
            width: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey
            ),
            child: const Text("Add to Cart", style: TextStyle(fontSize: 16),),
          ),
        )
      ],
    ),
  ),);
}