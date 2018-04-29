//
//  VideoController.swift
//  playerYoutube
//
//  Created by christophe milliere on 29/04/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class VideoController: UIViewController {
    
    var music: Music?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if music != nil {
            title = music?.title
        }
       view.backgroundColor = UIColor.black
    }

}
