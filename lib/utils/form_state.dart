import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:toonies/model/form_item.dart';

class AppFormState extends Equatable {
  const AppFormState({
    this.email = const BlocFormItem(error: 'Please enter a valid email'),
    this.password = const BlocFormItem(
      error: 'Password must be 8-100 characters long',
    ),
    this.formKey,
  });

  final BlocFormItem email;
  final BlocFormItem password;
  final GlobalKey<FormState>? formKey;

  AppFormState copyWith({
    BlocFormItem? email,
    BlocFormItem? password,
    GlobalKey<FormState>? formKey,
  }) {
    return AppFormState(
      email: email ?? this.email,
      password: password ?? this.password,
      formKey: formKey,
    );
  }

  @override
  List<Object> get props => [email, password];
}

enum FormStatus { none, inProgress, valid, invalid }
