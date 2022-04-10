//
//  ViewController.swift
//  Basic animation
//
//  Created by Nilesh Kumar on 02/01/22.
//

import UIKit

class ViewController: UIViewController {

    var myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewDidLayoutSubviews()
    }

    override func viewDidLayoutSubviews() {
        
        myView.backgroundColor = .red
        myView.center = view.center
        view.addSubview(myView)
        
        let myButton = UIButton(frame: CGRect(x: (view.frame.size.width - 200) / 2, y: view.frame.size.width - 200, width: 100, height: 20))
        myButton.backgroundColor = .blue
        //myButton.titleColor(for: UIColor.white)
        myButton.setTitle("Animate", for: .normal)
        myButton.addTarget(self, action: #selector(Animate), for: .touchUpInside)
        view.addSubview(myButton)
    }
    
    @objc func Animate(){
        UIView.animate(withDuration: 1) {
            self.myView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        }
    }

}

