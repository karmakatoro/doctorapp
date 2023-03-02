import 'package:flutter/material.dart';
import 'package:doctorapp/utils/config.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({Key? key, required this.social}) : super(key: key);

  final String social;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: SizedBox(
          //width: Config.widthSize = 0.4,

          ),
    );
  }
}
