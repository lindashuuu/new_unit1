
//
//  MovieDetailsViewController.swift
//  new_unit1
//
//  Created by linda shu on 1/27/19.
//  Copyright © 2019 linda shu. All rights reserved.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {
    var movie: [String:Any]!
    
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let baseUrl="https://image.tmdb.org/t/p/w185"
        let posterPath=movie["poster_path"] as! String
        let posterUrl=URL(string:baseUrl+posterPath)
        posterView.af_setImage(withURL: posterUrl!)
        let backdropPath=movie["backdrop_path"] as! String
        let backdropUrl=URL(string:"https://image.tmdb.org/t/p/w780"+backdropPath)
        backdropView.af_setImage(withURL: backdropUrl!)
        
        titleLabel.text=movie["title"] as? String
        synopsisLabel.text=movie["overview"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.sizeToFit()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
