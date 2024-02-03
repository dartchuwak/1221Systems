//
//  ContentView.swift
//  1221Systems
//
//  Created by Evgenii Mikhailov on 31.01.2024.
//

import SwiftUI

struct MainView: View {
    @State var isFavorite = false
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    VStack(alignment: .leading) {
                        ImageView()
                        CountryView()
                        DescriptionView()
                            .padding(.bottom, 32)
                        ReviewsView()
                    }
                }
                AddToCartView()
                    .padding(.bottom, 8)
            }
            .navigationBarTitleDisplayMode(.inline)
            //MARK: Toolbar
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: ImagesConstants.back)
                        .font(Helpers.SFBold14)
                        .foregroundColor(.accentColor)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(alignment: .center, spacing: 8) {
                        Button(action: {}, label: {
                            Image(systemName: TextConstants.list)
                                .font(Helpers.SFSemibold14)
                        })

                        Button(action: {}, label: {
                            Image(systemName: TextConstants.share)
                                .font(Helpers.SFSemibold14)
                        })

                        Button(action: {
                            isFavorite.toggle()
                        }, label: {
                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                                .font(Helpers.SFSemibold14)
                        })

                    }
                    .foregroundColor(.accentColor)
                }
                ToolbarItem(placement: .principal) {
                    Text(TextConstants.coffee)
                        .font(Helpers.SFRoundedSemibold16)
                }
            }
        }
    }
}

#Preview {
    MainView()
}
