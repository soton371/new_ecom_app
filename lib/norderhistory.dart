import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:new_ecom_app/datamodel.dart';
import 'package:new_ecom_app/new/norderhistorytwo.dart';
import 'package:new_ecom_app/new/nthanks.dart';

class NOrderHistoryScreen extends StatefulWidget {
  const NOrderHistoryScreen({Key key}) : super(key: key);

  @override
  _NOrderHistoryScreenState createState() => _NOrderHistoryScreenState();
}

class _NOrderHistoryScreenState extends State<NOrderHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(CColor.nbgcolor),
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Color(CColor.nbgcolor),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()=>Navigator.pop(context),color: Color(CColor.mcolor)),
        title: Text("Order History",
          style: TextStyle(
              color: Color(CColor.mcolor)
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  DottedBorder(
                    borderType: BorderType.Oval,
                    color: Color(CColor.mcolor),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(CColor.mcolor),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.location_on,color: Colors.white,),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey,thickness: 1,indent: 10,endIndent: 10,)),
                  DottedBorder(
                    borderType: BorderType.Oval,
                    color: Color(CColor.mcolor),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(CColor.mcolor),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.payment,color: Colors.white,),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey,thickness: 1,indent: 10,endIndent: 10,)),
                  DottedBorder(
                    borderType: BorderType.Oval,
                    color: Color(CColor.mcolor),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(CColor.mcolor).withOpacity(.1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.done,color: Color(CColor.mcolor),),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Address'),
                  Text('Payment'),
                  Text('Confirm'),
                ],
              ),
              SizedBox(height: 20,),
              Text('Orders',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(CColor.mcolor)
              ),
              ),
              SizedBox(height: 15,),
              Container(
                height: MediaQuery.of(context).size.height/4,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context,index){
                      var data = MyCartClass().list;
                      return Card(
                        //margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
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
              ),
              SizedBox(height: 20,),
              Text('Shipping address',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(CColor.mcolor)
                ),
              ),
              SizedBox(height: 15,),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: Text('Gulshan-1, Dhaka, Bangladesh',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey
                ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Payment',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(CColor.mcolor)
                ),
              ),
              SizedBox(height: 15,),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('**** **** **** 5895',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey
                      ),
                    ),
                    Image(image: AssetImage('images/Marketing-Strategy-of-Mastercard-3-removebg-preview.png'),height: 15,)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text('Total: \$56.00',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(CColor.mcolor)
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 15),
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NThanksScreen()));
        },
          child: Text('Place Order',style: TextStyle(
              fontWeight: FontWeight.bold
          ),),
          style: ElevatedButton.styleFrom(
              primary: Color(CColor.mcolor),
          ),
        ),
      ),
    );
  }
}

