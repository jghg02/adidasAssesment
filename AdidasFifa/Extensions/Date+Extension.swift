//
//  Date+Extension.swift
//  AdidasFifa
//
//  Created by Josue German Hernandez Gonzalez on 23-03-23.
//

import Foundation

extension Date {
    func toString(withFormat format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
