//
//  ForestViewController.swift
//  Nature Trails
//
//  Created by Sophia Wang on 4/28/21.
//

import UIKit
import AVFoundation

class ForestViewController: UIViewController {
    var num = 0
    var count = -1
    var soundName: String = "Forest"
    var musicFile: NSURL = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Forest", ofType: "mp3")!)
    @IBOutlet weak var background: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        musicFile = NSURL(fileURLWithPath: Bundle.main.path(forResource: soundName, ofType: "mp3")!)
        AudioPlayer = try! AVAudioPlayer(contentsOf: musicFile as URL)
                AudioPlayer.prepareToPlay()
                AudioPlayer.numberOfLoops = -1
                AudioPlayer.play()
    }
    
    func musicPlayer(){
        AudioPlayer = try! AVAudioPlayer(contentsOf: musicFile as URL)
                AudioPlayer.prepareToPlay()
                AudioPlayer.numberOfLoops = -1
                AudioPlayer.play()
    }
    
    @IBAction func changeSounds(_ sender: UIButton) {
        if num == 0{
            soundName = "Forest2"
            num += 1
        }else{
            soundName = "Forest"
            num = 0
        }
        musicFile = NSURL(fileURLWithPath: Bundle.main.path(forResource: soundName, ofType: "mp3")!)
        AudioPlayer = try! AVAudioPlayer(contentsOf: musicFile as URL)
                AudioPlayer.prepareToPlay()
                AudioPlayer.numberOfLoops = -1
                AudioPlayer.play()
    }
    
    @IBAction func changeScenery(){
        var imageNum = Int.random(in: 0...5)
        while(imageNum == count){
            imageNum = Int.random(in: 0...4)
        }
        background.image = [#imageLiteral(resourceName: "mario-alvarez-M1YdS0g8SRA-unsplash"), #imageLiteral(resourceName: "paul-siewert-1SKnR3qE1Y0-unsplash"), #imageLiteral(resourceName: "michael-krahn-eGD69I3ODC4-unsplash"), #imageLiteral(resourceName: "tim-mossholder-RzFqGKMT_LY-unsplash"), #imageLiteral(resourceName: "ethan-unzicker-50-ReZOSyms-unsplash"), #imageLiteral(resourceName: "ben-guerin-NWrye3NRrKw-unsplash")][imageNum]
        count = imageNum
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "forestAnimals"{
            let factsVC = segue.destination as! FunFactsViewController
            factsVC.receivedString = "Forest Animals"
        }else if segue.identifier == "forestPlants"{
            let factsVC = segue.destination as! FunFactsViewController
            factsVC.receivedString = "Forest Plants"
        }
    }
    
    @IBAction func backSegue(_ segue: UIStoryboardSegue){
    }

}
