import time 
import random

sentences = [
    "No hand can touch the moon, but it can be seen from Earth.",
    "No head can bear the earth, but it can be felt underfoot.",
    "No eye can see the sun, but it can be felt on the skin.",
    "No force can grasp keshava, but it can be felt in the heart."
]

def measure_accuracy(user_input, test_sentence):
    correct_chars = sum(1 for a, b in zip(user_input, test_sentence) if a == b)
    accuracy = (correct_chars / len(test_sentence)) * 100 if test_sentence else 0
    return accuracy

def typing_test():
    test_sentence = random.choice(sentences)
    print("Type the following sentence as fast as you can:")
    print(test_sentence)

    input("Press Enter when you are ready...")
    start_time = time.time()
    user_input = input("\nStart typing:\n")
    end_time = time.time()
    time_taken = end_time - start_time 
    word_count = len(test_sentence.split(" "))

    print("Results:")
    print(f"Time taken: {time_taken} seconds")
    print(f"Words typed: {word_count}")
    print(f"Typing speed: {word_count / (time_taken / 60):.2f} words per minute")

    accuracy = measure_accuracy(user_input, test_sentence)
    print(f"Accuracy: {accuracy:.2f}%")

typing_test()