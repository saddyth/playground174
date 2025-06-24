
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
print("Задание 1.4.Четные числа от 1 до 50")
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
print("Задание 1.5.Нечетные числа от 1 до 50")
var oddNumArr: [Int] = []
for i in 1...50 {
    if i % 2 != 0 {
        oddNumArr.append(i)
    }
}
print(oddNumArr)

//Task 2.1
// Напишите программу, которая выводит таблицу умножения для чисел от 1 до 10.
print("Задание 2.1. Таблица умножения до 10")
for i in 1...10 {
    for j in 1...10 {
        print("\(i) x \(j) = \(i*j)")
    }
}

// Task 2.2
// Напишите программу, которая принимает число N и выводит все его делители.
print("Задание 2.2. Введите число")
let divideNum = Int(readLine()!)
var divideArr = [1]
for i in 2...divideNum! {
    if divideNum! % i == 0 {
        divideArr.append(i)
    }
}
print(divideArr)

//Task 2.3
// Простые числа
//Напишите программу, которая выводит все простые числа от 1 до 100.
//Подсказка: Простое число — это число, которое делится только на 1 и само себя.
print("Задание 2.3. Простые числа от 1 до 100")
var primeArr = [1]
var isPrime = Bool()
for i in 2...100 {
    isPrime = false
    for j in 2..<i {
        if i % j == 0 {
           
            isPrime = true
        }
    }
    if !isPrime {
        primeArr.append(i)
    }
}
//Task 2.4
//Напишите программу, которая принимает число N и выводит обратный счет от N до 1.
print("Задание 2.4. Введите число")
var backwardNum = Int(readLine()!)

while backwardNum! > 0 {
    print(backwardNum!)
    backwardNum! -= 1
}

//Task 2.5
//Сумма цифр числа Напишите программу, которая принимает число N и вычисляет сумму его цифр.
//Например, для числа 123 сумма должна быть 1 + 2 + 3 = 6.
print("Задание 2.5. Введите число")
var numberForSum = Int(readLine()!)
var countSum = Int()

while numberForSum! > 0 {
    countSum += numberForSum! % 10
    numberForSum! /= 10
}
print(countSum)

//Task 3.1
//Числа Фибоначчи
//Напишите программу, которая выводит первые N чисел последовательности Фибоначчи.
//Последовательность Фибоначчи: 0, 1, 1, 2, 3, 5, 8, 13, ...
//Каждое следующее число равно сумме двух предыдущих.
print("Задание 3.1. Введите кол-во чисел фибоначчи")
var numberOfFibonacci = Int(readLine()!)
var fibonacciArr = [Int]()

if numberOfFibonacci! > 1 {
    fibonacciArr.append(contentsOf: 0...1)
    for i in 1..<numberOfFibonacci! - 1 {
        fibonacciArr.append(fibonacciArr[i] + fibonacciArr[i-1])
    }
    print(fibonacciArr)
} else if numberOfFibonacci == 0 {
    print(fibonacciArr)
} else if numberOfFibonacci == 1 {
    fibonacciArr.append(0)
    print(fibonacciArr)
}



// Task 3.2
//Генерация случайных чисел без повторений
//Напишите программу, которая генерирует N случайных чисел от 1 до 100 без повторений.
//Используйте массив или множество для хранения уникальных значений.

print("Задание 3.2. Введите кол-во элементов до 100")
var randomSet: Set = [Int.random(in: 1..<101)]
let amount = Int(readLine()!)

while randomSet.count < amount! {
    randomSet.insert(Int.random(in: 1..<101))
}
print(randomSet)
// Task 3.3
//Поиск максимального элемента в массиве
//Создайте массив чисел и найдите его максимальное значение с помощью цикла.
//Не используйте готовый метод .max().
print("Задание 3.3. Поиск макс элемента в массиве")
var randomArr = [Int.random(in: 1..<101)]
while randomArr.count < 100 {
    randomArr.append(Int.random(in: 1..<101))
}
print(randomArr)

var maxValue = randomArr[0]
for number in randomArr {
    if number > maxValue {
        maxValue = number
    }
}

print(maxValue)

//Task 3.4
//Напишите программу, которая принимает строку и выводит ее в обратном порядке.
//Например, для строки "hello" результат должен быть "olleh".
print("Задание 3.4. Переворот строки")
let line = String(readLine()!)
var reversedLine = line.reversed()
print(String(reversedLine))

