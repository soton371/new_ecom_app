import 'package:flutter/material.dart';
import 'package:new_ecom_app/customcolor.dart';

class TermsAndConditionScreen extends StatefulWidget {
  const TermsAndConditionScreen({Key key}) : super(key: key);

  @override
  _TermsAndConditionScreenState createState() => _TermsAndConditionScreenState();
}

class _TermsAndConditionScreenState extends State<TermsAndConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(image: AssetImage("images/pexels-pixabay-260689.jpg"),height: 150,fit: BoxFit.cover,width: MediaQuery.of(context).size.width,),
                ),
                SizedBox(height: 15,),
                Text('Terms & Conditions',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
                SizedBox(height: 15,),
                Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.\n\nMany desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.\n\nVarious versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text('Back To Previous',
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          style: ElevatedButton.styleFrom(
              primary: Color(CColor.mcolor)
          ),
        ),
      ),
    );
  }
}
