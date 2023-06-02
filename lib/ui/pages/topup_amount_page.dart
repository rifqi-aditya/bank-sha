import 'package:bank_sha/routes/router.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class TopUpAmountPage extends StatefulWidget {
  const TopUpAmountPage({super.key});

  @override
  State<TopUpAmountPage> createState() => _TopUpAmountPageState();
}

class _TopUpAmountPageState extends State<TopUpAmountPage> {
  final TextEditingController amountC = TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();

    amountC.addListener(() {
      final text = amountC.text;
      amountC.value = amountC.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(
          int.parse(text.toString() == ''
              ? '0'
              : text.toString().replaceAll('.', '')),
        ),
      );
    });
  }

  addAmount(String number) {
    if (amountC.text == '0') {
      amountC.text = '';
    }

    setState(() {
      amountC.text = amountC.text + number;
    });
  }

  deleteAmount() {
    if (amountC.text == '') {
      amountC.text = '0';
    }

    if (amountC.text.isNotEmpty) {
      setState(() {
        amountC.text = amountC.text.substring(0, amountC.text.length - 1);
        if (amountC.text == '') {
          amountC.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        children: [
          const SizedBox(height: 60),
          Center(
            child: Text(
              "Total Amount",
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(height: 67),
          Align(
            child: SizedBox(
              width: 250,
              child: TextFormField(
                enabled: false,
                controller: amountC,
                cursorColor: greyColor,
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                ),
                decoration: InputDecoration(
                  prefixIcon: Text(
                    'Rp',
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: greyColor),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 66),
          Align(
            child: Wrap(
              spacing: 40,
              runSpacing: 40,
              children: [
                CustomInputButton(
                  title: '1',
                  onTap: () {
                    addAmount("1");
                  },
                ),
                CustomInputButton(
                  title: '2',
                  onTap: () {
                    addAmount("2");
                  },
                ),
                CustomInputButton(
                  title: '3',
                  onTap: () {
                    addAmount("3");
                  },
                ),
                CustomInputButton(
                  title: '4',
                  onTap: () {
                    addAmount("4");
                  },
                ),
                CustomInputButton(
                  title: '5',
                  onTap: () {
                    addAmount("5");
                  },
                ),
                CustomInputButton(
                  title: '6',
                  onTap: () {
                    addAmount("6");
                  },
                ),
                CustomInputButton(
                  title: '7',
                  onTap: () {
                    addAmount("7");
                  },
                ),
                CustomInputButton(
                  title: '8',
                  onTap: () {
                    addAmount("8");
                  },
                ),
                CustomInputButton(
                  title: '9',
                  onTap: () {
                    addAmount("9");
                  },
                ),
                const SizedBox(
                  width: 60,
                  height: 60,
                ),
                CustomInputButton(
                  title: '0',
                  onTap: () {
                    addAmount("0");
                  },
                ),
                GestureDetector(
                  onTap: () {
                    deleteAmount();
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: numberBackgroundColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          CustomFilledButton(
            title: "Checkout Now",
            onPressed: () async {
              final bool? result =
                  await context.pushNamed<bool>(Routes.pinPage);
              if (result == true) {
                launchUrl(Uri.parse('https://demo.midtrans.com/'));
                context.pushReplacementNamed(Routes.topUpSuccessPage);
              }
            },
          ),
          const SizedBox(height: 25),
          CustomTextButton(
            title: "Terms & Conditions",
            onPressed: () {},
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
