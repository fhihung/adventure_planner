enum CategoryType {
  expense(serverValue: 1),
  income(serverValue: 2);

  const CategoryType({
    this.serverValue = -1,
  });

  final int serverValue;
}
