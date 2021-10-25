import 'package:flutter/material.dart';
import 'package:new_ecom_app/customcolor.dart';

class NEmptyWishlistScreen extends StatefulWidget {
  const NEmptyWishlistScreen({Key key}) : super(key: key);

  @override
  _NEmptyWishlistScreenState createState() => _NEmptyWishlistScreenState();
}

class _NEmptyWishlistScreenState extends State<NEmptyWishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios,color: Color(CColor.mcolor),),
        title: Text('Wishlist',
        style: TextStyle(
          color: Color(CColor.mcolor)
        ),
        ),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image(image: AssetImage('images/Capture-removebg-preview.png'),height: 150,),
              SizedBox(height: 20,),
              Text('Your Wishlist is Empty',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(CColor.mcolor)
              ),
              ),
              SizedBox(height: 15,),
              Text('reference site about lorem ipsum',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                ),
              ),
              Text('giving information',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                ),
              ),
              SizedBox(height: 20,),
              Spacer(),
              ElevatedButton(
                  onPressed: (){},
                  child: Text('Continue Shopping',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                style: ElevatedButton.styleFrom(
                  primary: Color(CColor.mcolor)
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
