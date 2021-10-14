// import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:new_ecom_app/datamodel.dart';
import 'package:new_ecom_app/product.dart';
import 'package:new_ecom_app/productdetails.dart';
import 'package:new_ecom_app/widgets/navigationdrawer.dart';
import 'package:carousel_pro/carousel_pro.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({Key key}) : super(key: key);

  @override
  _FrontScreenState createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {

  // var duration = Duration();
  // var timer;
  // var minutes,seconds;
  //
  // void addTime(){
  //   final add_second = 1;
  //   setState(() {
  //     final seconds = duration.inSeconds+add_second;
  //     duration = Duration(seconds: seconds);
  //   });
  // }
  //
  // void startTimer(){
  //   timer = Timer.periodic(Duration(seconds: 1), (timer) {addTime(); });
  // }
  //
  // Widget buildTime(){
  //   return Text(duration.inSeconds.toString(),
  //   style: TextStyle(color: Colors.white),
  //   );
  // }
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   startTimer();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(CColor.mcolor),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image(image: AssetImage('images/1200px-Flag_of_the_United_Kingdom_(2-3).svg.png'),),
        ),
        title: Container(
          height: 38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
              color: Colors.white
          ),
          padding: EdgeInsets.only(top: 5,bottom: 5,left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  cursorColor: Color(CColor.mcolor),
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(CColor.mcolor)
                  ),
                  decoration: InputDecoration(
                    hintText: 'Search Product...',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 12
                    ),
                    suffixIcon: CircleAvatar(
                      backgroundColor: Color(CColor.mcolor),
                      radius: 15,
                      child: Icon(Icons.search,color: Colors.white,size: 15,),
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: NavigationDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //slider section start
            Container(
              height: 110,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Carousel(
                boxFit: BoxFit.cover,
                dotBgColor: Colors.transparent,
                dotSize: 6.0,
                dotIncreasedColor: Color(CColor.mcolor),
                animationDuration: Duration(milliseconds: 1000),
                images: [
                  NetworkImage('https://image.shutterstock.com/image-vector/black-friday-banner-monochrome-illustration-260nw-2010450404.jpg'),
                  NetworkImage('https://image.shutterstock.com/image-vector/sale-banner-template-design-geometric-600w-2007007922.jpg'),
                  NetworkImage('https://image.shutterstock.com/image-vector/big-sale-cashback-discount-offer-600w-705625729.jpg'),
                ],
              ),
            ),
            //slider section end
            //feature section start
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Feature Deal',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                  ),
                  InkWell(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                      child: Icon(Icons.arrow_forward_ios_rounded,size: 12,color: Colors.black,))
                ],
              ),
            ),
            //feature section end
            //best deals section start
            Container(
              //color: Colors.grey,
              height: 100,
              padding: EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffDEECC0)
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('30% Off',style: TextStyle(
                                color: Color(CColor.redcolor),
                              fontSize: 10
                            ),),
                            Text('Best Deal On\nCamera',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),
                            ),
                            InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                                child: Text('View Products',
                                style: TextStyle(
                                  color: Color(CColor.mcolor),
                                  decoration: TextDecoration.underline,
                                  fontSize: 10
                                ),
                                )
                            ),
                          ],
                        ),
                        Image(image: AssetImage('images/408285-middle-removebg-preview.png'),width: 80,),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffDEECC0)
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('30% Off',style: TextStyle(
                                color: Color(CColor.redcolor),
                                fontSize: 10
                            ),),
                            Text('Best Deal On\nCamera',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),
                            ),
                            InkWell(
                                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                                child: Text('View Products',
                                  style: TextStyle(
                                      color: Color(CColor.mcolor),
                                      decoration: TextDecoration.underline,
                                      fontSize: 10
                                  ),
                                )
                            ),
                          ],
                        ),
                        Image(image: AssetImage('images/408285-middle-removebg-preview.png'),width: 80,),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffDEECC0)
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('30% Off',style: TextStyle(
                                color: Color(CColor.redcolor),
                                fontSize: 10
                            ),),
                            Text('Best Deal On\nCamera',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),
                            ),
                            InkWell(
                                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                                child: Text('View Products',
                                  style: TextStyle(
                                      color: Color(CColor.mcolor),
                                      decoration: TextDecoration.underline,
                                      fontSize: 10
                                  ),
                                )
                            ),
                          ],
                        ),
                        Image(image: AssetImage('images/408285-middle-removebg-preview.png'),width: 80,),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,)
                ],
              ),
            ),
            //best deals section end
            SizedBox(height: 10,),
            //best seller section start
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Best Seller',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                  ),
                  InkWell(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                      child: Icon(Icons.arrow_forward_ios_rounded,size: 12,color: Colors.black,))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 380,
              //height: MediaQuery.of(context).size.height/1.7,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0
                  ),
                  itemCount: 4,
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
            ),
            //best seller section end
            SizedBox(height: 10,),
            //flash sale section end
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Flash Sale',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                  ),
                  Spacer(),
                  Text('Closing in: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey
                  ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(CColor.mcolor)
                    ),
                    child: Text('01',
                    style: TextStyle(color: Colors.white,),
                    ),
                  ),
                  Text(' : ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(CColor.mcolor)
                    ),
                    child: Text('01',
                      style: TextStyle(color: Colors.white,),
                    ),
                  ),
                  Text(' : ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(CColor.mcolor)
                    ),
                    child: Text('01',
                      style: TextStyle(color: Colors.white,),
                    ),
                  ),
                  Text(' : ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(CColor.mcolor)
                    ),
                    child: Text('01',
                      style: TextStyle(color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 165,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                  itemBuilder: (_,index){
                    var data = MyCartClass().list;
                    return Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
                      child: GestureDetector(
                        onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen())),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(image: AssetImage(data[index].pro_image),height: 100,),
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
                      ),
                    );
                  }
              ),
            ),
            //flash sale section end
            SizedBox(height: 20,),
            //special products start
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Special Products',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                  ),
                  InkWell(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen())),
                      child: Icon(Icons.arrow_forward_ios_rounded,size: 12,color: Colors.black,))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 380,
              //height: MediaQuery.of(context).size.height/1.7,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0
                  ),
                  itemCount: 4,
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
            ),
            //special products end
          ],
        ),
      )
    );
  }
}
