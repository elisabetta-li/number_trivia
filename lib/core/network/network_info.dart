import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
 }

class NetworkInfoImpl implements NetworkInfo {               //упрощает работу с кодом
  final DataConnectionChecker connectionChecker;             //при смене сторонней библиотеки

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}