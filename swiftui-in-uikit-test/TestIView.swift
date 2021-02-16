//
//  TestIView.swift
//  swiftui-in-uikit-test
//
//  Created by Innei on 2021/2/9.
//

import SwiftUI

struct TestIView: View {
    var body: some View {
        TabView {
            NavigationView {
                List(0 ..< 100) { Text("Cell \($0)") }
            }.tabItem { Text("1") }

            NavigationView {
                Text("H")
            }.tabItem { Text("2") }
        }
    }
}

struct TestIView_Previews: PreviewProvider {
    static var previews: some View {
        TestIView()
    }
}
