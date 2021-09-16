import 'package:flutter/material.dart';

import 'package:grid_to_list/src/core/model/funcionario_model.dart';

class GridViewScreen extends StatelessWidget {
  List<FuncionarioModel> employeeList;

  GridViewScreen({
    this.employeeList,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      alignment: Alignment.center,
      child: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 13 / 16,
        ),
        itemCount: employeeList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.grey.shade700,spreadRadius: 2,blurRadius: 4,)],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  employeeList[index].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(employeeList[index].type),
                Text(employeeList[index].salary.toString(), style: TextStyle(fontWeight: FontWeight.w600),),
              ],
            ),
          );
        },
      ),
    );
  }
}
