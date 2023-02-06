abstract class APIResult<T> {}

class APIResultSuccess<T> {
  final T value;

  APIResultSuccess(this.value);
}

class APIResultError<T> {
  final Object exception;

  APIResultError(this.exception);
}
