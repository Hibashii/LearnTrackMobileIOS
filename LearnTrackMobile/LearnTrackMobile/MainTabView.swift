//
//  MainTabView.swift
//  learntrack
//
//  Created by Hiba iazza on 07/12/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            
            // MARK: - Sessions
            SessionListView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Sessions")
                }
            
            // MARK: - Formateurs
            FormateurListView()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Formateurs")
                }
            
            // MARK: - Clients
            ClientListView()
                .tabItem {
                    Image(systemName: "building.2")
                    Text("Clients")
                }
            
            // MARK: - Écoles
            EcoleListView()
                .tabItem {
                    Image(systemName: "graduationcap")
                    Text("Écoles")
                }
            
            // MARK: - Profil
            ProfileView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Profil")
                }
        }
    }
}

#Preview {
    MainTabView()
}

