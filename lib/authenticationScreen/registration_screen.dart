import 'package:dating_app/authenticationScreen/login_screen.dart';
import 'package:dating_app/controllers/authentication_controller.dart';
import 'package:dating_app/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../services/api_services.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // Personal Info

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController ageTextEditingController = TextEditingController();
  TextEditingController phoneNoTextEditingController = TextEditingController();
  TextEditingController cityTextEditingController = TextEditingController();
  TextEditingController countryTextEditingController = TextEditingController();
  TextEditingController profileHeadingTextEditingController =
      TextEditingController();
  TextEditingController lookingForInaPartnerTextEditingController =
      TextEditingController();

  // Appearance
  TextEditingController heightTextEditingController = TextEditingController();
  TextEditingController weightTextEditingController = TextEditingController();
  TextEditingController bodyTypeTextEditingController = TextEditingController();

  // Life style
  TextEditingController drinkTextEditingController = TextEditingController();
  TextEditingController smokeTextEditingController = TextEditingController();
  TextEditingController martialStatusTextEditingController =
      TextEditingController();
  TextEditingController haveChildrenTextEditingController =
      TextEditingController();
  TextEditingController noOfChildrenTextEditingController =
      TextEditingController();
  TextEditingController employmentStatusTextEditingController =
      TextEditingController();
  TextEditingController incomeTextEditingController = TextEditingController();
  TextEditingController livingSituationTextEditingController =
      TextEditingController();
  TextEditingController willingToRelocateTextEditingController =
      TextEditingController();
  TextEditingController relationshipYouAreLookingForTextEditingController =
      TextEditingController();

  // Background - Cultural Values
  TextEditingController nationalityTextEditingController =
      TextEditingController();
  TextEditingController educationTextEditingController =
      TextEditingController();
  TextEditingController languageSpokenTextEditingController =
      TextEditingController();
  TextEditingController religionTextEditingController = TextEditingController();
  TextEditingController ethnicityTextEditingController =
      TextEditingController();

  bool showProgressBar = false;
  var authenticationController = AuthenticationController.authController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text('Create Account',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'to get Started Now.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              // choose image
              GestureDetector(
                onTap: () {
                  authenticationController.pickImageFileFromGallery();
                },
                child: const CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('/logo.jpg'),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // Personal Information

              Container(
                child: const Text(
                  'Personal Information',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // Name
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: nameTextEditingController,
                  labelText: "Name",
                  iconData: Icons.people,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Email
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: emailTextEditingController,
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Password
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: passTextEditingController,
                  labelText: "Password",
                  iconData: Icons.password_outlined,
                  isObscure: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // age
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: ageTextEditingController,
                  labelText: "Age",
                  iconData: Icons.numbers,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // phone number
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: phoneNoTextEditingController,
                  labelText: "Phone",
                  iconData: Icons.phone_android_outlined,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // city
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: cityTextEditingController,
                  labelText: "City",
                  iconData: Icons.location_city,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Country
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: countryTextEditingController,
                  labelText: "County",
                  iconData: Icons.golf_course,
                  isObscure: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Profile Heading
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: profileHeadingTextEditingController,
                  labelText: "Profile Heading",
                  iconData: Icons.power_off_outlined,
                  isObscure: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //                                                              Appearance

              const Text(
                'Appearance',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: heightTextEditingController,
                  labelText: "Height",
                  iconData: Icons.height_outlined,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Country
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: weightTextEditingController,
                  labelText: "Weight",
                  iconData: Icons.line_weight_outlined,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Profile Heading
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: bodyTypeTextEditingController,
                  labelText: "Body Type",
                  iconData: Icons.boy_outlined,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //                                                              Life Style

              const Text(
                'Life Style',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),

              // Drink
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: drinkTextEditingController,
                  labelText: "Drink",
                  iconData: Icons.local_drink,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Smoke
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: smokeTextEditingController,
                  labelText: "Smoke",
                  iconData: Icons.smoking_rooms,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Marital Status
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: martialStatusTextEditingController,
                  labelText: "Marital Status",
                  iconData: Icons.favorite,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Have Children
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: haveChildrenTextEditingController,
                  labelText: "Have Children",
                  iconData: Icons.child_care,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Number of Children
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: noOfChildrenTextEditingController,
                  labelText: "Number of Children",
                  iconData: Icons.group,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Employment Status
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: employmentStatusTextEditingController,
                  labelText: "Employment Status",
                  iconData: Icons.work,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Income
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: incomeTextEditingController,
                  labelText: "Income",
                  iconData: Icons.attach_money,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Living Situation
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: livingSituationTextEditingController,
                  labelText: "Living Situation",
                  iconData: Icons.home,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Willing to Relocate
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: willingToRelocateTextEditingController,
                  labelText: "Willing to Relocate",
                  iconData: Icons.flight_takeoff,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Relationship You Are Looking For
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController:
                      relationshipYouAreLookingForTextEditingController,
                  labelText: "Relationship Looking For",
                  iconData: Icons.favorite_border,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //                                                background cultural values

              Container(
                child: const Text(
                  'background Cultural Values',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),

              // Nationality
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: nationalityTextEditingController,
                  labelText: "Nationality",
                  iconData: Icons.public,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Education
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: educationTextEditingController,
                  labelText: "Education",
                  iconData: Icons.school,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Language Spoken
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: languageSpokenTextEditingController,
                  labelText: "Language Spoken",
                  iconData: Icons.language,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Religion
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: religionTextEditingController,
                  labelText: "Religion",
                  iconData: Icons.account_balance,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Ethnicity
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width - 36,
                child: CustomTextFieldWidget(
                  editingController: ethnicityTextEditingController,
                  labelText: "Ethnicity",
                  iconData: Icons.people,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
                width: MediaQuery.sizeOf(context).width - 36,
                height: 55,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: InkWell(
                  onTap: () async {
                    String username = nameTextEditingController.toString();
                    String email = emailTextEditingController.toString();
                    String password = passTextEditingController.toString();

                    try {
                      Map<String, dynamic> response =
                          await ApiService.registerUser(
                              username, email, password);
                      print('Registration Response: $response');
                    } catch (e) {
                      print('Error: $e');
                    }

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()),);
                  },
                  child: const Center(
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              showProgressBar == true
                  ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
