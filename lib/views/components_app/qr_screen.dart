import 'package:accum_points_app/views/components_app/background_page.dart';
import 'package:accum_points_app/views/components_app/background_product.dart';
import 'package:accum_points_app/views/components_app/title_detail.dart';
import 'package:accum_points_app/views/dependents_app/constants.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QRScreen extends StatefulWidget {
  const QRScreen({Key? key}) : super(key: key);

  @override
  State<QRScreen> createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  TextEditingController textController = TextEditingController();
  String qrCode = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          SingleChildScrollView(
            child: Column(
              children: [
                TitleDetail(
                  title: 'QR Code',
                  widget: Container(),
                ),
                SizedBox(height: 12.h),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18.w),
                      child: Container(
                        decoration: BoxDecoration(
                            color: kBackgroundColors,
                            borderRadius: BorderRadius.circular(29.5.w)),
                        child: TextFormField(
                          controller: textController,
                          decoration: InputDecoration(
                            hintText: 'Name',
                            contentPadding: EdgeInsets.only(
                                left: 20.w, top: 18.h, bottom: 18.h),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          onChanged: (val) {
                            setState(() {
                              qrCode = val;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      right: 38.w,
                      top: 18.h,
                      bottom: 18.h,
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 1.h,
                          bottom: 1.h,
                          left: 9.w,
                          right: 3.w,
                        ),
                        decoration: BoxDecoration(
                          color: kBackgroundColors,
                          borderRadius: BorderRadius.circular(12.w),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 4),
                              blurRadius: 4.0,
                              color: kTextTitleBigColors.withOpacity(0.1),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '1000',
                              style: TextStyle(
                                color: Color(0xffC19700),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Image.asset(
                              'assets/icons/user_point.png',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.w),
                    bottomRight: Radius.circular(20.w),
                  ),
                  child: BackGroundProduct(
                    child: Padding(
                      padding: EdgeInsets.only(top: 48.h, bottom: 38.h),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 57.h,
                            // width: 269.w,
                            child: BarcodeWidget(
                              data: qrCode,
                              barcode: Barcode.ean13(),
                            ),
                          ),
                          SizedBox(height: 37.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18.w, vertical: 18.h),
                            width: 286.w,
                            height: 289.h,
                            child: BarcodeWidget(
                              data: qrCode,
                              barcode: Barcode.qrCode(
                                errorCorrectLevel:
                                    BarcodeQRCorrectionLevel.high,
                              ),
                            ),
                          ),
                          SizedBox(height: 27.h),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 48.w),
                            child: Text(
                              'Vui lòng đưa nhân viên thu ngân quét mã để tích điểm',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff111111)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
