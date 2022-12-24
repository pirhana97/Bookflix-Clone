//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Priyanka Ghosh on 19/12/22.
//

import Foundation

extension String {
    func capitalizedFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
