import 'package:generics_generic_queue/generics_generic_queue.dart';
import 'package:test/test.dart';

void main() {
  group('Generic Queue Tests', () {
    late GenericQueue<int> intQueue;

    setUp(() {
      intQueue = GenericQueue<int>();
    });

    test('Enqueue and peek', () {
      intQueue.enqueue(1);
      expect(intQueue.peek(), equals(1));
    });

    test('Enqueue and dequeue', () {
      intQueue.enqueue(2);
      expect(intQueue.dequeue(), equals(2));
    });

    test('Check if queue is empty', () {
      expect(intQueue.isEmpty(), isTrue);
      intQueue.enqueue(3);
      expect(intQueue.isEmpty(), isFalse);
    });

    test('ToString representation', () {
      intQueue.enqueue(4);
      intQueue.enqueue(5);
      expect(intQueue.toString(), equals('4, 5'));
    });
  });
}
