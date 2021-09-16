import 'package:flutter/material.dart';

import 'package:grid_to_list/src/core/model/funcionario_model.dart';

class ListViewScreen extends StatelessWidget {

 final List<FuncionarioModel> employeeList;
  const ListViewScreen({
    @required this.employeeList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      alignment: Alignment.center,
      child: ListView.builder(
        itemCount: employeeList.length,
        itemBuilder: (context,index){
         return ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              ),
            ),
            title: Text(employeeList[index].name),
            subtitle: Text(employeeList[index].type),
            trailing: Text("\$${employeeList[index].salary.toStringAsFixed(2)}"),
          );
        },
      ),
    );
  }
}
