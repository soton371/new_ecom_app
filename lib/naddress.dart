import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:new_ecom_app/new/npayment.dart';
import '../customcolor.dart';

class NAddressScreen extends StatefulWidget {
  const NAddressScreen({Key key}) : super(key: key);

  @override
  _NAddressScreenState createState() => _NAddressScreenState();
}

class _NAddressScreenState extends State<NAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(CColor.nbgcolor),
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Color(CColor.nbgcolor),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()=>Navigator.pop(context),color: Color(CColor.mcolor)),
        title: Text("Address",
          style: TextStyle(
              color: Color(CColor.mcolor)
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
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
                      color: Color(CColor.mcolor).withOpacity(.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.location_on,color: Color(CColor.mcolor),),
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
                    child: Icon(Icons.payment,color: Color(CColor.mcolor),),
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
          ],
        ),
      ),
      bottomSheet: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height/1.5,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //tabbar view section start
              Text('Name'),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                child: TextField(
                  style: TextStyle(
                      fontSize: 12
                  ),
                  cursorColor: Color(CColor.mcolor),
                  decoration: InputDecoration(
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(CColor.mcolor),
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Text('Shipping Address'),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                child: TextField(
                  style: TextStyle(
                      fontSize: 12
                  ),
                  cursorColor: Color(CColor.mcolor),
                  decoration: InputDecoration(
                      hintText: 'enter shipping address',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(CColor.mcolor),
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Phone Number'),
              Theme(
                data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                child: TextField(
                  style: TextStyle(
                      fontSize: 12
                  ),
                  cursorColor: Color(CColor.mcolor),
                  decoration: InputDecoration(
                      hintText: 'enter phone number',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(CColor.mcolor),
                      )
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NPaymentScreen()));
                },
                  child: Text('Save Address',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                  style: ElevatedButton.styleFrom(
                      primary: Color(CColor.mcolor),
                      padding: EdgeInsets.symmetric(horizontal: 90)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
