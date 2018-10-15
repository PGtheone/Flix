//
//  DetailViewController.swift
//  Flix
//
//  Created by Peterson Edouard on 10/9/18.
//  Copyright © 2018 Peterson Edouard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var backDropImageView: UIImageView!
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    @IBOutlet weak var overViewLabel: UILabel!
    
    var movie : [String : Any]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let movie = movie {
            titleLabel.text = movie["title"] as? String
            releaseDateLabel.text = movie["release_date"] as? String
            overViewLabel.text = movie["overview"] as? String
            let backdropPathString = movie["backdrop_path"] as! String
            let posterPathString = movie["poster_path"] as! String 
            let posterBaseUrl = "http://image.tmdb.org/t/p/w500"
            
            let backdropURL = URL(string: posterBaseUrl + backdropPathString)!
            
            backDropImageView.af_setImage(withURL: backdropURL)
            
            let posterPathURl = URL(string: posterBaseUrl + posterPathString)!
            posterImageView.af_setImage(withURL: posterPathURl)
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
