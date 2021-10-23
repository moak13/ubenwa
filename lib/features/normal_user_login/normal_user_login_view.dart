import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'view_model/normal_user_login_viewmodel.dart';

class NormalUserLoginView extends StatelessWidget {
  const NormalUserLoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NormalUserLoginViewModel>.reactive(
      viewModelBuilder: () => NormalUserLoginViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Text(
              'Normal User Login View',
            ),
          ),
        );
      },
    );
  }
}
