


class HttpResult<R>{

  HttpResult({
    required this.success,
    this.data,
  });

  factory HttpResult.success(R? data) => HttpResult(success: true, data: data);
  factory HttpResult.fail() => HttpResult(success: false);

  final bool success;
  final R? data;
}