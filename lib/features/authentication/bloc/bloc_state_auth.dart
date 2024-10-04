abstract class AuthState{}

class AuthInitial extends AuthState{}
class AuthLoading extends AuthState{}
class AuthLoaded extends AuthState{
   String token;

  
  AuthLoaded(this.token);
}
class AuthError extends AuthState{
  final String message;
  AuthError(this.message);
}