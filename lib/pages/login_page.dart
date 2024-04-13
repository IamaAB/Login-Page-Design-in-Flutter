import 'package:flutter/material.dart';
import 'package:login_page_idesign_n_flutter/components/Textfield.dart';
import 'package:login_page_idesign_n_flutter/components/mybutton.dart';
import 'package:login_page_idesign_n_flutter/components/square_tile.dart';


class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  final usernamcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
     children:   [
       // logo
       const SizedBox(height: 50),
       const   Icon(Icons.lock ,
                 size: 100,
               ),
       const SizedBox(height: 50),
       // welcome backk
        Text("Welcome Back, You have been missed!", style: TextStyle(
         color: Colors.grey[700],
          fontSize: 17
       ),),
            const SizedBox(height: 25),
       //username
             Mytextfiels(
                 controller: usernamcontroller,
                 hinttext: "Enter Your username",
                 obscuretext: false),
       const SizedBox(height: 10),
       // password
       Mytextfiels(
           controller: passwordcontroller,
           hinttext: "Enter Password",
           obscuretext: true),


       //forgot password
       const SizedBox(height: 12),

       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Text("Forgot Password?"),
           ],
         ),
       ),

       // sign in
       const SizedBox(height: 30),
       Mybutton(),

       // or continue with
       const SizedBox(height: 50),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Expanded(child: Divider(thickness: 2,color: Colors.grey.shade400,)),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0),
               child: Text("Or continue with",
               style: TextStyle(
                 // color: Colors.grey.shade700,
                 fontSize: 15
               ),
               ),
             ),
             Expanded(child: Divider(thickness: 2,color: Colors.grey.shade400,)),
           ],
         ),
       ),

       const SizedBox(height: 50),
       // google + apple logo
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           square_tile(imagepath: "lib/images/google.png"),
           SizedBox(width: 20,),
           square_tile(imagepath: "lib/images/apple.png")

         ],
       ),
       const SizedBox(height: 40),
     //   new member register here
         Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Not a member?"),
      SizedBox(width: 5,),
      Text("Regsiter now",
      style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold
      ),
      ),

    ],
  )

     ],


  ),
          ),
        ),
    );
  }
}
