import 'package:flutter/material.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:new_ecom_app/datamodel.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key key}) : super(key: key);

  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(CColor.mcolor),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white), onPressed: ()=>Navigator.of(context).pop()),
        title: Text('Wishlist',
          style: TextStyle(
              fontSize: 16
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: MyCartClass().list.length,
          itemBuilder: (_,index){
          var data = MyCartClass().list;
          return Column(
            children: [
              Row(
                children: [
                  Image(image: AssetImage(data[index].pro_image),height: 100,width: 100,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data[index].pro_name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("${data[index].price}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.shopping_bag,color: Color(CColor.mcolor),),
                  SizedBox(width: 10,),
                  CircleAvatar(
                      radius: 16,
                      backgroundColor: Color(0xfff1f1f1),
                      child: Text('X',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black
                        ),
                      )
                  ),
                ],
              ),
              Divider()
            ],
          );
          }
      )
    );
  }
}

