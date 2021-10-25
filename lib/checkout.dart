import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_ecom_app/datamodel.dart';
import 'package:new_ecom_app/new/naddress.dart';
import '../customcolor.dart';

class NCheckoutScreen extends StatefulWidget {
  const NCheckoutScreen({Key key}) : super(key: key);

  @override
  _NCheckoutScreenState createState() => _NCheckoutScreenState();
}

class _NCheckoutScreenState extends State<NCheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(CColor.nbgcolor),
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Color(CColor.nbgcolor),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()=>Navigator.pop(context),color: Color(CColor.mcolor)),
        title: Text("Checkout",
          style: TextStyle(
              color: Color(CColor.mcolor)
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: MyCartClass().list.length,
          itemBuilder: (context,index){
          var data = MyCartClass().list;
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              elevation: 0,
              child: Row(
                children: [
                  Container(
                      color: Colors.grey.withOpacity(.2),
                      child: Image(image: AssetImage(data[index].pro_image),width: 90,height: 80,)
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data[index].pro_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Row(
                        children: [
                          Text('per ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                          ),
                          ),
                          Icon(Icons.star,size: 12,color: Colors.amber,),
                          Text(data[index].rating,style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          Text(data[index].quantity,style: TextStyle(
                              fontSize: 12,
                          ),),
                          Text('X',style: TextStyle(
                            fontSize: 12,
                          ),),
                          Text(data[index].price,style: TextStyle(
                            fontSize: 12,
                          ),),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          }
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height/2.5,
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.2),
              spreadRadius: 5,
              blurRadius: 5
            )
          ]
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sub Total :'),
                Text('\$50.00'),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shipping Fee :'),
                Text('\$5.00'),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Estimating Tax :'),
                Text('\$1.00'),
              ],
            ),
            Divider(color: Colors.black,thickness: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total :',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                ),
                Text('\$56.00',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
            Spacer(),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NAddressScreen()));
            },
            child: Text('Next',style: TextStyle(
                fontWeight: FontWeight.bold
            ),),
              style: ElevatedButton.styleFrom(
                primary: Color(CColor.mcolor),
                padding: EdgeInsets.symmetric(horizontal: 90)
              ),
            )
          ],
        ),
      ),
    );
  }
}
