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
  var formKey = GlobalKey<FormState>();

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
            child: Form(
              key:formKey ,
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
                    onChanged:(Value)
                    {
                      print(Value);
                    },
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'email address must not be empty';
                      }
                      return null;
                    },
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
                    onFieldSubmitted:(String Value)
                    {
                      print(Value);
                    } ,
                    onChanged:(String Value)
                    {
                      print(Value);
                    },
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'password must not be empty';
                      }
                      return null;
                    },
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
                    radius: 15,
                    function:()
                    {
                      if(formKey.currentState!.validate())
                      {
                        print(emailController.text);
                        print(passwordController.text);

                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                    text:'Register',
                    background: Colors.blue,
                    width:double.infinity,
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
      ),
    );

  }
}
