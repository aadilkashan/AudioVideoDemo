//
//  ViewController.swift
//  AudioVideoDemo
//
//  Created by Elite- 77 on 08/04/18.
//  Copyright © 2018 Aadil. All rights reserved.
//

import UIKit
import AVKit
class ViewController: UIViewController {
    var player = AVPlayer()
    let vc = AVPlayerViewController()
    
    @IBAction func okTouch(_ sender: Any) {
        visualEffectBlur.removeFromSuperview()
    }
    @IBAction func showPop(_ sender: Any) {
        visualEffectBlur.center = self.view.center
        self.view.addSubview(visualEffectBlur)
    }
    @IBOutlet var visualEffectBlur: UIVisualEffectView!
    @IBAction func buttonPressed(_ sender: Any) {
        let btn = sender as! UIButton
        if btn.tag == 0
        {
            // local audio
            let path = Bundle.main.path(forResource: "1", ofType: "mp3")
            print("audio path : \(path ?? "")")
            let url = URL(fileURLWithPath: path!)
            let playerItem = AVPlayerItem(url: url)
            player = AVPlayer(playerItem: playerItem)
            player.play()
        }
        if btn.tag == 2
        {
            //Remote Audio
            let url = URL(string: "http://fbdigital.hungama.org/AAD/audio.mp3")
            let playerItem = AVPlayerItem(url: url!)
            player = AVPlayer(playerItem: playerItem)
            player.play()
        }
        if btn.tag == 1
        {
            //Local Video
            let path = Bundle.main.path(forResource: "video", ofType: ".mp4")
            let url = URL(fileURLWithPath: path!)
            let playitem = AVPlayerItem(url: url)
            player = AVPlayer(playerItem: playitem)
            vc.player = player
            self.present(vc, animated: true,completion: nil)
        }
        else
        {
            let url = URL(string: "http://fbdigital.hungama.org/AAD/70s.mp4")
            let playitem = AVPlayerItem(url: url!)
            player = AVPlayer(playerItem: playitem)
            vc.player = player
            vc.player?.play()
            self.present(vc, animated: true,completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

