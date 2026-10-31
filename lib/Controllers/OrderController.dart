import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Colors.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Models/TrackingEventModel.dart';
import 'package:snapshop/Pages/OrderPage/Widgets/SelectAddress.dart';
import 'package:snapshop/Pages/OrderPage/Widgets/ConfirmOrder.dart';
import 'package:snapshop/Pages/OrderPage/Widgets/SelectPaymentMethods.dart';

class OrderController extends GetxController {
  @override
  onInit() {
    super.onInit();
    fetchTracking("3215869475");
  }

  RxList shipmentTrackingList = [].obs;

  Future fetchTracking(String awb) async {
    await Future.delayed(const Duration(seconds: 1));

    final events = [
      TrackingEvent(
        time: DateTime(2026, 10, 28, 15, 17),
        status: 'Delivered',
        location: 'Dibrugarh',
      ),
      TrackingEvent(
        time: DateTime(2026, 10, 28, 15, 17),
        status: 'Out for delivery',
        location: 'Dibrugarh',
      ),
      TrackingEvent(
        time: DateTime(2026, 10, 28, 15, 17),
        status: 'Package has arrived at an SnapShop faciality',
        location: 'Dibrugarh',
      ),
      TrackingEvent(
        time: DateTime(2026, 10, 28, 10, 12),
        status: 'Package has arrived at an SnapShop faciality',
        location: 'Kamrup',
      ),
      TrackingEvent(
        time: DateTime(2026, 10, 28, 10, 12),
        status: 'Package has arrived at an SnapShop faciality',
        location: 'Guwahati',
      ),
      TrackingEvent(
        time: DateTime(2026, 10, 28, 10, 12),
        status: 'Package has arrived at an SnapShop faciality',
        location: 'West Bengal',
      ),
      TrackingEvent(
        time: DateTime(2026, 10, 28, 10, 12),
        status: 'Shipped',
        location: "Shipped from seller's location",
      ),
      TrackingEvent(
        time: DateTime(2026, 10, 28, 10, 12),
        status: 'Prepairing for shipment',
        location: "In seller's location ",
      ),
    ];

    events.sort((a, b) => b.time.compareTo(a.time));
    shipmentTrackingList.value = events;
  }

  RxList orderProgressSteps = [1, 2, 3].obs;
  RxInt progressStepIndex = 0.obs;
  RxList checkedSteps = [].obs;

