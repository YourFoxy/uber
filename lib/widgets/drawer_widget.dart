import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:uber/bloc/drawer_widget/drawer_widget_bloc.dart';
import 'package:uber/bloc/drawer_widget/drawer_widget_event.dart';
import 'package:uber/bloc/drawer_widget/drawer_widget_state.dart';
import 'package:uber/bloc/edit_user_information_page/edit_user_information_page_bloc.dart';
import 'package:uber/extension/bloc_widget_extension.dart';
import 'package:uber/pages/edit_user_information_page.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/app_text.dart';
import 'package:uber/widgets/icon_and_text_for_drawer_button.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  late final _bloc;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = BlocProvider.of<DrawerWidgetBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerWidgetBloc, DrawerWidgetState>(
      builder: (context, state) {
        return Drawer(
          backgroundColor: AppColors.plum2,
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: AppColors.plum),
                child: AppTextStyle(
                  text: '',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditUserInformationPage()
                          .createWithProvider<EditUserInformationPageBloc>(),
                    ),
                  );
                },
                child: const IconAndTextForDrawerButton(
                  iconData: Icons.edit,
                  text: 'Edit profile',
                ),
              ),
              const Divider(
                height: 10,
                thickness: 1,
                indent: 10,
                endIndent: 10,
                color: AppColors.orange,
              ),
              InkWell(
                hoverColor: AppColors.orange,
                onTap: () async {
                  _bloc.add(
                    ExitEvent(
                      context: context,
                    ),
                  );
                },
                child: const IconAndTextForDrawerButton(
                  iconData: Icons.exit_to_app,
                  text: 'Exit',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
