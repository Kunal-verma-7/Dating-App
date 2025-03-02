import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextEditingController editingController;
  final IconData? iconData;
  final String ? assetRef;
  final String ? labelText;
  final bool? isObscure;

  const CustomTextFieldWidget({

    super.key,
    required this.editingController,
    this.iconData,
    this.assetRef,
    this.labelText,
    this.isObscure,

    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: editingController,
      obscureText: isObscure ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon:iconData !=null ? Icon(iconData) : Padding(padding: EdgeInsets.all(8),
        child: Image.asset(assetRef.toString()),
        ),
        labelStyle: const TextStyle(
          fontSize: 18,
        ),
        enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey), borderRadius: BorderRadius.circular(6),),
        focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey), borderRadius: BorderRadius.circular(6),),

      ),
    );
  }
}