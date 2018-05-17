/*
 Bit Operations:
     &  - 按位与
     |  - 按位或
     ^  - 按位异或
     ~  - 按位非
     << - 按位左移
     >> - 按位右移
 */

func stringOfInvertedBits(_ value: Int) {
    let stringOfInvertedBits = String(value, radix: 2)
    print("value(\(value)): \(stringOfInvertedBits)")
}

/// #1 even or odd
func evenOrOdd(value: Int) {
    stringOfInvertedBits(value)
    if (value & 1) == 0 {
        print("\(value) is even.")
    } else {
        print("\(value) is odd.")
    }
}
evenOrOdd(value: 0)
evenOrOdd(value: -1)
evenOrOdd(value: -24)
evenOrOdd(value: 43)

/// #2 the n-th bit is set
func testValue(_ value: Int, n: Int) {
    stringOfInvertedBits(value)
    stringOfInvertedBits(1<<n)
    if (value & (1<<n)) != 0 {
        print("\(value): \(n)-th bit is set.")
    } else {
        print("\(value): \(n)-th bit is not set.")
    }
}
testValue(122, n: 3)
testValue(-44, n: 5)
testValue(44, n: 5)

/// #3 set the n-th bit
/// y = x | (1<<n)
let x = 120, n = 2
let y = x | (1<<n)
stringOfInvertedBits(x)
stringOfInvertedBits(y)
print("\(x) set the \(n) bit is: \(y)")

/// #4 unset the n-th bit
/// y = x & ~(1<<n)
let x1 = 127, n1 = 4
let y1 = x1 & ~(1<<n1)
stringOfInvertedBits(x1)
stringOfInvertedBits(y1)
print("\(x1) unset the \(n1) bit is: \(y1)")

