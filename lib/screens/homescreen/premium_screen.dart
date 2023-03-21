import 'package:flutter/material.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple.shade100),
                      child: Icon(Icons.person),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Upgrade to Premium',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'PREMIUM',
                    style: TextStyle(
                        color: Color(0XFFF0AF6D),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 5,
                    ),
                  ),
                  Text(
                    'Exclusive benefits',
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  border: Border.all(color: Color(0XFFF0AF6D), width: 1.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Individual Monthly',
                            style: TextStyle(
                                color: Color(0XFFF0AF6D),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '₹ 0/mo',
                            style: TextStyle(color: Color(0XFFF0AF6D)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.done,
                            color: Color(0XFFF0AF6D),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Offline Listening',
                            style: TextStyle(color: Color(0XFFF0AF6D)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.done,
                            color: Color(0XFFF0AF6D),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'On-demand Listening',
                            style: TextStyle(color: Color(0XFFF0AF6D)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFFF0AF6D)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Unlimited skips',
                            style: TextStyle(
                              color: Color(0XFFF0AF6D),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFFF0AF6D)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Ad-free music',
                            style: TextStyle(color: Color(0XFFF0AF6D)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFFF0AF6D)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'High-quality music',
                            style: TextStyle(color: Color(0XFFF0AF6D)),
                          ),
                        ],
                      ),
                      Text(
                        '30 days free trial, then 99/mo. Cancle anytime.',
                        style: TextStyle(color: Colors.white60),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  border: Border.all(color: Color(0XFF3AADF6), width: 1.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Family Plan',
                            style: TextStyle(
                                color: Color(0XFF3AADF6),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '₹ 119/mo',
                            style: TextStyle(color: Color(0XFF3AADF6)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFF3AADF6)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Up to 6 accounts',
                            style: TextStyle(color: Color(0XFF3AADF6)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFF3AADF6)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Offline Listening',
                            style: TextStyle(color: Color(0XFF3AADF6)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done,color: Color(0XFF3AADF6)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'On-demand listening',
                            style: TextStyle(color: Color(0XFF3AADF6)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFF3AADF6)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Unlimited skips',
                            style: TextStyle(color: Color(0XFF3AADF6)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFF3AADF6)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Ad-free music',
                            style: TextStyle(color: Color(0XFF3AADF6)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFF3AADF6)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'High-quality music',
                            style: TextStyle(color: Color(0XFF3AADF6)),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Text(
                          'Up to 6 accounts. 119/mo with 12-month auto renewal after free trial.'
                          'then 179/mo from 2nd year onwards.Cancle anytime. '
                          'Discount will be invalid if plan cancelled or resubscribed.',
                          style: TextStyle(color: Colors.white60),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  border: Border.all(color: Color(0XFFEE0B86), width: 1.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Student Plan',
                            style: TextStyle(
                                color: Color(0XFFEE0B86),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '₹ 49/mo',
                            style: TextStyle(color: Color(0XFFEE0B86)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFFEE0B86)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'College student only',
                            style: TextStyle(color: Color(0XFFEE0B86)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFFEE0B86)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Offline listening',
                            style: TextStyle(color: Color(0XFFEE0B86)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFFEE0B86)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'On-demand listening',
                            style: TextStyle(color: Color(0XFFEE0B86)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFFEE0B86)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Unlimited skips',
                            style: TextStyle(color: Color(0XFFEE0B86)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFFEE0B86)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Ad-free music',
                            style: TextStyle(color: Color(0XFFEE0B86)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.done, color: Color(0XFFEE0B86)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'High-quality music',
                            style: TextStyle(color: Color(0XFFEE0B86)),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Text(
                          'College student only,49/mo after free trial ends.Cancle anytime',
                          style: TextStyle(color: Colors.white60),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Get 30 days free',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Color(0XFFEE257D)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
