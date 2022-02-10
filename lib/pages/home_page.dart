import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/drawer_widget/drawer_widget_bloc.dart';
import 'package:uber/bloc/home_page/home_page_bloc.dart';
import 'package:uber/bloc/home_page/home_page_event.dart';
import 'package:uber/bloc/home_page/home_page_state.dart';
import 'package:uber/bloc/view_avatar/view_avatar_bloc.dart';
import 'package:uber/extension/bloc_widget_extension.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/avatar_widget_for_view.dart';
import 'package:uber/widgets/drawer_widget.dart';
import 'package:uber/widgets/place_for_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String pickImageUrl = '';
  late final _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = BlocProvider.of<HomePageBloc>(context);
    _bloc.add(LoadedUserInformationEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.plum,
          drawer: DrawerMenu().createWithProvider<DrawerWidgetBloc>(),
          appBar: AppBar(
            backgroundColor: AppColors.plum,
            iconTheme: const IconThemeData(color: AppColors.orange),
            title: const AppLargeText(
              text: '',
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColors.dark,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 120,
                              margin: const EdgeInsets.only(
                                left: 15,
                                bottom: 40,
                              ),
                              child: (state is LoadedUserInformationState)
                                  ? AppLargeText(
                                      color: AppColors.orange,
                                      text: state.nicknameAndCity,
                                    )
                                  : const AppLargeText(
                                      color: AppColors.orange,
                                      text: 'sf',
                                    ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 15,
                                bottom: 40,
                              ),
                              child: AppLargeText(
                                text: (state is LoadedUserInformationState)
                                    ? state.currentUserPhoneNumber
                                    : '', //
                                color: AppColors.orange,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        const AvatarWidgetForView()
                            .createWithProvider<ViewAvatarBloc>(),
                      ],
                    ),
                  ),
                  const PlaceForCardWidget(
                    text: 'Save',
                  ),
                  const PlaceForCardWidget(
                    text: 'My',
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.dark,
            onPressed: () {},
            child: const Icon(
              Icons.edit,
              color: AppColors.orange,
            ),
          ),
        );
      },
    );
  }
}
