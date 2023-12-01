/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/generics_generic_queue_base.dart';

/*
Practice Question 1: Generic Queue

Task:

Create a class named GenericQueue<T> that implements a first-in-first-out (FIFO) queue structure 
for generic types. The class should have the following methods:

enqueue(T element): Adds an element to the rear of the queue.

dequeue(): Removes and returns the element at the front of the queue.

peek(): Returns the element at the front of the queue without removing it.

isEmpty(): Checks whether the queue is empty.

toString(): Returns a string representation of the queue.
 */

class GenericQueue<T> {
  List<T> queue = [];
  void enqueue(T element) {
    queue.add(element);
  }

  T dequeue(){
    final last = queue.last;
    queue.removeLast();
    return last;
  }

  T peek(){
    return queue.first;
  }

  bool isEmpty(){
    return queue.isEmpty;
  }

  @override
  String toString() {
    //[4, 5] --> '4, 5'
    //["hello", "hi"] --> 'hello, hi'
    // final buffer = StringBuffer();
    // for (var i = 0; i < queue.length; i++){
    //   buffer.write(queue[i]);
    //   if(i < queue.length - 1){
    //     buffer.write(', ');
    //   }
    // }
    // return buffer.toString();
    return queue.join(', ');
  }

}