  //YOUR ORDERS PAGE
  RxList yourOrdersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].obs;

  //Order Details Page
  RxList recommendedProductList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].obs;
  RxList returnResonsList = [
    "Missing parts or accessories",
    "Wrong item was sent",
    "Item defective or doesn't work",
    "Item damaged but shipping box ok",
    "Both item and shipping box damaged",
    "Other",
  ].obs;
  RxInt returnResonIndex = 0.obs;
  bool selectedReturnReson(int index) {
    return returnResonIndex.value == index;
  }

  RxList downloadOrderDocumentList = [
    "Invoice",
    "Warrenty Documnet",
    "Pslip",
  ].obs;
  RxInt downloadOrderDocumentIndex = 0.obs;
  bool selectedDownloadOrderDocument(int index) {
    return downloadOrderDocumentIndex.value == index;
  }

  RxInt selectedAddressIndex = 0.obs;

  RxList paymentMethodsList = [1, 2].obs;

  bool isActive(int index) => progressStepIndex.value == index;
  bool isDone(int index) => checkedSteps.contains(index);

  void completeStep() {
    final current = progressStepIndex.value;
    if (!checkedSteps.contains(current)) {
      checkedSteps.add(current);
    }
    if (current < orderProgressSteps.length - 1) {
      progressStepIndex.value++;
    }
  }

  bool isSelectedAddress(int index) {
    return selectedAddressIndex.value == index;
  }

  Widget orderProgressPages() {
    switch (progressStepIndex.value) {
      case 0:
        return SelectAddress();
      case 1:
        return SelectPaymentMethods();
      default:
        return ConfirmOrder();
    }
  }

  List<Widget> get paymentMethodList => [
    YourPaymentMethod_1(),
    YourPaymentMethod_2(),
    PayByUPIApps(),
    PayByCard(),
    CashOnDelivery(),
  ];

  RxInt paymentMethodIndex = 0.obs;

  bool isPaymentMethodSelected(int index) {
    return paymentMethodIndex.value == index;
  }

  //YOUR PAYMENT METHOD 1111111111
  Widget YourPaymentMethod_1() {
    return Obx(
      () => Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: extraLightGrey,
          borderRadius: BorderRadius.circular(13),
        ),
        constraints: BoxConstraints(minHeight: 80),

        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 10,
            right: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      paymentMethodIndex.value = 0;
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: isPaymentMethodSelected(0)
                            ? primaryDeepGreen
                            : bgGrey,
                        border: BoxBorder.all(color: midBlack),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),

                  SizedBox(width: 40),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "HDFC Credit Card",
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(height: 2),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(2),
                            child: Image.asset(AssetsImage.visa, width: 30),
                          ),
                          SizedBox(width: 2),
                          Text(
                            "***0808",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: black,
                              fontFamily: "Outfit",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 2),
                          Text(
                            "| Abhi Sharma",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: black,
                              fontFamily: "Outfit",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: Image.asset(AssetsImage.hdfc, width: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget YourPaymentMethod_2() {
    return Obx(
      () => Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: extraLightGrey,
          borderRadius: BorderRadius.circular(13),
        ),
        constraints: BoxConstraints(minHeight: 80),

        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 10,
            right: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      paymentMethodIndex.value = 1;
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: isPaymentMethodSelected(1)
                            ? primaryDeepGreen
                            : bgGrey,
                        border: BoxBorder.all(color: midBlack),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),

                  SizedBox(width: 40),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Google Pay",
                        style: TextStyle(
                          color: black,
                          fontFamily: "Outfit",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(height: 2),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              AssetsImage.googlepay,
                              width: 26,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "anhi01@okaxis",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: black,
                              fontFamily: "Outfit",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 2),
                          Text(
                            "| Abhi Sharma",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: black,
                              fontFamily: "Outfit",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: Image.asset(AssetsImage.googlepay, width: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //YOUR PAYMENT METHOD 22222222222
  Widget PayByUPIApps() {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "UPI",
            style: TextStyle(
              color: black,
              fontFamily: "Outfit",
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: extraLightGrey,
              borderRadius: BorderRadius.circular(13),
            ),
            constraints: BoxConstraints(minHeight: 80),

            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 10,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          paymentMethodIndex.value = 2;
                        },
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: isPaymentMethodSelected(2)
                                ? primaryDeepGreen
                                : bgGrey,
                            border: BoxBorder.all(color: midBlack),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),

                      SizedBox(width: 40),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pay by any UPI apps",
                            style: TextStyle(
                              color: black,
                              fontFamily: "Outfit",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          SizedBox(height: 3),
                          Row(
                            spacing: 5,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(2),
                                child: Image.asset(
                                  AssetsImage.phonepay,
                                  width: 25,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(2),
                                child: Image.asset(
                                  AssetsImage.googlepay,
                                  width: 25,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(2),
                                child: Image.asset(
                                  AssetsImage.paytm,
                                  width: 25,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(2),
                                child: Image.asset(
                                  AssetsImage.payzaap,
                                  width: 25,
                                ),
                              ),
                              Text(
                                "| more",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: black,
                                  fontFamily: "Outfit",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.asset(AssetsImage.hdfc, width: 30),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // PAY BY CARD
  Widget PayByCard() {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cards",
            style: TextStyle(
              color: black,
              fontFamily: "Outfit",
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: extraLightGrey,
              borderRadius: BorderRadius.circular(13),
            ),
            constraints: BoxConstraints(minHeight: 80),

            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 10,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          paymentMethodIndex.value = 3;
                        },
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: isPaymentMethodSelected(3)
                                ? primaryDeepGreen
                                : bgGrey,
                            border: BoxBorder.all(color: midBlack),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),

                      SizedBox(width: 40),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pay by card",
                            style: TextStyle(
                              color: black,
                              fontFamily: "Outfit",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          SizedBox(height: 3),
                          Row(
                            spacing: 5,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(2),
                                child: Image.asset(
                                  AssetsImage.masterCard,
                                  width: 30,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(2),
                                child: Image.asset(
                                  AssetsImage.rupay,
                                  width: 30,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(2),
                                child: Image.asset(AssetsImage.visa, width: 30),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(2),
                                child: Image.asset(
                                  AssetsImage.americanexpress,
                                  width: 30,
                                ),
                              ),
                              Text(
                                "| more",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: black,
                                  fontFamily: "Outfit",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // CASH ON DELIVERY
  Widget CashOnDelivery() {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cash on delivery",
            style: TextStyle(
              color: black,
              fontFamily: "Outfit",
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: extraLightGrey,
              borderRadius: BorderRadius.circular(13),
            ),
            constraints: BoxConstraints(minHeight: 80),

            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 10,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          paymentMethodIndex.value = 4;
                        },
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: isPaymentMethodSelected(4)
                                ? primaryDeepGreen
                                : bgGrey,
                            border: BoxBorder.all(color: midBlack),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),

                      SizedBox(width: 40),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cash on delivery",
                            style: TextStyle(
                              color: black,
                              fontFamily: "Outfit",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Cash and UPI accepted.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: black,
                              fontFamily: "Outfit",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 250,
                            child: Text(
                              "A convenience fee of 14/- will apply.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: midBlack,
                                fontFamily: "Outfit",
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Icon(
                      Icons.local_shipping_outlined,
                      size: 28,
                      color: primaryDeepGreen,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
