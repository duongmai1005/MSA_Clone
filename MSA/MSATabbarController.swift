//
//  MSATabbarController.swift
//  MSA
//
//  Created by mike on 06/07/2023.
//

import UIKit

class MSATabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        // Do any additional setup after loading the view.
    }
   
    private func setupTabs() {
        let homeVC = MSAHomeViewController()
        let billVC = MSABillsViewController()
        let inboxVC = MSAInboxViewController()
        let activityVC = MSAActivityViewController()
        let moreVC = MSAMoreViewController()
        
        let nav1 = UINavigationController(rootViewController: homeVC)
        let nav2 = UINavigationController(rootViewController: billVC)
        let nav3 = UINavigationController(rootViewController: inboxVC)
        let nav4 = UINavigationController(rootViewController: activityVC)
        let nav5 = UINavigationController(rootViewController: moreVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Bills", image: UIImage(systemName: "dollarsign.square"), tag: 1)
        nav3.tabBarItem = UITabBarItem(title: "Inbox", image: UIImage(systemName: "bell"), tag: 1)
        nav4.tabBarItem = UITabBarItem(title: "Activity", image: UIImage(systemName: "newspaper"), tag: 1)
        nav5.tabBarItem = UITabBarItem(title: "Others", image: UIImage(systemName: "line.3.horizontal"), tag: 1)
        
        UITabBar.appearance().tintColor = .green
        setViewControllers([nav1, nav2, nav3, nav4, nav5], animated: true)
        view.backgroundColor = .white
    }
}
