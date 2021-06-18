import 'package:flutter/material.dart';
// import 'package:hello_world/pages/stful_screen.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Tugas 3',
//       theme: ThemeData(
//         brightness: Brightness.light,
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//       ),
//       themeMode: ThemeMode.dark,
//       home: StfulScreen(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 10), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    controller.forward();
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(
          title: 'Product layout demo home page',
          animation: animation,
        ));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title, this.animation}) : super(key: key);
  final String title;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            FadeTransition(
                child: ProductBox(
                    name: "iPhone",
                    description: "ini adalah hp iphone",
                    price: 1000,
                    image:
                        "https://d2pa5gi5n2e1an.cloudfront.net/webp/global/images/product/mobilephones/Apple_iPhone_11_Pro_Max/Apple_iPhone_11_Pro_Max_L_1.jpg"),
                opacity: animation),
            MyAnimatedWidget(
                child: ProductBox(
                    name: "Pixel",
                    description: "ini adalah hp pixel",
                    price: 800,
                    image:
                        "https://www.mytrendyphone.eu/images/Google-Pixel-5-128GB-Black-PIXEL-5-128B-16102020-01-p.jpg"),
                animation: animation),
            ProductBox(
                name: "Samsung",
                description: "ini adalah hp samsung",
                price: 900,
                image:
                    "https://d2pa5gi5n2e1an.cloudfront.net/webp/global/images/product/mobilephones/Samsung_Galaxy_S21_Ultra_5G/Samsung_Galaxy_S21_Ultra_5G_L_1.jpg"),
            ProductBox(
                name: "Huawei",
                description: "Ini adalah hp huawei",
                price: 700,
                image:
                    "https://cf.shopee.co.id/file/5031b26fe3fa0378f46f2bbda7363cd7"),
            ProductBox(
                name: "Xiaomi",
                description: "Ini adalah hp xiaomi",
                price: 500,
                image:
                    "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/3/31/f83d6810-1b2c-42b4-b6e0-38deab3e6012.jpg.webp?ect=4g"),
            ProductBox(
                name: "Vivo",
                description: "Ini adalah hp vivo",
                price: 600,
                image:
                    "https://rlifgk317qjw.cdn.shift8web.com/wp-content/uploads/2020/12/Vivo-X60-Pro-5G.png"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}

class MyAnimatedWidget extends StatelessWidget {
  MyAnimatedWidget({this.child, this.animation});
  final Widget child;
  final Animation<double> animation;

  Widget build(BuildContext context) => Center(
        child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) => Container(
                  child: Opacity(opacity: animation.value, child: child),
                ),
            child: child),
      );
}
