import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final apiUrl = dotenv.env['BASE_API_URL'];
