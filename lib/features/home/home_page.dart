import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:zamjy_samgyup/features/home/item/item_page.dart';

import '../../core/resources/assets.dart';
import '../../core/resources/colors.dart' as colors;

import '../../data/model/category_model.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
      ),
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Ready to Order?",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      SizedBox(
                        height: 40.0,
                        child: TextFormField(
                          // controller: controller.searchController,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: colors.primaryColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: colors.primaryColor),
                            ),
                            prefixIcon: Image.asset(Assets.icSearch),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                    ]),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Select by Category",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: category.length,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var data = category[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(ItemPage(
                              category: data,
                            ));
                          },
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: colors.secondaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.25),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: const Offset(0, 4),
                                      )
                                    ]),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      data.image,
                                      height: 100,
                                      width: 100,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                data.title,
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: colors.primaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Popular Menu Items",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
