//
//  Music.swift
//  playerYoutube
//
//  Created by christophe milliere on 22/04/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import Foundation

class Music {
    private var _artist: String
    private var _title: String
    private var _code: String
    private var _baseUrlVideo = "https://www.youtube.com/embed/"
    private var _baseUrlThumbr = "https://i.ytimg.com/vi/"
    private var _endUrlThumbr = "/maxresdefault.jpg"
    
    var artist: String {
        return _artist
    }
    
    var title: String {
        return _title
    }
    
    var videoUrl: String {
        return "\(_baseUrlVideo)\(_code)"
    }
    
    var thumbrUrl: String {
        return "\(_baseUrlThumbr)\(_code)\(_endUrlThumbr)"
    }
    
    init(artist: String, title: String, code: String) {
        self._artist = artist
        self._title = title
        self._code = code
    }
}
