import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/widgets.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
    Map<String, String> formValues = {
      'Name': 'My Name',
      'LastName': 'My LastName',
      'Email': 'My Email',
      'Password': 'My Password',
      'Role': 'My Role',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms and Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    hintText: 'Name',
                    labelText: 'Name',
                    icon: Icons.group_outlined,
                    formProperty: 'Name',
                    formValues: formValues,
                    capitalization: TextCapitalization.words,
                    validator: (value) {
                      if (value == '') {
                        return 'This field is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormField(
                    hintText: 'Last Name',
                    labelText: 'Last Name',
                    icon: Icons.abc,
                    formProperty: 'LastName',
                    formValues: formValues,
                    capitalization: TextCapitalization.words,
                    validator: (value) {
                      if (value == '') {
                        return 'This field is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormField(
                    hintText: 'Email',
                    labelText: 'Email',
                    icon: Icons.email_rounded,
                    keyBoardType: TextInputType.emailAddress,
                    formProperty: 'Email',
                    formValues: formValues,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      final bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value);
                      if (!emailValid) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormField(
                    hintText: 'Password',
                    labelText: 'Password',
                    icon: Icons.email_rounded,
                    // keyBoardType: TextInputType.text,
                    obscureText: true, formProperty: 'Password',
                    formValues: formValues,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return value.length < 6
                          ? 'The password must be longer than 5'
                          : null;
                    },
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField(
                    value: 'Admin',
                    onChanged: (value) => formValues['Role'] = value ?? 'Admin',
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'Super Admin', child: Text('Super Admin')),
                      DropdownMenuItem(
                          value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(
                          value: 'Jr. Developer', child: Text('Jr. Developer')),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());

                        if (!myFormKey.currentState!.validate()) {
                          return;
                        }
                      },
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(
                              child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ))))
                ],
              ),
            )),
      ),
    );
  }
}
