//
//  ViewController.swift
//  Parallax Images
//
//  Created by Ferry Adi Wijayanto on 10/01/22.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var images = [
        ImageItem(imageName: "1", description: "CAMERAS"),
        ImageItem(imageName: "2", description: "CITY"),
        ImageItem(imageName: "3", description: "ANIMALS"),
        ImageItem(imageName: "4", description: "FLOWERS"),
        ImageItem(imageName: "5", description: "STAND"),
        ImageItem(imageName: "6", description: "URBAN")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as! ParallaxCell
        let image = images[indexPath.row]
        
        cell.configure(image: image)
        
        return cell
    }

}

