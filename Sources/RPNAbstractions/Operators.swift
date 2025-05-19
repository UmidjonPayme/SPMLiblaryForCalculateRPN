//
//  File.swift
//  SPMForRPNCalculator
//

public enum Operators: String {
    case multiply = "×"
    case multiply2 = "*"
    case divide = "/"
    case divide2 = "÷"
    case minus = "-"
    case plus = "+"

    public func apply(_ num1: Double, _ num2: Double) -> Double {
        switch self {
        case .multiply, .multiply2:
            return num1 * num2
        case .divide, .divide2:
            return num2 / num1
        case .minus:
            return num2 - num1
        case .plus:
            return num1 + num2
        }
    }
}
