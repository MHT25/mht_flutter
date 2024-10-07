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
                  defaultFormField(
                    controller: emailController,
                    lable: 'Email',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                      validate: (String? value)
                      {
                        if (value == null || value.isEmpty) {
                          return 'Email must not be empty';
                        }
                        return null;
                      }


                  ),
                  SizedBox(
                      height:15),
                  defaultFormField(
                    controller: passwordController,
                    lable: 'Password',
                    prefix: Icons.lock,
                    suffix:Icons.remove_red_eye ,
                    type: TextInputType.visiblePassword,
                    validate: (String? value)
                    {
                    if (value == null || value.isEmpty) {
                      return 'password is too short';
                    }
                    return null;
                      }
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
                      if(formKey.currentState!.validate())
                      {
                        print(emailController.text);
                        print(passwordController.text);
                      }
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
