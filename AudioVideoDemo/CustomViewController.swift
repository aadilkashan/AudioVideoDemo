//
//  CustomViewController.swift
//  AudioVideoDemo
//
//  Created by Elite- 77 on 08/04/18.
//  Copyright © 2018 Aadil. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
*/
        // Do any additional setup after loading the view.
    }
  /*  @objc func swipe(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "CustomViewController")
        self.present(vc!, animated: true, completion: nil)
    }*/
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake{
            print("shake......")
        }
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
