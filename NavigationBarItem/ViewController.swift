//
//  ViewController.swift
//  NavigationBarItem
//
//  Created by Jay Sirisavath on 9/24/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Bar Items"
        view.backgroundColor = .systemPink
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemBlue
        button.setTitle("Go To View 2", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        navigationController?.navigationBar.tintColor = .label
        ConfigureItems()
        // Do any additional setup after loading the view.
    }
    private func ConfigureItems() {
        
        
//        navigationItem.rightBarButtonItem =[
//
//            UIBarButtonItem(
//            barButtonSystemItem: .add,
//            target: self,
//            action: nil)
            
//        ]
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: nil)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "gear"),
            style: .done,
            target: self,
            action: nil)

        //         Custom view option *
//        let customView = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
//        customView.text = "Hello"
//        customView.textAlignment = .center
//        customView.backgroundColor = .orange
//        customView.layer.cornerRadius = 8
//        customView.layer.masksToBounds = true
//        navigationItem.leftBarButtonItem = UIBarButtonItem(
//            customView: customView)
    }

    @objc func didTapButton() {
        let vc = UIViewController()
        vc.title = "View 2"
        vc.view.backgroundColor = .systemGreen
        
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign out",
                                                               style: .done,
                                                               target: self,
                                                               action: nil)
        navigationController?.pushViewController(vc, animated:true)
    }
}

