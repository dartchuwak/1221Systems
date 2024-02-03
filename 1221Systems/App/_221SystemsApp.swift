//
//  _221SystemsApp.swift
//  1221Systems
//
//  Created by Evgenii Mikhailov on 31.01.2024.
//

import SwiftUI

@main
struct _221SystemsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                MainView()
                    .tabItem {
                        Image(ImagesConstants.sparIcon)
                            .renderingMode(.template)
                            .foregroundColor(.accentColor)
                        Text(TextConstants.main)
                            .foregroundColor(.accentColor)
                    }

                CatalogView()
                    .tabItem {
                        Label(TextConstants.catalog, systemImage: ImagesConstants.catalog)
                            .foregroundColor(.accentColor)
                    }
                CartView()
                    .tabItem {
                        Label(TextConstants.cart, systemImage: ImagesConstants.cart)
                            .foregroundColor(.accentColor)
                    }
                ProfileView()
                    .tabItem {
                        Label(TextConstants.profile, systemImage: ImagesConstants.profile)
                            .foregroundColor(.accentColor)
                    }
            }

        }
    }
}
