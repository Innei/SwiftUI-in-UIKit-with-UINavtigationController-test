//
//  ViewController.swift
//  swiftui-in-uikit-test
//
//  Created by Innei on 2021/2/7.
//
import SnapKit
import SwiftUI
import UIKit

class CustomViewController: UIViewController {
    override func viewDidLoad() {
        let hostVc = UIHostingController(rootView: ListView())
        view.backgroundColor = .systemBackground
        let sview = hostVc.view!

        view.addSubview(sview)
        sview.snp.makeConstraints({ make in
            make.bottom.equalTo(view)
            make.top.equalTo(view)
            make.left.equalTo(view)
            make.right.equalTo(view)
            make.width.equalTo(view)
            make.height.equalTo(view)
        })
    }
}
struct VVView: View {
    var body : some View {
        HStack {
            Text("Left")
            Rectangle().foregroundColor(.blue)
            Spacer()
            Text("Right")
        }
    }
}

class Env: ObservableObject {
    @Published var navContoller: UINavigationController? = nil
    @Published var tabController: UITabBarController? = nil
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let uiButton = UIButton(type: .system)
//        let uiButton2 = UIButton(type: .system)
//        uiButton.setTitle("Button", for: .normal)
//        uiButton2.setTitle("To Swift UI", for: .normal)
//        uiButton.translatesAutoresizingMaskIntoConstraints = false
//        uiButton2.translatesAutoresizingMaskIntoConstraints = false
//        uiButton.addTarget(self, action: #selector(click), for: .touchUpInside)
//        uiButton2.addTarget(self, action: #selector(click2), for: .touchUpInside)
//
//        view.addSubview(uiButton)
//        view.addSubview(uiButton2)
//        uiButton.snp.makeConstraints { make in
//
//            make.top.equalTo(100)
//            make.left.equalTo(50)
//        }
//
//        uiButton2.snp.makeConstraints { make in
//
//            make.top.equalTo(100)
//            make.left.equalTo(100)
//        }

//        let uiButton = UIButton(type: .system)
//
//        uiButton.setTitle("Button", for: .normal)
//        uiButton.translatesAutoresizingMaskIntoConstraints = false
//        uiButton.addTarget(self, action: #selector(click2), for: .touchUpInside)
//
//        view.addSubview(uiButton)
//
//        uiButton.snp.makeConstraints { make in
//
//            make.center.equalTo(view)
//        }
        
       
        let env = Env()
        env.navContoller = navigationController
        env.tabController = tabBarController
        let hostVc = UIHostingController(rootView: NavigationControllerTestView().environmentObject(env))
        view.backgroundColor = .systemBackground
        let sview = hostVc.view!
        
        title = "Navigation Test"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.addSubview(sview)
        sview.snp.makeConstraints({ make in
            make.width.equalTo(view)
            make.center.equalTo(view)
            make.height.equalTo(view)
            
        })
    }

    @objc func click() {
        let vc = UIHostingController(rootView: ListView())

        navigationController?.pushViewController(vc, animated: true)
    }

    @objc func click2() {
        let vc = UIHostingController(rootView: ContentView())
        navigationController?.pushViewController(vc, animated: true)
    }
}
