import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:new_ecom_app/new/norderhistory.dart';

class NPaymentScreen extends StatefulWidget {
  const NPaymentScreen({Key key}) : super(key: key);

  @override
  _NPaymentScreenState createState() => _NPaymentScreenState();
}

class _NPaymentScreenState extends State<NPaymentScreen> {

  var isOn = false;
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool useBackgroundImage = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      // cardNumber = creditCardModel.cardNumber;
      // expiryDate = creditCardModel.expiryDate;
      // cardHolderName = creditCardModel.cardHolderName;
      // cvvCode = creditCardModel.cvvCode;
      // isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(CColor.nbgcolor),
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Color(CColor.nbgcolor),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()=>Navigator.pop(context),color: Color(CColor.mcolor)),
        title: Text("Payment",
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
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height/1.5,
        padding: EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
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
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              //tabbar section start
              TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      border: Border.all(color: Color(CColor.mcolor)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        blurRadius: 5,
                        spreadRadius: 2
                      )
                    ]
                  ),
                  tabs: [
                    Column(
                      children: [
                        Image(image: AssetImage('images/Marketing-Strategy-of-Mastercard-3-removebg-preview.png'),height: 50,width: 60,),
                        Text('Master card',style: TextStyle(color: Colors.black),),
                      ],
                    ),
                    Column(
                      children: [
                        Image(image: AssetImage('images/068BjcjwBw0snwHIq0KNo5m-15.1602794215.fit_scale.size_760x427-removebg-preview.png'),height: 50,width: 60,),
                        Text('Paypal',style: TextStyle(color: Colors.black),),
                      ],
                    ),
                    Column(
                      children: [
                        Image(image: AssetImage('images/bKash-logo-removebg-preview.png'),height: 50,width: 60,),
                        Text('Bkash',style: TextStyle(color: Colors.black),),
                      ],
                    ),
                  ]
              ),
              //tabbar section end
              //SizedBox(height: 20,),
              //tabbar view section start
              Expanded(
                child: TabBarView(
                    children: [
                      //for credit card
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            CreditCardForm(
                              formKey: formKey,
                              obscureCvv: false,
                              obscureNumber: false,
                              cardNumber: cardNumber,
                              cvvCode: cvvCode,
                              cardHolderName: cardHolderName,
                              expiryDate: expiryDate,
                              themeColor: Color(CColor.mcolor),
                              textColor: Color(CColor.mcolor),
                              cardNumberDecoration: InputDecoration(
                                labelText: 'Card Number',
                                  labelStyle: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Color(CColor.mcolor),
                                  ),
                                hintText: 'XXXX XXXX XXXX XXXX',
                                  hintStyle: TextStyle(
                                    fontSize: 12,
                                    color: Color(CColor.mcolor),
                                  ),
                              ),
                              expiryDateDecoration: InputDecoration(
                                hintStyle: TextStyle(color: Color(CColor.mcolor),fontSize: 12,),
                                labelStyle: TextStyle(color: Color(CColor.mcolor),fontSize: 13,fontWeight: FontWeight.bold),
                                labelText: 'Expired Date',
                                hintText: 'XX/XX',
                              ),
                              cvvCodeDecoration: InputDecoration(
                                hintStyle: TextStyle(color: Color(CColor.mcolor),fontSize: 12,),
                                labelStyle: TextStyle(color: Color(CColor.mcolor),fontSize: 13,fontWeight: FontWeight.bold),
                                labelText: 'CVV',
                                hintText: 'XXXX',
                              ),
                              cardHolderDecoration: InputDecoration(
                                hintStyle: TextStyle(color: Color(CColor.mcolor),fontSize: 12,),
                                labelStyle: TextStyle(color: Color(CColor.mcolor),fontSize: 13,fontWeight: FontWeight.bold),
                                labelText: 'Card Holder Name',
                              ),
                              onCreditCardModelChange: onCreditCardModelChange,
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Save credit card number'),
                                FlutterSwitch(
                                    height: 20,
                                    width: 45,
                                    padding: 2,
                                    switchBorder: Border.all(color: Colors.black),
                                    inactiveColor: Colors.white,
                                    toggleColor: Colors.black,
                                    activeColor: Colors.grey,
                                    activeToggleColor: Colors.white,
                                    value: isOn,
                                    onToggle: (value){
                                      setState(() {
                                        isOn = value;
                                      });
                                    }
                                )
                              ],
                            ),
                            SizedBox(height: 30,),
                          ],
                        ),
                      ),
                      // SingleChildScrollView(
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Text('Card Number',style: TextStyle(
                      //           fontSize: 12,
                      //           fontWeight: FontWeight.bold
                      //       ),),
                      //       Theme(
                      //         data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                      //         child: TextField(
                      //           style: TextStyle(
                      //               fontSize: 12
                      //           ),
                      //           cursorColor: Color(CColor.mcolor),
                      //           decoration: InputDecoration(
                      //               hintText: 'enter card number',
                      //               hintStyle: TextStyle(
                      //                 fontSize: 12,
                      //                 color: Color(CColor.mcolor),
                      //               )
                      //           ),
                      //         ),
                      //       ),
                      //       SizedBox(height: 20,),
                      //       Text('Card Holder Name',style: TextStyle(
                      //           fontSize: 12,
                      //           fontWeight: FontWeight.bold
                      //       ),),
                      //       Theme(
                      //         data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                      //         child: TextField(
                      //           style: TextStyle(
                      //               fontSize: 12
                      //           ),
                      //           cursorColor: Color(CColor.mcolor),
                      //           decoration: InputDecoration(
                      //               hintText: 'enter card holder name',
                      //               hintStyle: TextStyle(
                      //                 fontSize: 12,
                      //                 color: Color(CColor.mcolor),
                      //               )
                      //           ),
                      //         ),
                      //       ),
                      //       SizedBox(height: 20,),
                      //       Row(
                      //         children: [
                      //           Expanded(
                      //             child: Column(
                      //               crossAxisAlignment: CrossAxisAlignment.start,
                      //               children: [
                      //                 Text('Expiry Date',style: TextStyle(
                      //                     fontSize: 12,
                      //                     fontWeight: FontWeight.bold
                      //                 ),),
                      //                 Theme(
                      //                   data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                      //                   child: TextField(
                      //                     style: TextStyle(
                      //                         fontSize: 12
                      //                     ),
                      //                     cursorColor: Color(CColor.mcolor),
                      //                     decoration: InputDecoration(
                      //                         hintText: 'enter expiry date',
                      //                         hintStyle: TextStyle(
                      //                           fontSize: 12,
                      //                           color: Color(CColor.mcolor),
                      //                         )
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //           SizedBox(width: 20,),
                      //           Expanded(
                      //             child: Column(
                      //               crossAxisAlignment: CrossAxisAlignment.start,
                      //               children: [
                      //                 Text('CVV Code',
                      //                 style: TextStyle(
                      //                   fontSize: 12,
                      //                   fontWeight: FontWeight.bold
                      //                 ),
                      //                 ),
                      //                 Theme(
                      //                   data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                      //                   child: TextField(
                      //                     style: TextStyle(
                      //                         fontSize: 12
                      //                     ),
                      //                     cursorColor: Color(CColor.mcolor),
                      //                     decoration: InputDecoration(
                      //                         hintText: 'enter cvv code',
                      //                         hintStyle: TextStyle(
                      //                           fontSize: 12,
                      //                           color: Color(CColor.mcolor),
                      //                         )
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //       SizedBox(height: 20,),
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Text('Save credit card number'),
                      //           FlutterSwitch(
                      //               height: 20,
                      //               width: 45,
                      //               padding: 2,
                      //               switchBorder: Border.all(color: Colors.black),
                      //               inactiveColor: Colors.white,
                      //               toggleColor: Colors.black,
                      //               activeColor: Colors.grey,
                      //               activeToggleColor: Colors.white,
                      //               value: isOn,
                      //               onToggle: (value){
                      //                 setState(() {
                      //                   isOn = value;
                      //                 });
                      //               }
                      //           )
                      //         ],
                      //       ),
                      //       SizedBox(height: 20,),
                      //     ],
                      //   ),
                      // ),
                      //for paypal
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text('Paypal Email',style: TextStyle(
                            //     fontSize: 12,
                            //     fontWeight: FontWeight.bold
                            // ),),
                            Theme(
                              data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(
                                    fontSize: 12
                                ),
                                cursorColor: Color(CColor.mcolor),
                                decoration: InputDecoration(
                                    labelStyle: TextStyle(color: Color(CColor.mcolor),fontSize: 13,fontWeight: FontWeight.bold),
                                    labelText: 'Paypal email',
                                    hintText: 'enter paypal email',
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: Color(CColor.mcolor),
                                    )
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Save paypal email'),
                                FlutterSwitch(
                                    height: 20,
                                    width: 45,
                                    padding: 2,
                                    switchBorder: Border.all(color: Colors.black),
                                    inactiveColor: Colors.white,
                                    toggleColor: Colors.black,
                                    activeColor: Colors.grey,
                                    activeToggleColor: Colors.white,
                                    value: isOn,
                                    onToggle: (value){
                                      setState(() {
                                        isOn = value;
                                      });
                                    }
                                )
                              ],
                            ),
                            SizedBox(height: 30,),
                          ],
                        ),
                      ),
                      //for bkash
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text('Bkash Account Number',style: TextStyle(
                            //     fontSize: 12,
                            //     fontWeight: FontWeight.bold
                            // ),),
                            Theme(
                              data: Theme.of(context).copyWith(primaryColor: Color(CColor.mcolor),),
                              child: TextField(

                                keyboardType: TextInputType.phone,
                                style: TextStyle(
                                    fontSize: 12
                                ),
                                cursorColor: Color(CColor.mcolor),
                                decoration: InputDecoration(
                                    labelStyle: TextStyle(color: Color(CColor.mcolor),fontSize: 13,fontWeight: FontWeight.bold),
                                    labelText: 'Bkash Account Number ',
                                    hintText: 'enter bkash account number',
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: Color(CColor.mcolor),
                                    )
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Save bkash account number'),
                                FlutterSwitch(
                                  height: 20,
                                    width: 45,
                                    padding: 2,
                                    switchBorder: Border.all(color: Colors.black),
                                    inactiveColor: Colors.white,
                                    toggleColor: Colors.black,
                                    activeColor: Colors.grey,
                                    activeToggleColor: Colors.white,
                                    value: isOn,
                                    onToggle: (value){
                                      setState(() {
                                        isOn = value;
                                      });
                                    }
                                )
                              ],
                            ),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
                    ]
                ),
              ),
              //tabbar view section end
              Center(
                child: ElevatedButton(onPressed: (){
                  if (formKey.currentState.validate()) {
                    print('valid!');
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NOrderHistoryScreen()));
                  } else {
                    print('invalid!');
                  }
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>NOrderHistoryScreen()));
                },
                  child: Text('Pay Now',style: TextStyle(
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
