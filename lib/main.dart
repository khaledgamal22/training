import 'package:flutter/material.dart';

import 'product_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: ProductDetails(),
      ),
    );
  }
}

class home extends StatelessWidget {
  const home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Banking Information',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff221F1F),
              ),
            ),
            Divider(
              color: Color(0xff221F1F),
            ),
            Textfield(hintText: 'PIN'),
            Textfield(hintText: 'Card Name'),
            Textfield(hintText: 'Expired Date (MM/YY)'),
            Textfield(
              hintText: 'MVC',
              suffixIcon: Icons.error_outline,
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  'Personal Information',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff221F1F),
                  ),
                ),
                Spacer(),
                Text(
                  'edit',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7D7B7B),
                  ),
                ),
              ],
            ),
            Divider(
              color: Color(0xff221F1F),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Trần Minh Trí',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff7D7B7B),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'tmtri310251@gmail.com',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff7D7B7B),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '60 Lang Ha, Ba Dinh, Hanoi, Vietnam',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff7D7B7B),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '0123456789',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff7D7B7B),
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Text(
                  'Phương thức vận chuyển',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff221F1F),
                  ),
                ),
                Spacer(),
                Text(
                  'edit',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7D7B7B),
                  ),
                ),
              ],
            ),
            Divider(
              color: Color(0xff221F1F),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Quick Shipping - 15.000đ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff7D7B7B),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '(Expected Shipping Date:  May 5th)',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff7D7B7B),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Payment Method',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff221F1F),
                  ),
                ),
                Spacer(),
                Text(
                  'edit',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7D7B7B),
                  ),
                ),
              ],
            ),
            Divider(
              color: Color(0xff221F1F),
            ),
            Text('VISA/MASTERCARD'),
            SizedBox(height: 20),
            Text(
              'Your Items',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff221F1F),
              ),
            ),
            Divider(
              color: Color(0xff221F1F),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 77,
                  height: 77,
                  color: Color(0xffF6F6F6),
                  child: Image.asset(
                    'assets/images/4c79faa42e885c9a92c6e6b29666fdf3.png',
                    width: 60,
                    height: 60,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Spider Plant',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                          child: VerticalDivider(
                            color: Color(0xff221F1F),
                            thickness: 1.5,
                            endIndent: 1,
                          ),
                        ),
                        Text(
                          'Outdoor',
                          style: TextStyle(
                            color: Color(0xff7D7B7B),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      r'$250',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '2 items',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Textfield extends StatelessWidget {
  const Textfield({super.key, required this.hintText, this.suffixIcon});

  final String hintText;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: suffixIcon != null
            ? Icon(
                suffixIcon,
                color: Color(0xff7D7B7B),
              )
            : null,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xff7D7B7B),
        ),
      ),
    );
  }
}
