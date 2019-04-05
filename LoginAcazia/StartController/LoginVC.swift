//
//  StartViewController.swift
//  LoginAcazia
//
//  Created by Home on 4/2/19.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet var pgView: UIProgressView!
    var countTimer: Timer!
    let couterTotal: Float = 5
    var counterCurrent: Float = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { timer in
            self.counterCurrent += 1 / (self.couterTotal * 100)
            self.pgView.setProgress(self.counterCurrent, animated: true)
            if self.counterCurrent >= 1 {
               
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginVC") as? LoginViewController
                
                self.navigationController?.pushViewController(vc!, animated: true)
                
                timer.invalidate()
            }
        })
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
