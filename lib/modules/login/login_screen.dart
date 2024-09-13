import 'package:flutter/material.dart';
import 'package:mht_flutter/shared/components/components.dart';

//reusable components:

// 1.timing
// 2.refactor
// 3.quality


class LoginScreen extends StatelessWidget
{
  var emailController=TextEditingController();
  var passwordController=TextEditingController();

    LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        leading:IconButton(onPressed: (){print('icon clicked');}, icon:Icon(Icons.notifications),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text('Login',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                  ,


                ),),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted:(Value){print(Value);} ,
                  onChanged:(Value){print(Value);},
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon:Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                    height:15),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted:(Value){print(Value);} ,
                  onChanged:(Value){print(Value);},
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon:Icon(Icons.lock),
                    suffix:Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,),
                defaultButton(
                    text:'login',
                  function:()
                  {
                    print(emailController.text);
                    print(passwordController.text);
                  },
                ),
                defaultButton(
                  text:'login',
                  background: Colors.red,
                  width: 200,
                  function:()
                  {
                    print(emailController.text);
                    print(passwordController.text);
                  },
                ),
                SizedBox(
                  height:10 ,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children:
                [
                  Text('Don\'t have an account?',
                  style: TextStyle(

                  ),),
                  TextButton(onPressed: (){}, child: Text('Register Now'))
                ],)
              ],),
          ),
        ),
      ),
    );

  }
}
