import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:seb7a/core/logic/helper_method.dart';
import 'package:seb7a/view/pages/quran/screens/view.dart';

import '../../../../core/constants.dart';
import '../components/loading_widget.dart';
import '../components/rounded_numbers.dart';

import '../controllers/search_controller.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = Get.put(SearchControllerr());

  Widget itemBuilder(context, index) {
    final verse = _controller.foundedVerses[index];
    return Card(
      child: ListTile(
        subtitle: SelectableText(
          verse.text,
          style: kTextStyle,
        ),
        title: SelectableText(
          verse.surah,
          style: kTextStyle,
        ),
        leading: IconCircularNum(
          number: verse.num,
        ),
        enabled: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "ابحث عن الكلمة فى القرآن",
          style: TextStyle(
            color: Colors.brown,
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Container(
          height: 32.h,
          width: 32.w,
          padding: EdgeInsets.only(right: 5.w),
          margin: EdgeInsets.all(8.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.r),
            color: Theme.of(context).primaryColor.withOpacity(.13),
          ),
          child: IconButton(
            onPressed: () {
              navigateTo(const QuranView());
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: const Color(0xff86A789),
          ),
        ),
      ),
      body: Obx(
        () => SafeArea(
          child: _controller.isBusy
              ? const LoadingWidget()
              : Padding(
                  padding: EdgeInsets.all(20.r),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        onChanged: (value) {
                          _controller.searchByWord(value);
                        },
                        decoration: const InputDecoration(
                          hintText: 'كلمة البحث',
                          suffixIcon: Icon(
                            Icons.search,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Card(
                        child: ListTile(
                          title: Text(
                            'تكررت ${_controller.repeatCount}',
                            textAlign: TextAlign.center,
                            style: kTextStyle,
                          ),
                          enabled: true,
                        ),
                      ),
                      Expanded(
                        child: Obx(
                          () => Scrollbar(
                            child: ListView.builder(
                              itemCount: _controller.foundedVerses.length,
                              itemBuilder: itemBuilder,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
