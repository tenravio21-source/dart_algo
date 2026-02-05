class Fib {
  static int fib(int n) {
    if (n == 0) return 0;
    if (n == 1) return 1;
    return fib(n - 1) + fib(n - 2);
  }

  Function memoize(Function fn) {
    final Map<String, dynamic> cache = {};

    return (List<dynamic> args) {
      final String key = args.join(',');

      if (cache.containsKey(key)) {
        return cache[key];
      }

      final result = Function.apply(fn, args);
      cache[key] = result;

      return result;
    };
  }
}
