//
//  ContentView.swift
//  swiftui-in-uikit-test
//
//  Created by Innei on 2021/2/7.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var env: Env
    var body: some View {
        Button(action: {
            env.navContoller?.popToRootViewController(animated: true)
        }, label: {
            Text("popToRootViewController")
        })
    }
}

struct ListView: View {
    var body: some View {
        List {
            ForEach(0 ..< 10, id: \.self) { i in
                Text("\(i)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
