//
//  MusicCell.swift
//  playerYoutube
//
//  Created by christophe milliere on 28/04/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class MusicCell: UITableViewCell {
    

    @IBOutlet weak var thumbr: UIImageView!
    @IBOutlet weak var desc: UILabel!
    
    var music: Music!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(music: Music){
        self.music = music
        
        let attributted = NSMutableAttributedString(string: self.music.title, attributes: [.font: UIFont.boldSystemFont(ofSize: 20), .foregroundColor: UIColor.black])
        let attributtedArtist = NSMutableAttributedString(string: "\n \(self.music.artist)", attributes: [.font:UIFont.italicSystemFont(ofSize: 20  ), .foregroundColor: UIColor.darkGray])
        attributted.append(attributtedArtist)
        desc.attributedText = attributted
    }

}
