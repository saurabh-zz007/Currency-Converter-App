import 'package:flutter/material.dart';

class CurrencyConverterPage
    extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  State<CurrencyConverterPage> createState() =>
      _CurrencyConverterPageState();
}

class _CurrencyConverterPageState
    extends State<CurrencyConverterPage> {
  final TextEditingController controller =
      TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    final boarder = OutlineInputBorder(
      borderSide: BorderSide(
        color: const Color.fromARGB(
          178,
          255,
          255,
          255,
        ),
        width: 1.2,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      gapPadding: 2.0,
    );
    final focusedBoarder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2.0,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      gapPadding: 2.0,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "CURRENCY CONVERTER",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            //Text
            Text(
              '$result INR',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(
                  255,
                  255,
                  255,
                  255,
                ),
              ),
            ),
            //TextField(for input)
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: TextField(
                controller: controller,
                keyboardType:
                    TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                decoration: InputDecoration(
                  focusColor: Colors.white30,
                  filled: true,
                  fillColor: Colors.white10,
                  enabledBorder: boarder,
                  focusedBorder: focusedBoarder,
                  prefixIcon: Icon(
                    Icons.monetization_on,
                    color: Colors.white,
                  ),

                  hintText:
                      'Enter the amount in USD',
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(
                      141,
                      255,
                      255,
                      255,
                    ),
                  ),
                ),

                style: TextStyle(
                  color: Colors.white,
                ),
                cursorColor: Color.fromRGBO(
                  246,
                  246,
                  246,
                  1,
                ),
              ),
            ),

            //Button
            // Type of button in Material design
            // 1. Raised Button
            // 2. Text Button
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (controller
                        .text
                        .isNotEmpty) {
                      result =
                          double.parse(
                            controller.text,
                          ) *
                          88.18;
                    } else {
                      result = 0;
                    }
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(
                        214,
                        255,
                        255,
                        255,
                      ),
                  minimumSize: Size(
                    double.infinity,
                    50,
                  ),
                  elevation: 5,
                  shadowColor: Color.fromRGBO(
                    255,
                    255,
                    255,
                    0.5,
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadiusGeometry.circular(
                          15,
                        ),
                  ),
                ),
                child: Text(
                  'CONVERT',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
