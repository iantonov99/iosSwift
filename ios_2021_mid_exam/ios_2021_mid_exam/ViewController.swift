//
//  ViewController.swift
//  ios_2021_mid_exam
//
//  Created by Konstantin Zaimov on 1/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MoviesTable: UITableView!
    
    var movies = Model()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = movies.movies[indexPath.row]
        var cell: MoviesTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MoviesTableViewCell
        if let movieCell = cell {
            movieCell.MovieImage.image = UIImage.init(imageLiteralResourceName:  data.photo)
            movieCell.MovieTitle.text = data.title
            
            return movieCell
        }
        
        return MoviesTableViewCell(style: .default, reuseIdentifier: "movieCell")
    }
    
    
}

