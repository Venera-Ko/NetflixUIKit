//
//  Extensions.swift
//  NetflixUIKit
//
//  Created by V K on 09.11.2022.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
