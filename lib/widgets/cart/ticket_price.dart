import 'package:flutter/material.dart';
import '../../constants/app_theme.dart';

class TicketPrice extends StatelessWidget {
  const TicketPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: deviceSize.width,
        height: deviceSize.height * 0.42,
        color: Colors.white.withOpacity(0.1),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: deviceSize.width,
                height: deviceSize.height * 0.18,
                decoration: const BoxDecoration().defaultBoxdecoration,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Subtotal:',
                            style: TextStyle(
                              color: Colors.grey,
                              height: 1,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '350',
                            style: TextStyle(
                              color: Colors.grey,
                              height: 1,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Delivery fee:',
                            style: TextStyle(
                              color: Colors.grey,
                              height: 1,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '\$10',
                            style: TextStyle(
                              color: Colors.grey,
                              height: 1,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Discount:',
                            style: TextStyle(
                              color: Colors.grey,
                              height: 1,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '10%',
                            style: TextStyle(
                              color: Colors.grey,
                              height: 1,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Total',
                            style: TextStyle(
                              color: Colors.pink,
                              height: 1,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '375\$',
                            style: TextStyle(
                              letterSpacing: 0.2,
                              color: Colors.pink,
                              height: 1,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/pay2.png',
                    width: 60,
                    height: 60,
                  ),
                  Image.asset(
                    'assets/images/pay31.png',
                    width: 60,
                    height: 60,
                  ),
                  Image.asset(
                    'assets/images/pay1.png',
                    width: 60,
                    height: 60,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
