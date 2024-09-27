abstract class Failure {}

class ServerFailure extends Failure {
  final String? message;
  ServerFailure(String string, {this.message});
}
