//
//  ViewController.swift
//  Bhartiya Samvidhan
//
//  Created by RAMDHAN CHOUDHARY on 23/08/19.
//  Copyright © 2019 RDC Innovations Pvt Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "THE CONSTITUTION OF INDIA"
        
//        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
//        self.view.addGestureRecognizer(tap)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationController?.navigationBar.tintColor = UIColor.white

    }
    
//    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
//        performSegue(withIdentifier: "showPartListViewController", sender: self)
//
//    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: animated)
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.setNavigationBarHidden(false, animated: animated)
//    }

    
    
    @IBAction func startReadingButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "showPartListViewController", sender: self)

    }
    

}

