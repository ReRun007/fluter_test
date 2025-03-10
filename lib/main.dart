import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: const FoodDetailPage(),
    );
  }
}

class FoodDetailPage extends StatefulWidget {
  const FoodDetailPage({Key? key}) : super(key: key);

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  int _quantity = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          // ใช้ BoxDecoration และ image property แทนการใช้สีพื้น
          image: DecorationImage(
            image: AssetImage('assets/food.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // ส่วนบนของหน้าจอ (Header)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ปุ่มกลับ
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new, size: 18),
                        onPressed: () {},
                      ),
                    ),
                    // ตะกร้าสินค้า
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.shopping_cart_outlined),
                            onPressed: () {},
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: const Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // ข้อความ "HAVE FUN EATING"
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Text(
                      "HAVE\nFUN\nEATING",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 0.9,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // รูปอาหารและส่วนประกอบต่างๆ
              Stack(
                alignment: Alignment.center,
                children: [
                  // เครื่องปรุงรอบๆ จาน
                  Positioned(
                    top: 10,
                    right: 70,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.eco,
                        color: Colors.green,
                        size: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 60,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.cake,
                        color: Colors.redAccent,
                        size: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 80,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.food_bank,
                        color: Colors.yellow,
                        size: 50,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    right: 50,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.spa,
                        color: Colors.orange,
                        size: 30,
                      ),
                    ),
                  ),

                  // จานพาสต้าหลัก
                  Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipOval(
                            child: Container(
                              width: 180,
                              height: 180,
                              color: Colors.amber[200],
                              child: Center(
                                child: Icon(
                                  Icons.restaurant,
                                  size: 80,
                                  color: Colors.brown,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 30,
                            child: Icon(
                              Icons.dinner_dining,
                              size: 50,
                              color: Colors.black54,
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            right: 30,
                            child: Transform.rotate(
                              angle: 0.5,
                              child: Icon(
                                Icons.restaurant,
                                size: 50,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // ส่วนด้านล่าง - ข้อมูลอาหาร
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),

                      // ชื่ออาหาร
                      const Text(
                        "Fruit nutrition meal",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      // คะแนนและความคิดเห็น
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 18),
                          const Icon(Icons.star, color: Colors.amber, size: 18),
                          const Icon(Icons.star, color: Colors.amber, size: 18),
                          const Icon(Icons.star, color: Colors.amber, size: 18),
                          const Icon(Icons.star, color: Colors.grey, size: 18),
                          const SizedBox(width: 8),
                          const Text(
                            "4.5",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "1287 comments",
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      // ข้อมูลเพิ่มเติม
                      Row(
                        children: [
                          Icon(
                            Icons.fastfood_outlined,
                            color: Colors.amber[300],
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "Normal",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          const SizedBox(width: 20),
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.blue[300],
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "1.7km",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          const SizedBox(width: 20),
                          Icon(
                            Icons.timer_outlined,
                            color: Colors.orange[300],
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "32min",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // คำอธิบาย
                      const Text(
                        "Introduce",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        "The pasta in the picture USES alkaline noodles, which many people are not very familiar with. The sauce is also very popular with the local people. If",
                        style: TextStyle(
                          color: Colors.grey[600],
                          height: 1.5,
                        ),
                      ),

                      const SizedBox(height: 4),

                      // ปุ่ม Expand
                      Row(
                        children: [
                          Text(
                            "Expand",
                            style: TextStyle(
                              color: Colors.teal[300],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.teal[300],
                            size: 20,
                          ),
                        ],
                      ),

                      const Spacer(),

                      // ส่วนล่างสุด - จำนวนและปุ่มเพิ่มลงตะกร้า
                      Row(
                        children: [
                          // ปุ่มลด-เพิ่มจำนวน
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.remove),
                                  onPressed: () {
                                    if (_quantity > 1) {
                                      setState(() {
                                        _quantity--;
                                      });
                                    }
                                  },
                                ),
                                Text(
                                  "$_quantity",
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      _quantity++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 16),

                          // ปุ่มเพิ่มลงตะกร้า
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal[300],
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "\$ 28  |  ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    "Add to cart",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // ปุ่มชอบ (Favorite)
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 200),
        decoration: BoxDecoration(
          color: Colors.teal[300],
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: const Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}