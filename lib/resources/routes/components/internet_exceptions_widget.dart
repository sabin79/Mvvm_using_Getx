import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/routes/colors/app_colros.dart';

class InternetExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const InternetExceptionWidget({super.key, required this.onPress});

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Icon(
            Icons.cloud_off,
            color: AppColors.redColor,
            size: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                'internet_exception'.tr,
                textAlign: TextAlign.center,
                style: const TextStyle(color: AppColors.redColor),
              ),
            ),
          ),
          SizedBox(
            height: Height * .15,
          ),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  'Retry',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: AppColors.whiteColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
