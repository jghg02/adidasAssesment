//
//  Match.swift
//  AdidasFifa
//
//  Created by Josue German Hernandez Gonzalez on 21-03-23.
//

struct Match: Codable {
    let matchNumber: Int
    let roundNumber: Int
    let dateUtc: String
    let location: String
    let homeTeam: String
    let awayTeam: String
    let group: String?
    let homeTeamScore: Int
    let awayTeamScore: Int
    
    private enum CodingKeys : String, CodingKey {
        case matchNumber = "MatchNumber"
        case roundNumber = "RoundNumber"
        case dateUtc = "DateUtc"
        case location = "Location"
        case homeTeam = "HomeTeam"
        case awayTeam = "AwayTeam"
        case group = "Group"
        case homeTeamScore = "HomeTeamScore"
        case awayTeamScore = "AwayTeamScore"
    }
}
