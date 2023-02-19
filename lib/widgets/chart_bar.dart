import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmt;
  final double spendingPctofTotal;

  const ChartBar(this.label, this.spendingAmt, this.spendingPctofTotal,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          FittedBox(
            child: spendingAmt > 1000.0
                ? Text('\$${(spendingAmt / 1000.0).toStringAsFixed(1)}K')
                : Text('\$${spendingAmt.toStringAsFixed(0)}'),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          SizedBox(
            height: 60,
            width: 10,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ]),
          ),
          const Padding(padding: EdgeInsets.only(top: 2, bottom: 2)),
          Text(label),
        ],
      ),
    );
  }
}
