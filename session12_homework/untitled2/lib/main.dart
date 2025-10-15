import 'package:flutter/material.dart';
import 'package:untitled2/custom_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double rewidth = MediaQuery.sizeOf(context).width;
    double reheight = MediaQuery.sizeOf(context).height;
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            spacing: 20,
            children: [
              CustomBox(
                width: rewidth,
                height: reheight * 0.2,
                color: Color(0xffE4F3FE),
              ),
              Row(
                spacing: 10,
                children: [
                  CustomBox(
                    flexNumber: 1,
                    height: reheight * 0.032,
                    color: Color(0xffE0E0E0),
                  ),
                  CustomBox(
                    flexNumber: 11,
                    height: reheight * 0.025,
                    color: Color(0xffE0E0E0),
                  ),
                ],
              ),
              Divider(thickness: 1.5),
              SizedBox(
                height: reheight * 0.13,
                child: Row(
                  spacing: 30,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          CustomBox(color: Color(0xffA5D6A7),flexNumber: 6),
                          CustomBox(color: Color(0xffE8F5EB),flexNumber: 1),
                          CustomBox(color: Color(0xffA5D6A7),flexNumber: 6),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          CustomBox(color: Color(0xffFFCC80),flexNumber: 6,),
                          CustomBox(color: Color(0xffFFF3DD), flexNumber: 1,),
                          CustomBox(color: Color(0xffFFCC80), flexNumber: 6,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: reheight * 0.13,
                child: Row(
                  children: [
                    CustomBox(color: Color(0xffE1BEE8),flexNumber: 6),
                    CustomBox(color: Color(0xffF6E3F9),flexNumber: 1),
                    Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          CustomBox(color: Color(0xffCF93D9),flexNumber: 6),
                          CustomBox(color: Color(0xffE1BEE8),flexNumber: 1),
                          CustomBox(color: Color(0xffCF93D9),flexNumber: 6),
                        ],
                      ),
                    ),
                    CustomBox(color: Color(0xffF6E3F9), flexNumber: 1,),
                    CustomBox(color: Color(0xffE1BEE8),flexNumber: 6,),
                    CustomBox(color: Color(0xffF6E3F9),flexNumber: 6,),
                  ],
                ),
              ),
              SizedBox(
                height: reheight * 0.065,
                child: Row(
                  spacing: 10,
                  children: [
                    CustomBox(color: Color(0xffB2DFDC) , flexNumber: 5,),
                    CustomBox(color: Color(0xff80CBC4), flexNumber: 5,),
                  ],
                ),
              ),
              SizedBox(
                height: reheight*0.05,
                child: Row(
                  children: [
                    CustomBox(color: Color(0xffE0E0E0) , flexNumber: 1,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}