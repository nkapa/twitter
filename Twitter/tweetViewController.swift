//
//  tweetViewController.swift
//  Twitter
//
//  Created by Nandini Kapa on 11/2/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class tweetViewController: UIViewController {

    @IBOutlet weak var tweetTextView: UITextView!
    

    @IBAction func tweet(_ sender: Any) {
        if(!tweetTextView.text.isEmpty) {
            TwitterAPICaller.client?.postTweet(tweetString: tweetTextView.text, success: {
                self.dismiss(animated: true, completion: nil)
            }, failure: { (Error) in
                print("Failed to post tweet.")
                self.dismiss(animated: true, completion: nil)
            })
        }
    }
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tweetTextView.becomeFirstResponder()
        // Do any additional setup after loading the view.
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
