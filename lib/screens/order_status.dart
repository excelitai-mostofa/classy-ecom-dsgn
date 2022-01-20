import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    Path customPath = Path()
      ..moveTo(0, 2)
      ..lineTo(0, 70)
    ;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),


        title: Text('Order Status',
          style: TextStyle(
              color: Colors.black,
              fontSize: 17
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),




      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Text(
                    'Invoice: 25AK367',
                  style: TextStyle(
                    color: Colors.orange
                  ),
                )
            ),

            SizedBox(height: 20,),

            Container(
              height: MediaQuery.of(context).size.height*.3,
              width: MediaQuery.of(context).size.width*.6,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.black,
              //     width: .5
              //   )
              // ),
              child: Image.asset('assets/images/order_status.png'),
            ),

            SizedBox(height: 10,),

            Container(
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width*.75,
              // decoration: BoxDecoration(
              //     border: Border.all(
              //         color: Colors.black,
              //         width: .5
              //     )
              // ),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.watch_later_outlined, color: Color(0xFFFF6000),),
                          DottedBorder(
                            color: Color(0xFFFF6000),
                            customPath: (size)=> customPath,
                            strokeWidth: 1,
                            strokeCap: StrokeCap.round,
                            borderType: BorderType.Rect,
                              dashPattern: [2,2],
                              child: Container(
                                width: 0,
                                height: 70,
                              )
                          ),
                          Icon(Icons.car_rental_outlined, color: Color(0xFFFF6000)),
                          DottedBorder(
                              color: Color(0xFFFF6000),
                              customPath: (size)=> customPath,
                              strokeWidth: 1,
                              strokeCap: StrokeCap.round,
                              borderType: BorderType.Rect,
                              dashPattern: [2,2],
                              child: Container(
                                width: 0,
                                height: 70,
                              )
                          ),
                          Icon(Icons.card_giftcard_outlined, color: Color(0xFFFF6000))
                        ],
                      )
                  ),
                  Expanded(
                    flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order received'),
                          Text('2.05 pm, 11 may 2021', style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 55,),
                          Text('On the way'),
                          Text('2.05 pm, 11 may 2021', style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 10,),
                          Container(
                            height: 20,
                            width: 105,
                            child: ElevatedButton(
                              onPressed: (){},
                              child: Row(
                                children: [
                                  Text('Tracking', style: TextStyle(color: Colors.white70),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Icon(
                                        Icons.circle,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFFF6000),
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  side: BorderSide(width: 1, color: Color(0xFFFF6000))
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),
                          Text('Deliverd'),
                          Text('Finish time in 10 mins', style: TextStyle(color: Colors.grey),),
                        ],
                      )
                  ),
                ],
              ),
            ),

            Container(
              height: 25,
              width: 170,
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Back to Shopping', style: TextStyle(color: Colors.white70),),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFF6000),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(width: 1, color: Color(0xFFFF6000))
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
