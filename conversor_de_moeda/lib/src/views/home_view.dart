// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace
import 'package:conversor_de_moeda/src/components/currency_error_message.dart';
import 'package:conversor_de_moeda/src/components/currency_line_elevatedButton_component.dart';
import 'package:conversor_de_moeda/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import '../components/currency_line_component.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();
  late HomeController controller;
  String errorText = '';

  @override
  void initState() {
    super.initState();
    controller = HomeController(toText: toText, fromText: fromText);
    controller.start();
  }

  _success() {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 70, bottom: 30, left: 20, right: 20),
          child: ListView(
            children: [
              Container(
                child: Image.asset('assets/images/convert_image.png'),
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 25,
              ),
              CurrencyLine(
                  controller: controller.fromText,
                  selectedItem: controller.fromCurrency,
                  items: controller.currencies,
                  onChanged: (model) {
                    setState(() {
                      controller.fromCurrency = model!;
                    });
                  }),
              CurrencyLine(
                  controller: controller.toText,
                  selectedItem: controller.toCurrency,
                  items: controller.currencies,
                  onChanged: (model) {
                    setState(() {
                      controller.toCurrency = model!;
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              CurrencyLineElevatedButton(
                refreshView: () {
                  controller.start();
                },
                convert: () {
                  controller.convert();
                  setState(() {
                    errorText = controller.errorText;
                  });
                },
              ),
              ErrorMessage(errorText: errorText,),
            ],
          ),
        ),
      ),
    );
  }

  _error() {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            controller.start();
          },
          child: Text('Tentar novamente')),
    );
  }

  _loading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  _start() {
    return Container();
  }

  stateManagement(HomeState state) {
    switch (state) {
      case HomeState.start:
        return _start();

      case HomeState.loading:
        return _loading();

      case HomeState.success:
        return _success();

      case HomeState.error:
        return _error();

      default:
        return _start();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller.state,
      builder: (context, child) {
        return stateManagement(controller.state.value);
      },
    );
  }
}
