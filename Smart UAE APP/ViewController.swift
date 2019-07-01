//
//  ViewController.swift
//  Smart UAE APP


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewAia: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // A UIImageView with async loading
        let imageView = UIImageView()
        imageViewAia.backgroundColor = UIColor.blue
        
        // To be reverse
        
        imageViewAia.loadGif(name: "nofinal")
        GifView.loadGif(named: "gifgirlsmall.gif")
        // Do any additional setup after loading the view.
        
    }


}

