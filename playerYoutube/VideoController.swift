//
//  VideoController.swift
//  playerYoutube
//
//  Created by christophe milliere on 29/04/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit
import WebKit

class VideoController: UIViewController {
    
    var music: Music?
    
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if music != nil {
            loadVideo(music: music!)
        }
       view.backgroundColor = UIColor.black
    }
    
    func loadVideo( music: Music) {
        if let url = URL(string: music.videoUrl){
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

}
