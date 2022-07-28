//
//  TaxCalculator.swift
//  Demo
//
//  Created by Lukas Bimba on 12/28/21.
//

import UIKit

enum TaxCalculatorError: Error {
    case negativeSalaryError
    case zeroSalaryError
}

class TaxCalculator: NSObject {
    public func calculate(salary: Double) -> Double {
        do {
            try handleErrors(salary: salary)
        } catch {
            print(TaxCalculatorError.self)
        }
        return salary - (salary * 0.3);
    }
    
    private func handleErrors(salary: Double) throws {
        if salary < 0 {
            throw TaxCalculatorError.negativeSalaryError
        }
        if salary == 0 {
            throw TaxCalculatorError.zeroSalaryError
        }
    }
}
