//
//  NoteWriteView.swift
//  Persicifolia
//
//  Created by Innei on 2021/1/29.
//

import SwiftUI

struct NavigationControllerTestView: View {
    @EnvironmentObject var env: Env

    var body: some View {
        Form {
            Section(header: Text("在 Swift UI 中使用 Navigation Controller")) {
            }.frame(width: nil, height: 0, alignment: .top)

            Section(footer: Text("使用 NavigationLink 开始是 Disabled，因为没有套 NavigationView，但是之后自动识别到了 UINavigationController？？？")) {
                NavigationLink(
                    destination: ContentView().environmentObject(env),
                    label: {
                        Text("NavigationLink")
                    })
            }
            Section(footer: Text("""
            使用 UIKit 的 pushViewController
            let vc = UIHostingController(rootView: ContentView().environmentObject(env))
            vc.hidesBottomBarWhenPushed = true
            env.navContoller?.pushViewController(vc, animated: true)
            """)) {
                Button(action: {
                    let vc = UIHostingController(rootView: ContentView().environmentObject(env))
                    vc.hidesBottomBarWhenPushed = true

                    env.navContoller?.pushViewController(vc, animated: true)

                }, label: {
                    Text("pushViewController")
                })
            }
        }
    }
}

struct NoteWriteView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationControllerTestView()
    }
}
