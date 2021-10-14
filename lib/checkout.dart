import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_ecom_app/customcolor.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key key}) : super(key: key);

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {

  final GlobalKey<FormState> form_key = GlobalKey<FormState>();
  var first_name = TextEditingController();
  var last_name = TextEditingController();
  var company_name = TextEditingController();
  var phone = TextEditingController();
  var country = TextEditingController();
  var address = TextEditingController();
  var city = TextEditingController();
  var post_code = TextEditingController();
  var card_nymber = TextEditingController();
  var exp_date = TextEditingController();
  var cvc = TextEditingController();

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return Container(
            child: AlertDialog(
              content: Container(
                height: MediaQuery.of(context).size.height/4,
                child: Column(
                  children: [
                    Theme(
                      data: Theme.of(context).copyWith(
                        primaryColor: Color(CColor.mcolor)
                      ),
                      child: TextField(
                        controller: card_nymber,
                        cursorColor: Color(CColor.mcolor),
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.credit_card),
                          labelText: 'Card number'
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Theme(
                            data: Theme.of(context).copyWith(
                                primaryColor: Color(CColor.mcolor)
                            ),
                            child: TextField(
                              controller: exp_date,
                              cursorColor: Color(CColor.mcolor),
                              decoration: InputDecoration(
                                  labelText: 'Expiration date'
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Theme(
                            data: Theme.of(context).copyWith(
                                primaryColor: Color(CColor.mcolor)
                            ),
                            child: TextField(
                              cursorColor: Color(CColor.mcolor),
                              controller: cvc,
                              decoration: InputDecoration(
                                  labelText: 'CVC'
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text('Save'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 40)
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(CColor.mcolor),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white), onPressed: ()=>Navigator.of(context).pop()),
        title: Text('Checkout',
        style: TextStyle(
          fontSize: 16
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            key: form_key,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff1f1f1),
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: TextFormField(
                          controller: first_name,
                          decoration: InputDecoration(
                            hintText: 'First Name',
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xfff1f1f1)
                              )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: .5,
                                    color: Color(CColor.mcolor)
                                )
                            )
                          ),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xfff1f1f1),
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: TextFormField(
                          controller: last_name,
                          decoration: InputDecoration(
                              hintText: 'Last Name',
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xfff1f1f1)
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: .5,
                                      color: Color(CColor.mcolor)
                                  )
                              )
                          ),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff1f1f1),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: TextFormField(
                    controller: company_name,
                    decoration: InputDecoration(
                        hintText: 'Company Name',
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xfff1f1f1)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: .5,
                                color: Color(CColor.mcolor)
                            )
                        )
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff1f1f1),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: TextFormField(
                    controller: phone,
                    decoration: InputDecoration(
                        hintText: 'Phone',
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xfff1f1f1)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: .5,
                                color: Color(CColor.mcolor)
                            )
                        )
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff1f1f1),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: TextFormField(
                    controller: country,
                    decoration: InputDecoration(
                        hintText: 'Country',
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xfff1f1f1)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: .5,
                                color: Color(CColor.mcolor)
                            )
                        )
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff1f1f1),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: TextFormField(
                    controller: address,
                    decoration: InputDecoration(
                        hintText: 'Address',
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xfff1f1f1)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: .5,
                                color: Color(CColor.mcolor)
                            )
                        )
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff1f1f1),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: TextFormField(
                    controller: city,
                    decoration: InputDecoration(
                        hintText: 'City',
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xfff1f1f1)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: .5,
                                color: Color(CColor.mcolor)
                            )
                        )
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff1f1f1),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: TextFormField(
                    controller: post_code,
                    decoration: InputDecoration(
                        hintText: 'Post Code',
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xfff1f1f1)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: .5,
                              color: Color(CColor.mcolor)
                            )
                        )
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: ElevatedButton(
            onPressed: (){
              _displayDialog(context);
              //for snackBar
              var snackBar = SnackBar(
                  content: Text("field can't be empty")
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Proceed to Pay',
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
