import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_ecom_app/customcolor.dart';
import 'package:new_ecom_app/datamodel.dart';

class NOrderHistoryTwoScreen extends StatefulWidget {
  const NOrderHistoryTwoScreen({Key key}) : super(key: key);

  @override
  _NOrderHistoryTwoScreenState createState() => _NOrderHistoryTwoScreenState();
}

class _NOrderHistoryTwoScreenState extends State<NOrderHistoryTwoScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(CColor.nbgcolor),
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Color(CColor.nbgcolor),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()=>Navigator.pop(context),color: Color(CColor.mcolor)),
        title: Text("Order History",
          style: TextStyle(
              color: Color(CColor.mcolor)
          ),
        ),
      ),
      body: DefaultTabController(
          length: 7,
          child: Column(
            children: [
              //start tabbar
              Container(
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: Colors.grey.withOpacity(.2)
                    )
                  )
                ),
                child: TabBar(
                  isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Color(CColor.mcolor),
                    labelPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    tabs: [
                      Text('All'),
                      Text('Pending'),
                      Text('Confirmed'),
                      Text('Processing'),
                      Text('Picked'),
                      Text('Stopped'),
                      Text('Canceled'),
                    ]
                ),
              ),
              SizedBox(height: 10,),
              //start tabview
              Expanded(
                child: TabBarView(
                    children: [
                      //for all
                      ListView.builder(
                        itemCount: OrderHistory().all.length,
                          itemBuilder: (context,index){
                          var data = OrderHistory().all;
                          orderStatusColor(){
                            if(data[index].oStatus == 'Pending'){
                              return Color(CColor.pending);
                            } else if(data[index].oStatus == 'Processing'){
                              return Color(CColor.processing);
                            }
                            else if(data[index].oStatus == 'Canceled'){
                              return Color(CColor.canceled);
                            }
                            else if(data[index].oStatus == 'Picked'){
                              return Color(CColor.picked);
                            }
                            else if(data[index].oStatus == 'Stopped'){
                              return Color(CColor.stopped);
                            }
                            else if(data[index].oStatus == 'Confirmed'){
                              return Color(CColor.confirmed);
                            }
                          }
                          return Card(
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(data[index].pId,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600
                                      ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(data[index].price,
                                        style: TextStyle(
                                            fontSize: 12,
                                          color: Color(CColor.mcolor),
                                          fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Text(data[index].oStatus,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10
                                            ),
                                            ),
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: orderStatusColor(),
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))
                                            ),
                                          ),
                                          Container(
                                            child: data[index].payStatus?Text('Paid',style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10
                                            ),):Text('Refunded',style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10
                                            ),),
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                color: data[index].payStatus?Color(CColor.mcolor):Color(CColor.mcolor).withOpacity(.2),
                                                borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text(data[index].oDate,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10
                                      ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                          }
                      ),
                      //for pending
                      ListView.builder(
                          itemCount: OrderHistory().pending.length,
                          itemBuilder: (context,index){
                            var data = OrderHistory().pending;
                            return Card(
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(data[index].pId,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(data[index].price,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(CColor.mcolor),
                                              fontWeight: FontWeight.w600
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Text(data[index].oStatus,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10
                                                ),
                                              ),
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Color(CColor.pending),
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))
                                              ),
                                            ),
                                            Container(
                                              child: data[index].payStatus?Text('Paid',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10
                                              ),):Text('Refunded',style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10
                                              ),),
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: data[index].payStatus?Color(CColor.mcolor):Color(CColor.mcolor).withOpacity(.2),
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text(data[index].oDate,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      //for confirmed
                      ListView.builder(
                          itemCount: OrderHistory().confirmed.length,
                          itemBuilder: (context,index){
                            var data = OrderHistory().confirmed;
                            return Card(
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(data[index].pId,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(data[index].price,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(CColor.mcolor),
                                              fontWeight: FontWeight.w600
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Text(data[index].oStatus,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10
                                                ),
                                              ),
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Color(CColor.confirmed),
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))
                                              ),
                                            ),
                                            Container(
                                              child: data[index].payStatus?Text('Paid',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10
                                              ),):Text('Refunded',style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10
                                              ),),
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: data[index].payStatus?Color(CColor.mcolor):Color(CColor.mcolor).withOpacity(.2),
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text(data[index].oDate,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      //for processing
                      ListView.builder(
                          itemCount: OrderHistory().processing.length,
                          itemBuilder: (context,index){
                            var data = OrderHistory().processing;
                            return Card(
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(data[index].pId,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(data[index].price,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(CColor.mcolor),
                                              fontWeight: FontWeight.w600
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Text(data[index].oStatus,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10
                                                ),
                                              ),
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Color(CColor.processing),
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))
                                              ),
                                            ),
                                            Container(
                                              child: data[index].payStatus?Text('Paid',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10
                                              ),):Text('Refunded',style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10
                                              ),),
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: data[index].payStatus?Color(CColor.mcolor):Color(CColor.mcolor).withOpacity(.2),
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text(data[index].oDate,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      //for picked
                      ListView.builder(
                          itemCount: OrderHistory().picked.length,
                          itemBuilder: (context,index){
                            var data = OrderHistory().picked;
                            return Card(
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(data[index].pId,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(data[index].price,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(CColor.mcolor),
                                              fontWeight: FontWeight.w600
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Text(data[index].oStatus,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10
                                                ),
                                              ),
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Color(CColor.picked),
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))
                                              ),
                                            ),
                                            Container(
                                              child: data[index].payStatus?Text('Paid',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10
                                              ),):Text('Refunded',style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10
                                              ),),
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: data[index].payStatus?Color(CColor.mcolor):Color(CColor.mcolor).withOpacity(.2),
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text(data[index].oDate,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      //for stopped
                      ListView.builder(
                          itemCount: OrderHistory().stopped.length,
                          itemBuilder: (context,index){
                            var data = OrderHistory().stopped;
                            return Card(
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(data[index].pId,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(data[index].price,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(CColor.mcolor),
                                              fontWeight: FontWeight.w600
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Text(data[index].oStatus,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10
                                                ),
                                              ),
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Color(CColor.stopped),
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))
                                              ),
                                            ),
                                            Container(
                                              child: data[index].payStatus?Text('Paid',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10
                                              ),):Text('Refunded',style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10
                                              ),),
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: data[index].payStatus?Color(CColor.mcolor):Color(CColor.mcolor).withOpacity(.2),
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text(data[index].oDate,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      //for canceled
                      ListView.builder(
                          itemCount: OrderHistory().canceled.length,
                          itemBuilder: (context,index){
                            var data = OrderHistory().canceled;
                            return Card(
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(data[index].pId,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(data[index].price,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(CColor.mcolor),
                                              fontWeight: FontWeight.w600
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Text(data[index].oStatus,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10
                                                ),
                                              ),
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Color(CColor.canceled),
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))
                                              ),
                                            ),
                                            Container(
                                              child: data[index].payStatus?Text('Paid',style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10
                                              ),):Text('Refunded',style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10
                                              ),),
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: data[index].payStatus?Color(CColor.mcolor):Color(CColor.mcolor).withOpacity(.2),
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text(data[index].oDate,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    ]
                ),
              )
            ],
          )
      ),
    );
  }
}
