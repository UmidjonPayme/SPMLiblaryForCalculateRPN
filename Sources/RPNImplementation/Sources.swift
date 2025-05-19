//
//  File.swift
//  SPMForRPNCalculator
//

public struct Stack<T> {
    private var elements: [T] = []

    public init() {}

    public mutating func push(_ element: T) {
        elements.append(element)
    }

    public mutating func pop() -> T? {
        return elements.popLast()
    }

    public func peek() -> T? {
        return elements.last
    }

    public var isEmpty: Bool {
        return elements.isEmpty
    }
}
