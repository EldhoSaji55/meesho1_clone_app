import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:country_picker/country_picker.dart';

class Ordernowscreen extends StatelessWidget {
  const Ordernowscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: ColorConstants.mainGrey,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Sign up to check your order details",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: TextButton(
                      child: Text("Country"),
                      onPressed: () => showCountryPicker(
                        context: context,
                        showPhoneCode: true,
                        countryListTheme: CountryListThemeData(
                          flagSize: 25,
                          backgroundColor: Colors.white,
                          textStyle:
                              TextStyle(fontSize: 16, color: Colors.blueGrey),
                          bottomSheetHeight:
                              500, // Optional. Country list modal height
                          //Optional. Sets the border radius for the bottomsheet.
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          //Optional. Styles the search field.
                          inputDecoration: InputDecoration(
                            labelText: 'Search',
                            hintText: 'Start typing to search',
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8C98A8).withOpacity(0.2),
                              ),
                            ),
                          ),
                        ),
                        onSelect: (Country country) =>
                            print('Select country: ${country.displayName}'),
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    flex: 3,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabled: true,
                          isCollapsed: false,
                          labelText: "Phone Number",
                          focusColor: ColorConstants.primaryColor,
                          fillColor: ColorConstants.primaryColor),
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 45,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: ColorConstants.secondaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.mainWhite),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "By Continuing, you agree to Meesho's ",
                        style: TextStyle(
                            color: ColorConstants.mainGrey, fontSize: 13)),
                    TextSpan(
                        text: "Term's and Conditions",
                        style: TextStyle(
                            color: ColorConstants.primaryColor, fontSize: 13)),
                    TextSpan(
                        text: " and ",
                        style: TextStyle(
                            color: ColorConstants.mainGrey, fontSize: 13)),
                    TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                            color: ColorConstants.primaryColor, fontSize: 13))
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
