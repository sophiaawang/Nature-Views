//
//  BeachViewController.swift
//  Nature Trails
//
//  Created by Sophia Wang on 4/28/21.
//

import UIKit
import AVFoundation

class BeachViewController: UIViewController {
    var soundName: String = "seagulls"
    var num = -1
    var musicFile: NSURL = NSURL(fileURLWithPath: Bundle.main.path(forResource: "seagulls", ofType: "mp3")!)
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //for the music
        musicFile = NSURL(fileURLWithPath: Bundle.main.path(forResource: soundName, ofType: "mp3")!)
        AudioPlayer = try! AVAudioPlayer(contentsOf: musicFile as URL)
                AudioPlayer.prepareToPlay()
                AudioPlayer.numberOfLoops = -1
                AudioPlayer.play()
    }
    
    @IBAction func changeScenery(_ sender: UIButton) {
        var imageNum = Int.random(in: 0...6)
        while(imageNum == num){
            imageNum = Int.random(in: 0...4)
        }
        background.image = [#imageLiteral(resourceName: "moosa-haleem-8OGJqpNMBGM-unsplash"), #imageLiteral(resourceName: "chris-galbraith-7XAM0J3dNQM-unsplash"), #imageLiteral(resourceName: "matthew-brodeur-DH_u2aV3nGM-unsplash"), #imageLiteral(resourceName: "kees-streefkerk-Adl90-aXYwA-unsplash"), #imageLiteral(resourceName: "rachel-cook-mOcdke2ZQoE-unsplash"), #imageLiteral(resourceName: "cristofer-jeschke-uQDRDqpYJHI-unsplash"), #imageLiteral(resourceName: "jcob-nasyr-67sVPjK6Q7I-unsplash")][imageNum]
        num = imageNum
    }
    
    @IBAction func videoButton(_ sender: UIButton) {
        AudioPlayer.stop()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seashellFacts"{
            let factsVC = segue.destination as! FunFactsViewController
            factsVC.receivedString = "seashells"
            print("here at seashells")
        }else if segue.identifier == "marineLife"{
            print("here at marine")
            let factsVC = segue.destination as! FunFactsViewController
            factsVC.receivedString = "marine"
        }else if segue.identifier == "video"{
            let videoVC = segue.destination as! VideoPlayerViewController
            videoVC.receivedString = "Seagulls"
        }
    }
    
    @IBAction func musicChange(_ sender: UIButton) {
        showActionSheet()
    }
    
    func changeMusic(sN: String){
        soundName = sN
        musicFile = NSURL(fileURLWithPath: Bundle.main.path(forResource: soundName, ofType: "mp3")!)
        AudioPlayer = try! AVAudioPlayer(contentsOf: musicFile as URL)
                AudioPlayer.prepareToPlay()
                AudioPlayer.numberOfLoops = -1
                AudioPlayer.play()
    }
    
    func showActionSheet(){
        let actionSheet = UIAlertController(title: "Music Choice", message: "Choose the music/sound", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: {action in
        }))
        present(actionSheet, animated: true)
        
        actionSheet.addAction(UIAlertAction(title: "Under the Sea", style: .default, handler: { [self]action in
            changeMusic(sN: "Under the Sea")
        }))
        actionSheet.addAction(UIAlertAction(title: "Seagull sounds", style: .default, handler: { [self]action in changeMusic(sN: "seagulls")
        }))
        actionSheet.addAction(UIAlertAction(title: "Ocean Sounds", style: .default, handler: {[self]action in changeMusic(sN: "Waves")}))
    }
    
    @IBAction func backSegue(_ segue: UIStoryboardSegue){
    }
    
}
