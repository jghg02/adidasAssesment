//
//  ErrorResponse.swift
//  AdidasFifa
//
//  Created by Josue German Hernandez Gonzalez on 21-03-23.
//

import Foundation

struct ErrorResponse: LocalizedError, Codable, Equatable {
    let status: Int
    let message: String

    var errorDescription: String? { message }
}
