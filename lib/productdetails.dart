import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:new_ecom_app/datamodel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_ecom_app/mycart.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key key}) : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  var is_click = false;
  var is_clicki = false;
  int cart_count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff1f1f1),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Color(CColor.mcolor)), onPressed: ()=>Navigator.of(context).pop()),
        title: Text("Details",
        style: TextStyle(
            color: Color(CColor.mcolor),
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
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18,
                  child: GestureDetector(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCartScreen())),
                      child: Icon(Icons.shopping_bag,color: Color(CColor.mcolor),)
                  ),
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
                    child: Text(cart_count.toString(),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //image section start
              Image(image: AssetImage('images/main-4-624x416.jpg')),
              //image section end
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //star section start
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("\$23",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(CColor.mcolor)
                            ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,color: Color(0xffffb607),size: 12,),
                                Icon(Icons.star,color: Color(0xffffb607),size: 12),
                                Icon(Icons.star,color: Color(0xffffb607),size: 12),
                                Icon(Icons.star,color: Color(0xffc2c2c2),size: 12),
                                Icon(Icons.star,color: Color(0xffc2c2c2),size: 12),
                                Text("(325)",
                                style: TextStyle(
                                  color: Color(0xffc2c2c2),
                                  fontSize: 12
                                ),
                                )
                              ],
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xfff1f1f1),
                          child: IconButton(
                              icon: is_clicki?FaIcon(FontAwesomeIcons.solidHeart):FaIcon(FontAwesomeIcons.heart),
                              iconSize: 20,
                              color: is_clicki?Color(CColor.redcolor):Color(CColor.mcolor),
                              onPressed: (){
                                setState(() {
                                  is_clicki = true;
                                });
                              }
                          ),
                        )
                      ],
                    ),
                    //star section end
                    SizedBox(height: 20,),
                    Text("Action Camera",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    ),
                    SizedBox(height: 20,),
                    //tag,stock section start
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffc2c2c2),
                          width: 1,
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('TAG',
                                  style: TextStyle(
                                    fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),
                                  ),
                                  Text('Accessories',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xffc2c2c2)
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            Divider(height: 1,),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('STOCK',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text('In Stock (3)',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xffc2c2c2),

                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //tag,stock section end
                    SizedBox(height: 30,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              is_click = true;
                              cart_count ++;
                            });

                            //for snackBar
                            var snackBar = SnackBar(
                                content: Text('Item added to cart')
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Text(is_click ?'Already added':'Add To Cart',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: is_click ? FontWeight.w400 : FontWeight.bold,
                              color: is_click ? Color(CColor.mcolor) : Colors.white,
                            ),
                          ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: is_click ? Colors.white : Color(CColor.mcolor),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(CColor.mcolor)
                            ),
                            borderRadius: BorderRadius.circular(5)
                          )
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              //service section start
              Container(
                color: Color(0xfff1f1f1),
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex:1,
                            child: Text('Service:',
                            style: TextStyle(
                              color: Color(0xffc2c2c2),
                              fontSize: 12
                            ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        child: Icon(Icons.done, color: Color(CColor.mcolor),size: 10,),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1.5,
                                          color: Color(CColor.mcolor),
                                        ),
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                    ),
                                    Text(' 100% Authentic',
                                    style: TextStyle(
                                      fontSize: 11
                                    ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(Icons.done, color: Color(CColor.mcolor),size: 10,),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1.5,
                                            color: Color(CColor.mcolor),
                                          ),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                    ),
                                    Text(' 10 days easy return',
                                      style: TextStyle(
                                          fontSize: 11
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    //Description section start
                    SizedBox(height: 20,),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex:1,
                            child: Text('Service:',
                              style: TextStyle(
                                color: Color(0xffc2c2c2),
                                fontSize: 12
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                            style: TextStyle(
                              fontSize: 11
                            ),
                            )
                          )
                        ],
                      ),
                    ),
                    //rating and review section start
                    SizedBox(height: 20,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Text("Ratings & Reviews",
                        style: TextStyle(
                            color: Color(0xffc2c2c2),
                          fontSize: 12
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: RatingReviews().list.length,
                          itemBuilder: (_,index){
                            var data = RatingReviews().list;
                            int y_star = int.parse(data[index].rating);
                            int g_star;
                            if(y_star<=5){
                              g_star = 5-y_star;
                            }
                            return Column(
                              children: [
                                Divider(height: 1,),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text(data[index].user,
                                      style: TextStyle(
                                          color: Color(0xffc2c2c2),
                                        fontSize: 12
                                      ),
                                    ),
                                    Text(data[index].time,
                                      style: TextStyle(
                                          color: Color(0xffc2c2c2),
                                        fontSize: 12
                                      ),
                                    ),
                                    Spacer(),
                                    for(int i = 1; i<=y_star; i++)
                                      Icon(Icons.star,color: Color(0xffffb607),size: 12,),
                                    for(int i = 1; i<=g_star; i++)
                                      Icon(Icons.star,color: Color(0xffc2c2c2),size: 12),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text(data[index].reviews,
                                style: TextStyle(
                                  fontSize: 12
                                ),
                                ),
                                SizedBox(height: 10,),
                              ],
                            );
                          }
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
