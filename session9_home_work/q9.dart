/*
 leetcode question
You are given an array prices where prices[i] is the price of a given stock on the ith day.
 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock. 
Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 */
int maxProfit(List<int> prices) {
  int minPrice = 1 << 30;
  int maxProfit = 0;

  for (int price in prices) {
    if (price < minPrice) {
      minPrice = price;
    } else if (price - minPrice > maxProfit) {
      maxProfit = price - minPrice;
    }
  }

  return maxProfit;
}

void main() {
  List<int> prices = [7, 1, 5, 3, 6, 4];
  print("Max Profit: ${maxProfit(prices)}");

  List<int> prices2 = [7, 6, 4, 3, 1];
  print("Max Profit: ${maxProfit(prices2)}");
}
