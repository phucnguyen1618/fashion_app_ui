part of 'history_page.dart';

extension HistoryPageChildren on HistoryPage {
  Widget rowHeaderTotalSpent() {
    return ListTile(
      title: const Text(
        'TOTAL SPENT',
        style: TextStyle(color: Colors.grey, fontSize: 14.0),
      ),
      subtitle: const Text(
        '520.000 vnd',
        style: TextStyle(
            color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      trailing: MaterialButton(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        onPressed: () {},
        child: const Text(
          'See All',
          style: TextStyle(
              color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }


}
