import 'package:flash_blog/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UseCase<SuccessType, Params> {
  TaskEither<Failure, SuccessType> call(final Params params);
}
