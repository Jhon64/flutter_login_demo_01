import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_example/widgets/button_account_login.dart';
import 'package:login_example/widgets/login/crear_cuenta_widget.dart';
import 'package:login_example/widgets/login/login_widget.dart';
import 'package:responsive_class/responsive_class.dart';
import 'package:utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  final Widget svg = SvgPicture.asset('assets/svg/logo_login.svg');
  bool isCardVisible = false;
  int typeView = 1;
  late final TabController tabController;

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  void toggleCardVisibility(int? view, bool? show) {
    // Toasted(mensaje: "Mostrando card",long: false).show();
    print("clickeando bottom");
    int _view= typeView = view ?? 1;
    tabController.animateTo(_view);
    setState(() {
      isCardVisible = show ?? true;
      typeView = _view;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            // color: Colors.blue,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                GestureDetector(
                  onTap: () {
                    // Acción al hacer clic en la tarjeta flotante
                    // print('Tarjeta flotante clicada');
                    // Toasted(mensaje: "Clickando fuera", long: false).show();
                    toggleCardVisibility(null, false);
                  },
                  child: Container(
                    color: Colors.white,
                    height: 350.0,
                    width: double.infinity,
                    child: Align(
                      child: svg,
                    ),
                  ),
                ),
                const Text("Welcome", style: TextStyle(fontSize: 22.0)),
                const SizedBox(height: 6.0),
                const Text("Before enjoying Foodmedia services",
                    style: TextStyle(fontSize: 16.0)),
                const Text("Please register first",
                    style: TextStyle(fontSize: 16.0)),
                const SizedBox(
                  height: 5.0,
                ),
                const Spacer(),
                Column(
                  children: [
                    ButtonAccountLogin(
                        textLabel: "Crear Cuenta",
                        onPressed: () => {toggleCardVisibility(0, null)},
                        backgroundColor: Colors.green),
                    const SizedBox(height: 5.0),
                    ButtonAccountLogin(
                        textLabel: "Login",
                        onPressed: () => {toggleCardVisibility(1, null)},
                        backgroundColor: Colors.greenAccent),
                    const SizedBox(height: 3.0),
                    const Text(
                        "By logging in or registering, you have agreed to the Terms And",
                        style: TextStyle(fontSize: 11.0)),
                    const Text(" Conditions and Privacy Policy.",
                        style: TextStyle(fontSize: 11.0)),
                  ],
                ),
                const Spacer(),
              ],
            )),
        if (isCardVisible)
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            height: responsive.heightPercent(80.0),
            child: Card(
                margin: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                ),
                elevation: 8.0,
                child: Column(children: [
                  TabBar(
                    indicatorColor: Colors.green,
                    controller: tabController,
                    tabs: const [
                      Tab(
                        child: Text("Crear Cuenta",
                            style:
                                TextStyle(color: Colors.green, fontSize: 18.0)),
                      ),
                      Tab(
                        child: Text("Login",
                            style:
                                TextStyle(color: Colors.green, fontSize: 18.0)),
                      ),
                    ],
                  ),
                  Expanded(
                      child: TabBarView(
                          controller: tabController,
                          children: const [CrearCuentaWidget(),LoginWidget(), ]))
                ])),
          ),
      ],
    ));
  }
}
