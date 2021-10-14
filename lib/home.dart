import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_ecom_app/account.dart';
import 'package:new_ecom_app/category.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:new_ecom_app/front.dart';
import 'package:new_ecom_app/mycart.dart';
import 'package:new_ecom_app/myprofile.dart';
import 'package:new_ecom_app/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var pageController;
  var getPageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    // TODO: implement dispose
    super.dispose();

  }

  whenPageChanges(int pageIndex){
    setState(() {
      this.getPageIndex = pageIndex;
    });
  }

  onTabChangePage(int pageIndex){
    pageController.animateToPage(pageIndex,duration: Duration(milliseconds: 400),curve: Curves.bounceInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          FrontScreen(),
          CategoryScreen(),
          MyCartScreen(),
          AccountScreen(),
          MyProfileScreen(),
        ],
        controller: pageController,
        onPageChanged: whenPageChanges,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        border: Border(top: BorderSide.none),
        currentIndex: getPageIndex,
          onTap: onTabChangePage,
          activeColor: Color(CColor.mcolor),
          inactiveColor: Colors.grey,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,size: 20,),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.widgets,size: 20,),label: 'Category'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,size: 20,),label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person,size: 20,),label: 'Account'),
          ]
      )
    );
  }
}
