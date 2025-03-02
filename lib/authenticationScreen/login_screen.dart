import 'package:dating_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passTextEditingController = TextEditingController();
  bool showProgressBar = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                '/images/logo.jpg',
                height: 300,
              ),
              const Text(
                'Welcome',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
              ),
              const Text(
                'Login now to find your best match',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: emailTextEditingController,
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                  isObscure: false,
                ),
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: passTextEditingController,
                  labelText: "Password",
                  iconData: Icons.password_outlined,
                  isObscure: true,
                ),
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)),
                    child: InkWell(
                      onTap: (){},
                      child: const Center(child: Text('Login',style: TextStyle(color:Colors.white ,fontWeight: FontWeight.bold, fontSize: 20),),),
                    )
              ),
              const SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Dont have account ? ",style: TextStyle(fontSize:19),),
                  InkWell(
                    onTap: (){},
                    child: const Text('Create here',style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              showProgressBar == true ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
              ): Container(),
              
            ],
          ),
        ),
      ),
    );
  }
}
