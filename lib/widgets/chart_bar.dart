import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmt;
  final double spendingPctofTotal;

  const ChartBar(this.label,this.spendingAmt,this.spendingPctofTotal,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Text('\$${spendingAmt.toStringAsFixed(0)}'),
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          SizedBox(
            height: 60,
            width: 10,
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: const Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPctofTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ]),
          ),
          const Padding(padding: EdgeInsets.only(top: 2,bottom: 2)),
          Text(label),
        ],
      ),
    );
  }
}
