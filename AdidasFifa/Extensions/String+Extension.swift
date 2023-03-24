//
//  String+Extension.swift
//  AdidasFifa
//
//  Created by Josue German Hernandez Gonzalez on 23-03-23.
//

import Foundation

extension String {
    func toDateFormatted() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ssZ"
        guard let date = dateFormatter.date(from: self) else {
            return nil
        }
        
        let formattedDateFormatter = DateFormatter()
        formattedDateFormatter.dateFormat = "MMM d, yyyy"
        return formattedDateFormatter.string(from: date)
    }
}


