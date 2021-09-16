import 'package:flutter/material.dart';
import 'package:grid_to_list/src/core/model/funcionario_model.dart';
import 'package:grid_to_list/src/screens/grid_view/grid_view_tab.dart';
import 'package:grid_to_list/src/screens/list_view/list_view_tab.dart';

class PagesNavigatorScreen extends StatefulWidget {
  @override
  _PagesNavigatorScreenState createState() => _PagesNavigatorScreenState();
}

class _PagesNavigatorScreenState extends State<PagesNavigatorScreen> {

 List<FuncionarioModel> employeeData = [
   FuncionarioModel(name: "Pedro", salary: 500000, type: "Programador Junior", photo: "uoeuoeuoo" ),
   FuncionarioModel(name: "Klebao", salary: 505050, type: "Programador Pleno", photo: "uoeuoeuoo" ),
   FuncionarioModel(name: "Malu", salary: 5555555, type: "Programador Senior", photo: "uoeuoeuoo" ),
   FuncionarioModel(name: "Joao", salary: 050505, type: "Programador Pleno", photo: "uoeuoeuoo" ),
 ];



  int selectedIndex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top
      appBar: AppBar(
        title: Text("Grid To List"),
        centerTitle: true,
      ),

      // body
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          ListViewScreen(employeeList: employeeData,),
          GridViewScreen(employeeList: employeeData),
        ],
      ),

      // Bottom
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });

          pageController.animateToPage(selectedIndex,
              duration: Duration(milliseconds: 333), curve: Curves.easeInCubic);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: "List",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_view,
            ),
            label: "Grid",
          ),
        ],
      ),
    );
  }
}
