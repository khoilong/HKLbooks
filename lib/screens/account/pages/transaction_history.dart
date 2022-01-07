import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/my_app_bar.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  _TransactionHistoryState createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppBar(context, 'Lịch sử giao dịch'),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 1,
                      child:
                          SvgPicture.asset('assets/icons/money-bag-red.svg')),
                  const Expanded(
                    flex: 5,
                    child: ListTile(
                      title: Text('Thanh toán thành công'),
                      subtitle: Text(
                        '15:03 26-10-2021',
                        //textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: ListTile(
                      title: Text('12.231.500đ'),
                      subtitle: Text(
                        'Hoàn tất',
                        textAlign: TextAlign.right,
                      ),
                    ),
                  )
                ]),
          )
        ]));
  }
}
