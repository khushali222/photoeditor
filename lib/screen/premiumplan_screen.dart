import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'enhance.dart';

class PremiumPlanScreen extends StatefulWidget {
  @override
  State<PremiumPlanScreen> createState() => _PremiumPlanScreenState();
}

class _PremiumPlanScreenState extends State<PremiumPlanScreen> {
  var _razorpay = Razorpay();

  void initState(){
    super.initState();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }

  void dispose(){
    _razorpay.clear();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Enhance()));
          },
          icon: Icon(Icons.close, color: Colors.black),
        ),
        centerTitle: true,
        title: Text("Premium Plan",style: TextStyle(
          fontFamily: 'OpenSans',
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 9,right: 9),
              child:
              Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                    children:
                    [
                      Positioned(
                        top: 20,
                        right: 20,
                        child: Image.asset('assets/images/img_18.png',height: 120,width: 120,),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .26,
                        width: MediaQuery.of(context).size.width * .99,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromRGBO(124, 87, 187, .5),
                              Color.fromRGBO(128, 200, 226, 1)
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                SizedBox(width: 25,),
                                Text("Photo Me Pro",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                SizedBox(width: 30,),
                                Text("Unlimited saves",
                                  style: TextStyle(


                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12,),
                            Row(
                              children: [
                                SizedBox(width: 30,),
                                Text("Multiple Results",
                                  style: TextStyle(


                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12,),
                            Row(
                              children: [
                                SizedBox(width: 30,),
                                Text("Export high quality image",
                                  style: TextStyle(


                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),]
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: MediaQuery.of(context).size.height * .11,
                  width: MediaQuery.of(context).size.width * .99,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Text("1 month",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),),
                          Spacer(),
                          Text("\$10.22/Month", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),

                          SizedBox(width: 20,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: MediaQuery.of(context).size.height * .11,
                  width: MediaQuery.of(context).size.width * .99,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Text("1 month",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),),
                          Spacer(),
                          Text("\$ 80.22/year ",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Cancel anytime",style: TextStyle(fontSize: 16,color: Colors.grey),),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: GestureDetector(
                onTap: (){
                  var options = {
                    'key': 'rzp_test_RsqV5b0NEAwbWT',
                    'amount': 1 * 100, //in the smallest currency sub-unit.
                    'name': 'Acme Corp.',
                    'order_id': 'order_EMBFqjDHEEn80l', // Generate order_id using Orders API
                    'description': 'Fine T-Shirt',
                    'timeout': 60, // in seconds
                  };
                  _razorpay.open(options);
                },
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    height: 39,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[200],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(child: Text("continue",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Row(
             children: [
               SizedBox(width: 25,),
               Text("Terms of use",style: TextStyle(fontSize: 16,color: Colors.grey),),
               SizedBox(width: 5,),
               Expanded(
                 flex: 1,
                 child: Container(
                   margin: EdgeInsets.symmetric(vertical: 1),
                   padding: EdgeInsets.all(8),
                   decoration: BoxDecoration(
                     border: Border(
                       left: BorderSide(
                         color: Colors.grey,
                         width: 1.0,
                       ),
                     ),
                   ),

                 ),
               ),
               Text("Privacy Policy",style: TextStyle(fontSize: 16,color: Colors.grey),),
               SizedBox(width: 5,),
               Expanded(
                 flex: 1,
                 child: Container(
                   margin: EdgeInsets.symmetric(vertical: 1),
                   padding: EdgeInsets.all(8),
                   decoration: BoxDecoration(
                     border: Border(
                       left: BorderSide(
                         color: Colors.grey,
                         width: 1.0,
                       ),
                     ),
                   ),

                 ),
               ),
               Text("Restore",style: TextStyle(fontSize: 16,color: Colors.grey),),
               SizedBox(width: 25,),
             ],
            ),
          ],
        ),
      ),
    );
  }
}
