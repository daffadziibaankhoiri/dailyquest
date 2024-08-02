import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {

  Color warna = Color(0xFF720000);
  bool show = true;
  final TextEditingController UsernameController =TextEditingController();
  final FocusNode focusNodePass = FocusNode();
  final TextEditingController PasswordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 65, right: 65),
              child: Container(
        
                  child: Image(image: AssetImage("assets/images/logo_SplashScreen.png"))),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 40, left: 40, top: 40, bottom: 50),
                child: Container(
                  width: double.maxFinite,
                  // height: 200,
                  // color: Colors.grey,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
        
                          decoration: BoxDecoration(
                              color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            )
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                                child:TextUsername()
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 40),
                                child:TextPassword()
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13, top: 0),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                                "Log In",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'ProximaNovaBold',
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 0, top: 170),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15), // Atur kelengkungan di sini
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all<Color>(warna)
                                ),
                                  onPressed: null,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10),
                                    child: Text(
                                      "Log In",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'ProximaNovaBold',
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                              )
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/register');
                            },
                            child: Text(
                              "Create new Account here",
                              style: TextStyle(
                                  color: warna,
                                  fontFamily: 'ProximaNovaBold',
                                  fontSize: 14,

                                decoration: TextDecoration.underline,
                                decorationColor: warna,

                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget TextUsername (){
    return TextField(

      onSubmitted: (value){
        focusNodePass.requestFocus();
      },
      controller: UsernameController,
      keyboardType: TextInputType.name,
      cursorColor: Colors.grey,
      style: TextStyle(
          color: Colors.black,
          fontFamily: 'ProximaNovaBold'
      ),
      decoration: InputDecoration(

          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
          hintText: "Username",
          hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontFamily: 'ProximaNovaBold'
          ),
          //Border pada Text Field
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.black,

              )
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: Colors.black
            ),
          )
      ),
    );
  }
  Widget TextPassword(){
    return TextField(
      focusNode: focusNodePass,
      controller: PasswordController,
      keyboardType: TextInputType.name,
      cursorColor: Colors.grey,
      style: TextStyle(
          color: Colors.black,
          fontFamily: 'ProximaNovaBold'
      ),
      obscureText: show,
      decoration: InputDecoration(

          isDense: true,

          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
          hintText: "Password",
          hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontFamily: 'ProximaNovaBold'
          ),
          suffixIcon: IconButton(
            icon: Icon(show ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
              color: Colors.black,),
            onPressed: (){
              setState(() {
                show = !show;
              });
            },
          ),
          //Border pada Text Field
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.black,

              )
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: Colors.black
            ),
          )
      ),
    );
  }
}
