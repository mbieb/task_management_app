import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:task_management_app/app/domain/auth/auth_form.dart/auth_form.dart';
import 'package:task_management_app/app/domain/auth/auth_objects.dart';
import 'package:task_management_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:task_management_app/app/domain/failures/failures.dart';

void main() {
  group('SignInForm Validation', () {
    test('should return failure when email is empty', () {
      const form = SignInForm(
        email: EmailAddress(''),
        password: SignInPassword('ValidPass123'),
      );

      expect(
          form.failureOption, some(const ValueFailure.empty(failedValue: '')));
      expect(form.isValid, false);
    });

    test('should return failure when password is too short', () {
      const form = SignInForm(
        email: EmailAddress('test@example.com'),
        password: SignInPassword('123'),
      );

      expect(
        form.failureOption,
        some(const ValueFailure.lengthTooShort(failedValue: '123', min: 8)),
      );
      expect(form.isValid, false);
    });

    test('should be valid when email and password are correct', () {
      const form = SignInForm(
        email: EmailAddress('test@example.com'),
        password: SignInPassword('ValidPass123'),
      );

      expect(form.failureOption, none());
      expect(form.isValid, true);
    });
  });

  group('RegisterForm Validation', () {
    test('should return failure when full name is empty', () {
      final form = RegisterForm(
        fullName: const FullName(''),
        email: const EmailAddress('test@example.com'),
        password: const RegisterPassword('ValidPass123'),
        gender: none(),
        province: none(),
        birthDate: none(),
        imageUrl: none(),
      );

      expect(
          form.failureOption, some(const ValueFailure.empty(failedValue: '')));
      expect(form.isValid, false);
    });

    test('should return failure when email format is invalid', () {
      final form = RegisterForm(
        fullName: const FullName('John Doe'),
        email: const EmailAddress('invalid-email'),
        password: const RegisterPassword('ValidPass123'),
        gender: none(),
        province: none(),
        birthDate: none(),
        imageUrl: none(),
      );

      expect(
        form.failureOption,
        some(const ValueFailure.invalidEmail(failedValue: 'invalid-email')),
      );
      expect(form.isValid, false);
    });

    test('should return failure when gender is not selected', () {
      final form = RegisterForm(
        fullName: const FullName('John Doe'),
        email: const EmailAddress('test@example.com'),
        password: const RegisterPassword('ValidPass123'),
        gender: none(),
        province: none(),
        birthDate: none(),
        imageUrl: none(),
      );

      expect(form.failureOrGender,
          left(const ValueFailure.empty(failedValue: '')));
      expect(form.isValid, false);
    });

    test('should be valid when all fields are filled correctly', () {
      final form = RegisterForm(
        fullName: const FullName('John Doe'),
        email: const EmailAddress('test@example.com'),
        password: const RegisterPassword('ValidPass123'),
        gender: some(const DropdownText(id: '1', text: 'Male')),
        province: some(const DropdownText(id: '1', text: 'Jakarta')),
        birthDate: some(DateTime(2000, 1, 1)),
        imageUrl: some('https://example.com/profile.jpg'),
      );

      expect(form.failureOption, none());
      expect(form.isValid, true);
    });
  });
}
