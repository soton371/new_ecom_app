import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:new_ecom_app/datamodel.dart';
import 'package:new_ecom_app/mycart.dart';
import 'package:new_ecom_app/productdetails.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(CColor.mcolor),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white), onPressed: ()=>Navigator.of(context).pop()),
        title: Text("Products",
          style: TextStyle(
              color: Colors.white,
              fontSize: 16
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 18,
            child: IconButton(
                icon: Icon(Icons.search,color: Color(CColor.mcolor),),
                onPressed: (){}
            ),
          ),
          SizedBox(width: 10,),
          Center(
            child: Stack(
              children: [
                GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: Icon(Icons.shopping_bag,color: Color(CColor.mcolor)),
                    // child: IconButton(
                    //     icon: Icon(Icons.shopping_bag,color: Color(CColor.mcolor),),
                    //     onPressed: (){}
                    // ),
                  ),
                  onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCartScreen())),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Color(0xffed223f),
                    child: Text('0',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: DefaultTabController(
          length: 6,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/10,
                  child: TabBar(
                    labelColor: Color(CColor.mcolor),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),
                    unselectedLabelColor: Colors.black54,
                      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                      indicatorPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
                    labelPadding: EdgeInsets.symmetric(horizontal: 20),
                    isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.2),
                            blurRadius: 5,
                            spreadRadius: 3
                          )
                        ]
                      ),
                      tabs: [
                        Text("All",
                        ),
                        Text("Computer",
                        ),
                        Text("Laptop",
                        ),
                        Text("TV",

                        ),
                        Text("Mobile",

                        ),
                        Text("Headphones",

                        ),
                      ]
                  ),
                ),
                Expanded(
                  child: TabBarView(
                      children: [
                        GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: 4.0
                            ),
                            itemCount: MyCartClass().list.length,
                            itemBuilder: (_,index){
                              var data = MyCartClass().list;
                              return GestureDetector(
                                onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen())),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image)),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 12
                                    ),),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10,),
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10),
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10),
                                        Icon(Icons.star,color: Color(0xffc2c2c2),size: 10),
                                        Icon(Icons.star,color: Color(0xffc2c2c2),size: 10),
                                        Text("(325)",
                                          style: TextStyle(
                                              color: Color(0xffc2c2c2),
                                              fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 11,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }
                        ),
                        GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: 4.0
                            ),
                            itemCount: MyCartClass().list.length,
                            itemBuilder: (_,index){
                              var data = MyCartClass().list;
                              return GestureDetector(
                                onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen())),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image)),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 12
                                    ),),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10,),
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10),
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10),
                                        Icon(Icons.star,color: Color(0xffc2c2c2),size: 10),
                                        Icon(Icons.star,color: Color(0xffc2c2c2),size: 10),
                                        Text("(325)",
                                          style: TextStyle(
                                              color: Color(0xffc2c2c2),
                                              fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }
                        ),
                        GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: 4.0
                            ),
                            itemCount: MyCartClass().list.length,
                            itemBuilder: (_,index){
                              var data = MyCartClass().list;
                              return GestureDetector(
                                onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen())),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image)),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 12
                                    ),),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10,),
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10),
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10),
                                        Icon(Icons.star,color: Color(0xffc2c2c2),size: 10),
                                        Icon(Icons.star,color: Color(0xffc2c2c2),size: 10),
                                        Text("(325)",
                                          style: TextStyle(
                                              color: Color(0xffc2c2c2),
                                              fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }
                        ),
                        GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: 4.0
                            ),
                            itemCount: MyCartClass().list.length,
                            itemBuilder: (_,index){
                              var data = MyCartClass().list;
                              return GestureDetector(
                                onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen())),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image)),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 12
                                    ),),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10,),
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10),
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10),
                                        Icon(Icons.star,color: Color(0xffc2c2c2),size: 10),
                                        Icon(Icons.star,color: Color(0xffc2c2c2),size: 10),
                                        Text("(325)",
                                          style: TextStyle(
                                              color: Color(0xffc2c2c2),
                                              fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }
                        ),
                        GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: 4.0
                            ),
                            itemCount: MyCartClass().list.length,
                            itemBuilder: (_,index){
                              var data = MyCartClass().list;
                              return GestureDetector(
                                onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen())),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image)),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 12
                                    ),),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10,),
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10),
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10),
                                        Icon(Icons.star,color: Color(0xffc2c2c2),size: 10),
                                        Icon(Icons.star,color: Color(0xffc2c2c2),size: 10),
                                        Text("(325)",
                                          style: TextStyle(
                                              color: Color(0xffc2c2c2),
                                              fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }
                        ),
                        GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: 4.0
                            ),
                            itemCount: MyCartClass().list.length,
                            itemBuilder: (_,index){
                              var data = MyCartClass().list;
                              return GestureDetector(
                                onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen())),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image)),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 12
                                    ),),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10,),
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10),
                                        Icon(Icons.star,color: Color(0xffffb607),size: 10),
                                        Icon(Icons.star,color: Color(0xffc2c2c2),size: 10),
                                        Icon(Icons.star,color: Color(0xffc2c2c2),size: 10),
                                        Text("(325)",
                                          style: TextStyle(
                                              color: Color(0xffc2c2c2),
                                              fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }
                        ),
                      ]
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
