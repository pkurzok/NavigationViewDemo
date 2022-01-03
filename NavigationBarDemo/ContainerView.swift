//
//  ContainerView.swift
//  NavigationBarDemo
//
//  Created by Peter Kurzok on 03.01.22.
//

import SwiftUI

struct ContainerView: View {
    @State private var presentMainView: Bool = false
    @State private var presentAnotherMainView: Bool = false

    var body: some View {
        VStack {
            Button("NavigationView -> TabView", action: { presentMainView.toggle() })
                .padding()

            Button("TabView -> NavigationViews", action: { presentAnotherMainView.toggle() })
                .padding()
        }
        .sheet(isPresented: $presentMainView) {
            MainView()
        }
        .sheet(isPresented: $presentAnotherMainView) {
            AnotherMainView()
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
