//
//  MainView.swift
//  NavigationBarDemo
//
//  Created by Peter Kurzok on 03.01.22.
//

import SwiftUI

struct MainView: View {
    enum Tab {
        case content, garage
    }

    @State var selectedTab: Tab = .content

    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                ContentView()
                    .tabItem {
                        Label("Content", systemImage: "books.vertical")
                    }
                    .tag(Tab.content)

                GarageView()
                    .tabItem {
                        Label("Garage", systemImage: "car.2")
                    }
                    .tag(Tab.garage)
            }
            .navigationTitle(navigationTitle(for: selectedTab))
        }
    }

    func navigationTitle(for selectedTab: Tab) -> String {
        switch selectedTab {
        case .content:
            return "Content"
        case .garage:
            return "Garage"
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("ContentView")
                .padding()

            NavigationLink(destination: ContentDetailView()) {
                Text("Show ContentDetail")
            }
        }
    }
}

struct ContentDetailView: View {
    var body: some View {
        Text("ContentDetailView")
            .padding()
    }
}

struct GarageView: View {
    var body: some View {
        VStack {
            Text("GarageView")
                .padding()

            NavigationLink(destination: GarageDetailView()) {
                Text("Show GarageDetail")
            }
        }
    }
}

struct GarageDetailView: View {
    var body: some View {
        Text("GarageDetailView")
            .padding()
    }
}
