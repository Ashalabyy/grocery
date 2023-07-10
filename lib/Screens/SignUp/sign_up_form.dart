import 'package:flutter/material.dart';
import '../../constants/form_constants.dart';
import '../../widgets/custom_suffix_icon.dart';
import '../../constants/Dont_or_Have_acc.dart';
import '../SignIn/sign_in_screen.dart';

class SigupForm extends StatefulWidget {
  const SigupForm({super.key});
  @override
  State<SigupForm> createState() => _SigupFormState();
}

class _SigupFormState extends State<SigupForm> {
  final _globalKey = GlobalKey<FormState>();
  var isVisible = true;
  String? email;
  String? fullName;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalKey,
      child: Column(
        children: [
          buildFullName(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          buildEmail(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          buildPassword(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          buildConfirmPassword(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          DontorHaveAcc(
            text: 'already have account ?',
            text2: 'Sign in',
            onpress: () => Navigator.of(context)
                .pushReplacementNamed(SignInScreen.routeName),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          buildLoginButton(),
        ],
      ),
    );
  }

  TextFormField buildFullName() {
    return TextFormField(
      onChanged: (value) {
        fullName = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Full Name is required';
        }
        return null;
      },
      cursorColor: const Color(0xFF006400).withOpacity(0.8),
      decoration: defaultInputDecoration.copyWith(
        labelText: 'Enter your Name',
        hintText: 'Please Enter your Name',
        hintStyle: const TextStyle(
          color: Color(0xFF006400),
        ),
        labelStyle: TextStyle(
          fontSize: 14,
          color: const Color(0xFF006400).withOpacity(0.3),
        ),
        prefixIcon: const CustomSuffixIcon(svgicon: 'assets/icons/User.svg'),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      onChanged: (value) {
        email = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Email is required';
        }
        return null;
      },
      cursorColor: const Color(0xFF006400).withOpacity(0.8),
      decoration: defaultInputDecoration.copyWith(
        labelText: 'Enter your Email',
        hintText: 'Please Enter your Email',
        hintStyle: const TextStyle(
          color: Color(0xFF006400),
        ),
        labelStyle: TextStyle(
          fontSize: 14,
          color: const Color(0xFF006400).withOpacity(0.3),
        ),
        prefixIcon: const CustomSuffixIcon(svgicon: 'assets/icons/Mail.svg'),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      onChanged: (value) {
        password = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password is required';
        } else if (value.length < 6) {
          return 'Password should be at least 6 characters';
        }
        return null;
      },
      cursorColor: const Color(0xFF006400).withOpacity(0.8),
      obscureText: isVisible,
      decoration: defaultInputDecoration.copyWith(
        labelText: 'Enter your Password',
        hintText: 'Please Enter your Password',
        hintStyle: const TextStyle(
          color: Color(0xFF006400),
        ),
        labelStyle: TextStyle(
          fontSize: 14,
          color: const Color(0xFF006400).withOpacity(0.3),
        ),
        prefixIcon: const CustomSuffixIcon(svgicon: 'assets/icons/Lock.svg'),
      ),
    );
  }

  TextFormField buildConfirmPassword() {
    return TextFormField(
      onChanged: (value) {
        password = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password is required';
        } else if (value.length < 6) {
          return 'Password does not match';
        }
        return null;
      },
      cursorColor: const Color(0xFF006400).withOpacity(0.8),
      obscureText: isVisible,
      decoration: defaultInputDecoration.copyWith(
        labelText: 'Confirm your Password',
        hintText: 'Confirm your Password',
        hintStyle: const TextStyle(
          color: Color(0xFF006400),
        ),
        labelStyle: TextStyle(
          fontSize: 14,
          color: const Color(0xFF006400).withOpacity(0.3),
        ),
        prefixIcon: const CustomSuffixIcon(svgicon: 'assets/icons/Lock.svg'),
      ),
    );
  }

  Widget buildLoginButton() {
    return ElevatedButton(
      onPressed: _submitForm,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF006400).withOpacity(0.8),
        minimumSize: Size(MediaQuery.of(context).size.width, 40),
        elevation: 0,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      child: const Text("SignUp"),
    );
  }

  void _submitForm() async {
    if (_globalKey.currentState!.validate()) {
      _globalKey.currentState!.save();
    }
  }
}
