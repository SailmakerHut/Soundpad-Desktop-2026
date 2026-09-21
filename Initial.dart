class Order {
  final String customer;
  final double amount;

  Order(this.customer, this.amount);
}

class OrderManager {
  final List<Order> orders = [];

  void addOrder(String customer, double amount) {
    orders.add(Order(customer, amount));
  }

  double totalRevenue() {
    return orders.fold(0.0, (sum, order) => sum + order.amount);
  }

  void printReport() {
    print("Order Report");
    print("============");

    for (final order in orders) {
      print("${order.customer} | \$${order.amount.toStringAsFixed(2)}");
    }

    print("============");
    print("Total Revenue: \$${totalRevenue().toStringAsFixed(2)}");
  }
}

void main() {
  final manager = OrderManager();

  manager.addOrder("Alice", 149.90);
  manager.addOrder("Brian", 89.50);
  manager.addOrder("Clara", 215.75);
  manager.addOrder("David", 64.20);

  manager.printReport();
}