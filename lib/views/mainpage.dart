import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpg/Product.dart';
import 'package:loginpg/views/card.dart';
import 'package:loginpg/views/cart.dart';
import 'package:loginpg/views/drawer_menu.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Product> products=[];
  Dio _dio=Dio();
  @override
  void initState() {
    super.initState();
    loadData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: PreferredSize(preferredSize: Size.fromHeight(100),
       child:
       AppBar(
        flexibleSpace: Align(
          alignment: Alignment.center,
          child: Text('E-Commerce',style: GoogleFonts.satisfy( color: Color.fromARGB(255, 255, 255, 255),fontSize:50),
          ), 
          ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:(context)=>cartView()),(route)=>true);
          }, icon: Icon(Icons.local_grocery_store_outlined)
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 100,
      ),
    ),
    body: GridView.builder(gridDelegate: 
    SliverGridDelegateWithFixedCrossAxisCount(
      childAspectRatio: (0.7),
      crossAxisCount: 2,
      crossAxisSpacing: 25,
      mainAxisSpacing: 14),
      itemCount: products.length, 
    itemBuilder: (context,index){
      final item=products[index];
      return cardItem(product: item,);
    }),
    );
  }
  void loadData() async {
  String api_path="https://fakestoreapi.com/products";
  Response response=await _dio.get(api_path); 
  if(response.data!=null){
    setState(() {
      for (final i in response.data){
        products.add(Product.fromJson(i));
      }
    });
  }
  else{
    print('No');
  }
}
}
