import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
      Theme.of(context).brightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.only(right: 20, left: 20, bottom: 80 , top: 120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello\nWelcome Back" ,style: Theme.of(context).textTheme.displayLarge,),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    children: [
                      Image(image: AssetImage('assets/images/facebook.png') , width: 30,),
                      SizedBox(width: 30,),
                      Image(image: AssetImage('assets/images/google.png') , width: 30,),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email or Phone number"
                    ),
                  ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
        
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextButton(onPressed: (){}, child: Text("ForgetPassword?"  ,style: Theme.of(context).textTheme.bodySmall,)),
                ],
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  ElevatedButton(onPressed: () => {},
                    child: Center(child: Text("LogIn" , style: TextStyle(fontWeight: FontWeight.bold),)),),
                  SizedBox(height: 20,),
                  TextButton(onPressed: (){}, child: Text("Create Account" , style: Theme.of(context).textTheme.bodySmall,)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
