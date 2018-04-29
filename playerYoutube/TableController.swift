//
//  tableController.swift
//  playerYoutube
//
//  Created by christophe milliere on 22/04/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class TableController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableViewController: UITableView!
    
    var musics = [Music]()
    let identifierCell = "MusicCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewController.delegate = self
        tableViewController.dataSource = self
        title = " Les vidéos"
        addMusic()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musics.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let music = musics[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifierCell) as? MusicCell {
            cell.setupCell(music: music)
            return cell
        }
        
        return UITableViewCell()
    }
    
    func addMusic () {
        musics = [Music]()
        let beau = Music(artist: "Orlesan Feat Stromae", title: "La pluie", code: "37StRy0LEbI")
        musics.append(beau)
        
        let defaite = Music(artist: "Orlesan", title: "Défaite de famille", code: "wRQEfN8PGYI")
        musics.append(defaite)
        
        let basique = Music(artist: "Orlesan", title: "Basique", code: "2bjk26RwjyU")
        musics.append(basique)
        
        let cool = Music(artist: "Orlesan feat Gringe", title: "Ils Sont Cools", code: "_DT-4-jJTZc")
        musics.append(cool)
        
        let precieux = Music(artist: "Soprano", title: "Mon précieux", code: "OVmfGb8XKSg")
        musics.append(precieux)
        
        let casa = Music(artist: "La Casa de Papel", title: "My Life Is Going On", code: "F1oHBcTdKL4&list=PLkLimRXN6NKyOOVAqgfHWns1ICNiGXgOd")
        musics.append(casa)
        
        tableViewController.reloadData()
        
        
        
    }



}
