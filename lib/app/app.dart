import 'package:sky_stacked/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:sky_stacked/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:sky_stacked/ui/views/home/home_view.dart';
import 'package:sky_stacked/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:sky_stacked/ui/views/user/user_view.dart';
import 'package:sky_stacked/ui/dialogs/delete_alert/delete_alert_dialog.dart';
import 'package:sky_stacked/services/users_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: UserView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: UsersService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: DeleteAlertDialog),
// @stacked-dialog
  ],
)
class App {}
