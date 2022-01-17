import 'package:bmcah/constants/app_constants.dart';
import 'package:bmcah/screen/global_widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      endDrawer: MyDrawer(),
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Department',
                    color: Colors.pink.shade100,
                    iconData: Icons.departure_board,
                    onTab: () {
                      Navigator.pushNamed(context, AppConstant.deptPage);
                    },
                  ),
                ),
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Doctors',
                    color: Colors.blueGrey.shade400,
                    iconData: Icons.account_balance_wallet,
                    onTab: () {
                      Navigator.pushNamed(context,AppConstant.doctorPage);
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Department',
                    color: Colors.amber.shade400,
                    iconData: Icons.departure_board,
                    onTab: () {},
                  ),
                ),
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Department',
                    color: Colors.blueGrey.shade400,
                    iconData: Icons.account_balance_wallet,
                    onTab: () {},
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Department',
                    color: Colors.amber.shade400,
                    iconData: Icons.departure_board,
                    onTab: () {},
                  ),
                ),
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Department',
                    color: Colors.blueGrey.shade400,
                    iconData: Icons.account_balance_wallet,
                    onTab: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _customButton({
    BuildContext? context,
    @required Color? color,
    @required String? name,
    @required IconData? iconData,
    @required VoidCallback? onTab,
  }) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        // width: MediaQuery.of(context!).size.width * .44,
        height: 120.0,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 50.0,
            ),
            Text(
              '$name',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
