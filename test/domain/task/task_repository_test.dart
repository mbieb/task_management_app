import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:task_management_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:task_management_app/app/domain/task/task.dart';
import 'package:task_management_app/app/domain/task/task_form/task_form.dart';
import 'package:task_management_app/app/domain/task/task_success/task_success.dart';
import 'package:task_management_app/app/domain/task/i_task_repository.dart';

import 'task_repository_test.mocks.dart';

@GenerateMocks([ITaskRepository])
void main() {
  late MockITaskRepository mockTaskRepository;

  setUp(() {
    mockTaskRepository = MockITaskRepository();
  });

  group('Task Repository', () {
    test('should return a list of tasks when getTasks is successful', () async {
      // Arrange
      final tasks = [const TaskModel(id: '1', title: 'Test Task')];
      when(mockTaskRepository.getTasks()).thenAnswer((_) async => Right(tasks));

      // Act
      final result = await mockTaskRepository.getTasks();

      // Assert
      expect(result, Right(tasks));
      verify(mockTaskRepository.getTasks()).called(1);
    });

    test('should return success when submitting a task', () async {
      // Arrange
      final form = TaskForm(
        title: some('New Task'),
        id: some('1'),
        description: some('some new task '),
        dueDate: some(
          DateTime.now(),
        ),
        status: some(
          const DropdownText(id: 'pending', text: 'pending'),
        ),
        createdAt: some(
          DateTime.now(),
        ),
      );
      const success = TaskSuccess.successAdd();
      when(mockTaskRepository.submit(form))
          .thenAnswer((_) async => const Right(success));

      // Act
      final result = await mockTaskRepository.submit(form);

      // Assert
      expect(result, const Right(success));
      verify(mockTaskRepository.submit(form)).called(1);
    });

    test('should return success when editing a task', () async {
      // Arrange
      final form = TaskForm(
        title: some('Updated Task'),
        id: some('1'),
        description: some('some updated task '),
        dueDate: some(
          DateTime.now(),
        ),
        status: some(
          const DropdownText(id: 'completed', text: 'completed'),
        ),
        createdAt: some(
          DateTime.now(),
        ),
      );
      const success = TaskSuccess.successEdit();
      when(mockTaskRepository.editTask(form))
          .thenAnswer((_) async => const Right(success));

      // Act
      final result = await mockTaskRepository.editTask(form);

      // Assert
      expect(result, const Right(success));
      verify(mockTaskRepository.editTask(form)).called(1);
    });
  });
}
