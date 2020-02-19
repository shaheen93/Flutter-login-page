import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child,
        );
      },
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          backgroundColor: Color.fromRGBO(245, 245, 245, 1)),
      home: MyHomePage(title: 'الثريا'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: LayoutBuilder(builder: (ctx, constraints) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: constraints.maxHeight * 0.27,
                  width: constraints.maxWidth * 0.27,
                  child: Image(
                    image: AssetImage(
                      './assets/images/logo.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  width: constraints.maxWidth * 0.9,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'البريد الالكتروني',
                          hintStyle: TextStyle(
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.bold),
                          enabledBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).backgroundColor,
                            ),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(50.0),
                            ),
                          ),
                          border: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).backgroundColor,
                            ),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(50.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.03,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.bold),
                          contentPadding: EdgeInsets.all(8),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'كلمة المرور',
                          enabledBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).backgroundColor,
                            ),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(50.0),
                            ),
                          ),
                          border: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).backgroundColor,
                            ),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(50.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'استرجاع كلمة المرور',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Tajawal',
                        ),
                      ),
                      textColor: Color.fromRGBO(182, 32, 32, 1),
                    ),
                  ],
                ),
                Container(
                  width: constraints.maxWidth * 0.9,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          color: Color.fromRGBO(78, 78, 151, 1),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          onPressed: () {},
                          child: Text(
                            'تسجيل دخول',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tajawal',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.03,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          color: Color.fromRGBO(56, 56, 100, 1),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          onPressed: () {},
                          child: Text(
                            'حساب جديد',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tajawal',
                            ),
                          ),
                        ),
                      ),
                      FlatButton(
                          textColor: Color.fromRGBO(56, 56, 100, 1),
                          onPressed: () {},
                          child: Text(
                            'الدخول كزائر',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tajawal',
                            ),
                          ))
                    ],
                  ),
                ),
                Text(
                  'تسجيل الدخول بواسطة',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                            height: constraints.maxHeight * 0.08,
                            child: Image.asset('./assets/images/instagram.png',
                                fit: BoxFit.contain)),
                        Text('انستجرام')
                      ],
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.1,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            height: constraints.maxHeight * 0.08,
                            child: Image.asset('./assets/images/twitter.png',
                                fit: BoxFit.contain)),
                        Text('تويتر')
                      ],
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.1,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            height: constraints.maxHeight * 0.08,
                            child: Image.asset('./assets/images/facebook.png',
                                fit: BoxFit.contain)),
                        Text('فيسبوك')
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
