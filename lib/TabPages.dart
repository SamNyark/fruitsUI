import 'package:flutter/material.dart';

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
        _buildCard("\$45", "assets/images/Avocado.jpg", "hfudhfihsdf  dsfhfhoidsi ffdfdsf", 0xFF34EB49),
        _buildCard("\$45", "assets/images/Avocado.jpg", "hfudhfihsdf  dsfhfhoidsi ffdfdsf", 0xFF34EB49)

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
        Image.asset(imagePath,
        height: 150,
        fit: BoxFit.cover,),
        const SizedBox(height: 15,),
        Text(price, style: const TextStyle(fontSize: 30),),
        const SizedBox(height: 15,),
        Text(description, style: const TextStyle(fontSize: 16),),
        const SizedBox(height: 20,),
        InkWell(
          onTap: (){},
          child: Container(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            height: 40,
            width: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.withOpacity(0.5)
            ),
            child: const Text("Add to Cart", style: TextStyle(fontSize: 16),),
          ),
        )
      ],
    ),
  ),);
}