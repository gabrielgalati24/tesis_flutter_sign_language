import 'package:flutter/material.dart';
import 'package:flutter_sign_language/services/usuario_services.dart';
import 'package:flutter_sign_language/widgets/progress_bar.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => UsuarioService(),
        )
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: '',
        routes: {
          '/': (context) => HomePage(),
        },
      ),
    );
  }
}
