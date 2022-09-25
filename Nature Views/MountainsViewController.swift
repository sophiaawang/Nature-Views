//
//  MountainsViewController.swift
//  Nature Trails
//
//  Created by Sophia Wang on 4/28/21.
//

import UIKit

class MountainsViewController: UIViewController {
    @IBOutlet weak var background: UIImageView!
    var num = -1
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "snowFacts"{
            let factsVC = segue.destination as! FunFactsViewController
            factsVC.receivedString = "snow"
        }else if segue.identifier == "winterAnimals"{
            let fVC = segue.destination as! FunFactsViewController
            fVC.receivedString = "winterA"
        }else if segue.identifier == "skiing"{
            let videoVC = segue.destination as! VideoPlayerViewController
            videoVC.receivedString = "skiing"
        }
    }
    
    @IBAction func sceneryChange(_ sender: UIButton) {
        var imageNum = Int.random(in: 0...4)
        while(imageNum == num){
            imageNum = Int.random(in: 0...4)
        }
        background.image = [#imageLiteral(resourceName: "justin-kauffman-76nmyPlf3Y0-unsplash"), #imageLiteral(resourceName: "bradley-pisney-WmwE40TsqrE-unsplash"), #imageLiteral(resourceName: "ian-keefe-OgcJIKRnRC8-unsplash"), #imageLiteral(resourceName: "casey-horner-ruw8P6KRnjQ-unsplash"), #imageLiteral(resourceName: "donnie-rosie-O7L3MrlSAHA-unsplash")][imageNum]
        num = imageNum
    }
    
    @IBAction func unwindToMountainVC(segue: UIStoryboardSegue) {
    }
    @IBAction func backSegue(_ segue: UIStoryboardSegue){
    }
}
