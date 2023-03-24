//
//  MatchCell.swift
//  AdidasFifa
//
//  Created by Josue German Hernandez Gonzalez on 23-03-23.
//

import UIKit

class MatchCell: UITableViewCell {

    
    // MARK: - IBOutlets
    
    @IBOutlet weak var localTeamLogo: UIImageView!
    @IBOutlet weak var awayTeamLogo: UIImageView!
    
    @IBOutlet weak var localtTeamNameLabel: UILabel!
    @IBOutlet weak var awayTeamNameLabel: UILabel!
    
    @IBOutlet weak var localTeamScore: UILabel!
    @IBOutlet weak var awayTeamScore: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    
    /// This method configure all information to show in the cell
    /// - Parameter data: is a Match Data
    func configCell(with data: Match) {
        localtTeamNameLabel.text = data.homeTeam
        awayTeamNameLabel.text = data.awayTeam
        dateLabel.text = data.dateUtc.toDateFormatted()
        locationLabel.text = data.location
        localTeamScore.text = "\(data.homeTeamScore)"
        awayTeamScore.text = "\(data.awayTeamScore)"
    }
}
