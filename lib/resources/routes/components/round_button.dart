import 'package:flutter/material.dart';
import 'package:getx_mvvm/resources/routes/colors/app_colros.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    this.buttonColor = AppColors.primaryButtonColor,
    this.textColor = AppColors.primaryTextColor,
    required this.title,
    required this.onPress,
    this.width = 150,
    this.height = 50,
    this.loading = false,
  });
  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: loading
              ? const CircularProgressIndicator(
                  color: AppColors.primaryTextColor,
                )
              : Center(
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                )),
    );
  }
}
