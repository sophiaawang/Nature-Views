//
//  VideoPlayerViewController.swift
//  Nature Views
//
//  Created by Sophia Wang on 4/29/21.
//

import UIKit
import AVFoundation

class VideoPlayerViewController: UIViewController {
    @IBOutlet weak var VideoView: UIImageView!
    var playerItem: AVPlayerItem!
    var player: AVPlayer!
    var playerLayer: AVPlayerLayer!
    
    var receivedString = ""
    func something(){
        print("" + receivedString)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var videoURL = Bundle.main.url(forResource: receivedString, withExtension: "mp4")
        var asset = AVURLAsset(url: videoURL!)
        playerItem = AVPlayerItem(asset: asset)
        player = AVPlayer(playerItem: playerItem)
        playerLayer = AVPlayerLayer(player: player)
        VideoView.layer.addSublayer(playerLayer)
        playerLayer.videoGravity = .resizeAspect
    }
    
    func showActionSheet(){
        let actionSheet = UIAlertController(title: "Confirm your selection", message: "Are you sure you want to restart the video", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: {action in
        }))
        present(actionSheet, animated: true)
        
        actionSheet.addAction(UIAlertAction(title: "Yes", style: .default, handler: { [self]action in
            player.seek(to: .zero)
            player.play()
        }))
    }
    
    override func viewDidLayoutSubviews() {
        playerLayer.frame = VideoView.bounds
    }
    override func viewDidAppear(_ animated: Bool) {
        player.play()
    }
    
    @IBAction func playVideo(){
        player.play()
    }
    @IBAction func pauseVideo(){
        player.pause()
    }
    @IBAction func restartVideo(){
        showActionSheet()
    }
    
}
