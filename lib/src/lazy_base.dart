library lazy.base;

class Lazy<T> {
  static final _cache = new Expando();

  final Function _func;

  const Lazy(this._func);

  T call() {
    var result = _cache[this];
    if (identical(this, result)) return null;
    if (result != null) return result;
    result = _func();
    _cache[this] = (result == null) ? this : result;
    return result;
  }
}

