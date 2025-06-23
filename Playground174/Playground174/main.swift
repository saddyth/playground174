
import Foundation

// Task 1.1
//Вывод чисел от 1 до N
//Напишите программу, которая принимает число N и выводит все числа от 1 до N.
print("Задание 1.1. Введите число")
let N = Int(readLine()!)

for i in 1...N! {
    print(i)
}

//Task 1.2
//Сумма чисел от 1 до N
//Напишите программу, которая принимает число N и вычисляет сумму всех чисел от 1 до N.

print("Задание 1.2. Введите число")
let num = Int(readLine()!)
var sum = Int()
for i in 1...num! {
    sum += i
}
print(sum)

// Task 1.3
//Факториал числа
//Напишите программу, которая вычисляет 
//факториал числа N (например, 5! = 5 * 4 * 3 * 2 * 1 = 120).
print("Задание 1.3. Введите число")
let newNum = Int(readLine()!)
var multiply = 1
for i in 1...newNum! {
    multiply *= i
}
print(multiply)


//Task 1.4
//Четные числа
//Выведите все четные числа от 1 до 50.
print("Четные числа от 1 до 50")
var eventNumArr: [Int] = []
for i in 1...50 {
    if i % 2 == 0 {
        eventNumArr.append(i)
    }
}
print(eventNumArr)

// Task 1.5
//Нечетные числа
//Выведите все нечетные числа от 1 до 50.
print("Нечетные числа от 1 до 50")
var oddNumArr: [Int] = []
for i in 1...50 {
    if i % 2 != 0 {
        oddNumArr.append(i)
    }
}
print(oddNumArr)

