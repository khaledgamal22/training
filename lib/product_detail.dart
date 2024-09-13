import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Black Panse',
          style: TextStyle(
            color: Color(0xff221F1F),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Color(0xffF6F6F6),
                child: Image.asset(
                  'assets/images/4c79faa42e885c9a92c6e6b29666fdf3.png',
                  height: 300,
                  width: double.infinity,
                ),
              ),
              Positioned(
                top: 150,
                left: 30,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 4,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 30,
                top: 150,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.white,
                  ),
                  child: Transform.rotate(
                      angle: -3.14,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                        ),
                      )),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff007537),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Plant',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      height: 30,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff007537),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Outdoor',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Basic Knowledge',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add,
                      size: 25,
                      color: Color(0xff000000).withOpacity(0.6),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(
                  color: Color(0xff007537),
                  thickness: 1.5,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Stages',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    ),
                    Spacer(),
                    Icon(
                      Icons.remove,
                      size: 25,
                      color: Color(0xff000000).withOpacity(0.6),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                MyWidget(title: '1. Watering Seeds (48h) '),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      '2. Start Growing (3-5 days)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_up,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Water: Distilled water or rainwater can be used, avoid using hard water. Water regularly, keeping the soil moist but not soggy.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff333333),
                  ),
                ),
                SizedBox(height: 10),
                MyWidget(
                  title: '3. Growing (2-3 weeks)',
                ),
                SizedBox(height: 10),
                MyWidget(
                  title: '4. Maturing (4-6 weeks) ',
                ),
                SizedBox(height: 10),
                MyWidget(
                  title: '5. Blooming (4-6 weeks)',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff333333),
          ),
        ),
        Spacer(),
        Icon(
          Icons.keyboard_arrow_down,
          size: 30,
        ),
      ],
    );
  }
}
