import 'package:flutter/material.dart';
import 'package:jobhub_ute/app/feature/payment/presentation/widgets/round_icon_button.dart';
import '../../../../../common/color_extension.dart';
import '../../../../../common/input/round_textfield.dart';
import '../../../../../gen/assets.gen.dart';

class AddCardView extends StatefulWidget {
  const AddCardView({super.key});

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  TextEditingController txtCardNumber = TextEditingController();
  TextEditingController txtCardMonth = TextEditingController();
  TextEditingController txtCardYear = TextEditingController();
  TextEditingController txtCardCode = TextEditingController();
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  bool isAnyTime = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      width: media.width,
      decoration: BoxDecoration(
          color: AppColorScheme.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Add Credit/Debit Card",
                style: TextStyle(
                    color: AppColorScheme.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: AppColorScheme.primaryText,
                  size: 25,
                ),
              )
            ],
          ),
          Divider(
            color: AppColorScheme.secondaryText.withOpacity(0.4),
            height: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextfield(
            hintText: "Card Number",
            controller: txtCardNumber,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Expiry",
                style: TextStyle(
                    color: AppColorScheme.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              SizedBox(
                width: 100,
                child: RoundTextfield(
                  hintText: "MM",
                  controller: txtCardMonth,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 25),
              SizedBox(
                width: 100,
                child: RoundTextfield(
                  hintText: "YYYY",
                  controller: txtCardYear,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextfield(
            hintText: "Card Security Code",
            controller: txtCardCode,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextfield(
            hintText: "First Name",
            controller: txtFirstName,
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextfield(
            hintText: "Last Name",
            controller: txtLastName,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            Text(
              "You can remove this card at anytime",
              style: TextStyle(
                  color: AppColorScheme.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Switch(
                value: isAnyTime,
                activeColor: AppColorScheme.kPrimary,
                onChanged: (newVal) {
                  setState(() {
                    isAnyTime = newVal;
                  });
                })
          ]),
          const SizedBox(
            height: 25,
          ),
          RoundIconButton(
              title: "Add Card",
              icon: Assets.images.add.path,
              color: AppColorScheme.kPrimary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              onPressed: () {}),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
