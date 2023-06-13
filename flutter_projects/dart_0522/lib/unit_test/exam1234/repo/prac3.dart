class FindMax {
  int findMax(List<int> numbers) {
    return numbers.reduce((curr, next) => curr > next ? curr : next);
  }
}