// Task 3.5
//Проверка палиндрома
//Напишите программу, которая проверяет, является ли строка палиндромом:
//Палиндром — это строка, которая читается одинаково слева направо и справа налево.
//Например, "radar" — палиндром.
print("Задание 3.5: Введите слово для проверки на палиндром")
let word = String(readLine()!)
if word == String(word.reversed()) {
    print("Это палиндром")
} else {
    print("Это не палиндром")
}


//Task 4.1
//Количество простых чисел
//Напишите программу, которая подсчитывает количество простых чисел в диапазоне от 1 до N.
print("Задание 4.1. Введите число")
var primeArray = [1]
var isPrime2 = Bool()
let amountOfPrimes = Int(readLine()!)
for i in 2..<amountOfPrimes! {
    isPrime = false
    for j in 2..<i {
        if i % j == 0 {
            isPrime = true
        }
    }
    if !isPrime {
        primeArray.append(i)
    }
}
print(primeArray)

//Task 4.2
//Счастливые билеты
//Напишите программу, которая проверяет, является ли номер билета "счастливым".
//Билет считается счастливым, если сумма первых трех цифр равна сумме последних трех цифр.
//Например, билет 123321 — счастливый, так как 1+2+3 = 3+2+1.

print("Задание 4.2. Введите номер билета")
var luckyNumber = Int(readLine()!)
var countLuckySum1 = Int()
var countLuckySum2 = Int()

for _ in 1...3{
    countLuckySum1 += luckyNumber! % 10
    luckyNumber! /= 10
}
for _ in 1...3{
    countLuckySum2 += luckyNumber! % 10
    luckyNumber! /= 10
}


if countLuckySum1 == countLuckySum2 {
    print("Билет счастливый")
} else {
    print("Билет несчастливый")
}
print(luckyNumber!)

//Task 4.3
//Дан массив чисел. Напишите программу, которая удаляет все дубликаты из массива.
//Например, из массива [1, 2, 2, 3, 4, 4, 5] должно получиться [1, 2, 3, 4, 5].
print("Задание 4.3")
var randomArrDub = [Int.random(in: 1..<101)]
while randomArrDub.count < 100 {
    randomArrDub.append(Int.random(in: 1..<101))
}
let uniqueSet = Set(randomArrDub)
print(uniqueSet)

//Task 4.4
//Поиск числа в массиве
//Создайте массив чисел и напишите программу, которая проверяет, содержится ли заданное числ в массиве.
//Если число найдено, выведите его индекс. Если нет, выведите сообщение об отсутствии.

print("Задание 4.4. Введите число")
var findIndexArr = [Int.random(in: 1..<101)]
let findValue = Int(readLine()!)
while findIndexArr.count < 100 {
    findIndexArr.append(Int.random(in: 1..<101))
}
if findIndexArr.contains(findValue!) {
    print("Индекс найденного числа \(findIndexArr.firstIndex(of: findValue!)!)")
} else {
    print("Такого числа нет")
}

//Task 4.5
//Максимальная серия
//Дан массив чисел. Найдите самую длинную серию подряд идущих одинаковых чисел.
//Например, в массиве [1, 2, 2, 3, 3, 3, 2, 2] самая длинная серия — [3, 3, 3].
print("Задание 4.5")
var rangeArr = [3,3,3,3,4,6,1,1,1,7,8,9,1,9,9,9]
var maxRange = Int()
var superMaxRange = Int()
var rangeNumber = Int()
for (index,number) in rangeArr.enumerated() {
    if index != rangeArr.endIndex - 1{
        if rangeArr[index] == rangeArr[index + 1] {
            maxRange += 1
        } else if rangeArr[index] != rangeArr[index + 1] {
            if maxRange >= superMaxRange{
                superMaxRange = maxRange + 1
                rangeNumber = number
                maxRange = 0
            } else {
                maxRange = 0
            }
        }
    } else {
        if rangeArr[index] == rangeArr[index - 1] && maxRange >= superMaxRange{
            superMaxRange = maxRange + 1
            rangeNumber = number
            maxRange = 0
        }
    }
}
print("Самая большая серия - число \(rangeNumber), кол-во \(superMaxRange)")
