
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shopping_flutter/app/base/base_controller.dart';
import 'package:shopping_flutter/app/extentions/extentions.dart';

import '../network/exception_handler.dart';
import '../resources/app_colors.dart';
import '../resources/app_spacing.dart';

abstract class BaseView<Controller extends BaseController>
    extends GetView<Controller> {
  BaseView({final Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  PreferredSizeWidget? appBar(final BuildContext context) => null;

  // You can Override it

  bool safeArea() => true;

  // You can Override it
  bool resizeToAvoidBottomInset() => true;

  bool canPop(final BuildContext context) {
    return true;
  }

  Widget body(final BuildContext context);

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Obx(
        () => controller.pageState.when(
          idle: () => annotatedRegion(context),
          loading: () => _showLoading(),
          data: (final data) => annotatedRegion(context),
          lostConnection: (widget) => noInternet(),
          error: (ExceptionHandler error) {
            return "Error in Load Data".toWidget();
          },
        ),
      ),
    );
  }

  Widget noInternetWidget() => const Placeholder();

  Widget noInternet() {
    return Scaffold(
        backgroundColor: pageBackgroundColor(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            noInternetWidget(),
            const SizedBox(height: 16),
            const Text(
              "Oops! No Internet Connection",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ));
  }

  Widget annotatedRegion(final BuildContext context) => AnnotatedRegion(
        value: SystemUiOverlayStyle(
          //Status bar color for android
          statusBarColor: statusBarColor(),
          statusBarIconBrightness: Brightness.light,
        ),
        child: pageContent(context),
      );

  Widget pageScaffold(final BuildContext context) => PopScope(
        canPop: false,
        child: Scaffold(
          //sets ios status bar color
          backgroundColor: pageBackgroundColor(),
          appBar: appBar(context),
          floatingActionButton: floatingActionButton(),
          floatingActionButtonLocation: floatingActionButtonLocation(),
          body: body(context),
          bottomNavigationBar: bottomNavigationBar(context),
          drawer: drawer(),
          resizeToAvoidBottomInset: resizeToAvoidBottomInset(),
        ),
      );

  Widget pageContent(final BuildContext context) => safeArea()
      ? SafeArea(
          child: pageScaffold(context),
        )
      : pageScaffold(context);

  Widget showErrorSnackBar(final String message) {
    var snackBar = SnackBar(content: Text(message));
    WidgetsBinding.instance.addPostFrameCallback((final timeStamp) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
    });

    return Container(
      color: AppColors.background,
    );
  }

  Color pageBackgroundColor() => AppColors.background;

  Color statusBarColor() => AppColors.transparent;

  Widget? floatingActionButton() => null;

  Widget? bottomNavigationBar(final BuildContext context) => null;

  Widget? drawer() => null;

  Widget _showLoading() => Center(
        child: Container(
          color: Colors.transparent,
          margin: AppSpacing.s30All,
          child: CupertinoActivityIndicator(
            radius: 30.toReactive(),
          ),
        ),
      );

  FloatingActionButtonLocation? floatingActionButtonLocation() =>
      FloatingActionButtonLocation.endFloat;
}
