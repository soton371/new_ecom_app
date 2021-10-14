import 'package:flutter/material.dart';
import 'package:new_ecom_app/aboutus.dart';
import 'package:new_ecom_app/category.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:new_ecom_app/home.dart';
import 'package:new_ecom_app/myorders.dart';
import 'package:new_ecom_app/product.dart';
import 'package:new_ecom_app/productdetails.dart';
import 'package:new_ecom_app/termsandcondition.dart';
import 'package:new_ecom_app/wishlist.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void selectedItem(BuildContext context, int index){
      Navigator.of(context).pop();
      switch (index){
        case 0:
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          break;
        case 1:
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsScreen()));
          break;
        case 2:
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOrdersScreen()));
          break;
        case 3:
          Navigator.push(context, MaterialPageRoute(builder: (context)=>WishlistScreen()));
          break;
        case 4:
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsScreen()));
          break;
        case 5:
          Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsAndConditionScreen()));
          break;
      }
    }

    return Drawer(
      child: Material(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 60),
              color: Color(CColor.mcolor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Cined',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  ),
                  Text('Electronic Shop',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap:()=> selectedItem(context,0),
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 12,),
            ),
            Divider(indent: 20,endIndent: 20,),
            ListTile(
              onTap:()=> selectedItem(context,1),
              leading: Icon(Icons.pest_control_rodent_outlined),
              title: Text('Products'),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 12,),
            ),
            Divider(indent: 20,endIndent: 20,),
            ListTile(
              onTap:()=> selectedItem(context,2),
              leading: Icon(Icons.border_all),
              title: Text('My Orders'),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 12,),
            ),
            Divider(indent: 20,endIndent: 20,),
            ListTile(
              onTap:()=> selectedItem(context,3),
              leading: Icon(Icons.favorite_border),
              title: Text('Wishlist (0)'),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 12,),
            ),
            Divider(indent: 20,endIndent: 20,),
            ListTile(
              onTap:()=> selectedItem(context,4),
              leading: Icon(Icons.account_balance_wallet_outlined),
              title: Text('About'),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 12,),
            ),
            Divider(indent: 20,endIndent: 20,),
            ListTile(
              onTap:()=> selectedItem(context,5),
              leading: Icon(Icons.branding_watermark_outlined),
              title: Text('Terms & Conditions'),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 12,),
            ),
            Divider(indent: 20,endIndent: 20,),
            ListTile(
              //onTap:()=> selectedItem(context,6),
              hoverColor: Color(CColor.mcolor),
              leading: Icon(Icons.logout, color: Color(0xffed223f),),
              title: Text('Sign Out',
              style: TextStyle(
                color: Color(0xffed223f)
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 12,color: Color(0xffed223f),),
            ),
          ],
        ),
      ),
    );
  }
}
