import XCTest
@testable import RPNImplementation

final class RPNFunctionsTests: XCTestCase {

    func testParseToRPN_simpleExpression() {
        let tokens = ["3", "+", "4", "*", "2"]
        let rpn = RPNFunctions.parseToRPN(to: tokens)
        XCTAssertEqual(rpn, ["3", "4", "2", "*", "+"])
    }

    func testCalculateRPN_simpleExpression() {
        let postfix = ["3", "4", "2", "*", "+"]
        let result = RPNFunctions.calculateRPN(to: postfix)
        XCTAssertEqual(result, "11")
    }

    func testDivisionByZero() {
        let postfix = ["0", "0", "÷"]
        let result = RPNFunctions.calculateRPN(to: postfix)
        XCTAssertEqual(result, "Бесконечность")
    }

    func testUnaryMinus() {
        let tokens = ["-", "3", "+", "5"]
        let rpn = RPNFunctions.parseToRPN(to: tokens)
        XCTAssertEqual(rpn, ["-3", "5", "+"])
        let result = RPNFunctions.calculateRPN(to: rpn)
        XCTAssertEqual(result, "2")
    }
}

