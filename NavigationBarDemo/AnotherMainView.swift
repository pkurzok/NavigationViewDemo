//
//  AnotherMainView.swift
//  NavigationBarDemo
//
//  Created by Peter Kurzok on 03.01.22.
//

import SwiftUI

struct AnotherMainView: View {
    var body: some View {
        TabView {
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            
            MessageView()
                .tabItem {
                    Label("Message", systemImage: "message")
                }
        }
    }
}

struct AnotherMainView_Previews: PreviewProvider {
    static var previews: some View {
        AnotherMainView()
    }
}

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Profile View")
                    .padding()
                
                NavigationLink(destination: ProfileDetailView()) {
                    Text("Profile Detail View")
                }
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileDetailView: View {
    var body: some View {
        Text("Profile Detail View")
    }
}

struct MessageView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Message View")
                    .padding()
                
                NavigationLink(destination: MessageDetailView()) {
                    Text("Message Detail View")
                }
            }
            .navigationTitle("Message")
        }
    }
}

struct MessageDetailView: View {
    var body: some View {
        Text("Message Detail View")
    }
}
