import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/provider/provider.dart';


final Colorbackground = const Color(0xFFAA5E71);
final ColorBtn = const Color(0xFFA45A5E);


class ProviderWorks extends StatelessWidget {
  const ProviderWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helperProvider = Provider.of<HelperProvider>(context, listen: false);

    return const Placeholder();
  }
}


