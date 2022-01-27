import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:uber/bloc/drawer_widget/drawer_widget_bloc.dart';
import 'package:uber/bloc/drawer_widget/drawer_widget_event.dart';
import 'package:uber/bloc/drawer_widget/drawer_widget_state.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/app_text.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  late final _bloc;

  @override
  void didChangeDependencies() {
    _bloc = BlocProvider.of<DrawerWidgetBloc>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance.get<DrawerWidgetBloc>(),
      child: BlocBuilder<DrawerWidgetBloc, DrawerWidgetState>(
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
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: const [
                        Icon(Icons.ac_unit),
                      ],
                    ),
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
                    _bloc(context).add(
                      ExitEvent(
                        context: context,
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.exit_to_app,
                          color: AppColors.orange,
                          size: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: AppLargeText(
                            text: 'Exit',
                            size: 25,
                            color: AppColors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
