import 'package:flutter/material.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:new_ecom_app/datamodel.dart';
import 'package:new_ecom_app/product.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(CColor.mcolor),
        title: Text("Category",
          style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            fontWeight: FontWeight.w600
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
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18,
                  child: Icon(Icons.shopping_bag,color: Color(CColor.mcolor),),
                  // child: IconButton(
                  //     icon: Icon(Icons.shopping_bag,color: Color(CColor.mcolor),),
                  //     onPressed: (){}
                  // ),
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
        length: 9,
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width/4,
              color: Color(0xfff1f1f1),
              child: RotatedBox(
                quarterTurns: 1,
                child: TabBar(
                    labelColor: Colors.white,
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10
                    ),
                    unselectedLabelColor: Color(CColor.mcolor),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(CColor.mcolor),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 3,
                              spreadRadius: 1,
                            offset: Offset(4, 1)
                          )
                        ]
                    ),
                    indicatorPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  isScrollable: true,
                    tabs: [
                      RotatedBox(quarterTurns:3,child: Column(
                        children: [
                          Icon(Icons.desktop_mac_outlined),
                          Text('Computer'),
                        ],
                      )),
                      RotatedBox(quarterTurns:3,child: Column(
                        children: [
                          Icon(Icons.laptop_mac_outlined),
                          Text('Laptop'),
                        ],
                      )),
                      RotatedBox(quarterTurns:3,child: Column(
                        children: [
                          Icon(Icons.tv),
                          Text('TV'),
                        ],
                      )),
                      RotatedBox(quarterTurns:3,child: Column(
                        children: [
                          Icon(Icons.headset_outlined),
                          Text('Headphone'),
                        ],
                      )),
                      RotatedBox(quarterTurns:3,child: Column(
                        children: [
                          Icon(Icons.phone_iphone_outlined),
                          Text('Mobile'),
                        ],
                      )),
                      RotatedBox(quarterTurns:3,child: Column(
                        children: [
                          Icon(Icons.battery_charging_full_outlined),
                          Text('Battery'),
                        ],
                      )),
                      RotatedBox(quarterTurns:3,child: Column(
                        children: [
                          Icon(Icons.watch_outlined),
                          Text('Watch'),
                        ],
                      )),
                      RotatedBox(quarterTurns:3,child: Column(
                        children: [
                          Icon(Icons.camera_alt_outlined),
                          Text('Camera'),
                        ],
                      )),
                      RotatedBox(quarterTurns:3,child: Column(
                        children: [
                          Icon(Icons.beach_access_outlined),
                          Text('Accessories'),
                        ],
                      )),
                    ]
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: TabBarView(
                    children: [
                      GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 4.0
                          ),
                          itemCount: MyCartClass().list.length,
                          itemBuilder: (_,index){
                            var data = MyCartClass().list;
                            return GestureDetector(
                              onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                              child: FittedBox(
                                child: Column(
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image),height: 50,width: 50,),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 4.0
                          ),
                          itemCount: MyCartClass().list.length,
                          itemBuilder: (_,index){
                            var data = MyCartClass().list;
                            return GestureDetector(
                              onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                              child: FittedBox(
                                child: Column(
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image),height: 50,width: 50,),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 4.0
                          ),
                          itemCount: MyCartClass().list.length,
                          itemBuilder: (_,index){
                            var data = MyCartClass().list;
                            return GestureDetector(
                              onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                              child: FittedBox(
                                child: Column(
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image),height: 50,width: 50,),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 4.0
                          ),
                          itemCount: MyCartClass().list.length,
                          itemBuilder: (_,index){
                            var data = MyCartClass().list;
                            return GestureDetector(
                              onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                              child: FittedBox(
                                child: Column(
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image),height: 50,width: 50,),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 4.0
                          ),
                          itemCount: MyCartClass().list.length,
                          itemBuilder: (_,index){
                            var data = MyCartClass().list;
                            return GestureDetector(
                              onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                              child: FittedBox(
                                child: Column(
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image),height: 50,width: 50,),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 4.0
                          ),
                          itemCount: MyCartClass().list.length,
                          itemBuilder: (_,index){
                            var data = MyCartClass().list;
                            return GestureDetector(
                              onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                              child: FittedBox(
                                child: Column(
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image),height: 50,width: 50,),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 4.0
                          ),
                          itemCount: MyCartClass().list.length,
                          itemBuilder: (_,index){
                            var data = MyCartClass().list;
                            return GestureDetector(
                              onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                              child: FittedBox(
                                child: Column(
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image),height: 50,width: 50,),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 4.0
                          ),
                          itemCount: MyCartClass().list.length,
                          itemBuilder: (_,index){
                            var data = MyCartClass().list;
                            return GestureDetector(
                              onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                              child: FittedBox(
                                child: Column(
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image),height: 50,width: 50,),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 8.0,
                              mainAxisSpacing: 4.0
                          ),
                          itemCount: MyCartClass().list.length,
                          itemBuilder: (_,index){
                            var data = MyCartClass().list;
                            return GestureDetector(
                              onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                              child: FittedBox(
                                child: Column(
                                  children: [
                                    Image(image: AssetImage(data[index].pro_image),height: 50,width: 50,),
                                    Text(data[index].pro_name,style: TextStyle(
                                        fontSize: 10,
                                      fontWeight: FontWeight.w600
                                    ),),
                                    Text(data[index].price,
                                      style: TextStyle(
                                          color: Color(CColor.mcolor),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
