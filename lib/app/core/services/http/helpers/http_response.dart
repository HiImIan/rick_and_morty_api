class HttpResponse<T> {
  final int statusCode;
  final int pages;
  final T body;

  bool get isSuccess => statusCode >= 200 && statusCode < 300;

  const HttpResponse({
    required this.statusCode,
    required this.pages,
    required this.body,
  });
}
