import 'package:bot_toast/bot_toast.dart';

void showToast(String text) {
  BotToast.showText(text: text);
}

void cancelLoading() {
  BotToast.closeAllLoading();
}

void showLoading() {
  BotToast.showLoading();
}
