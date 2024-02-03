//
//  ImageView.swift
//  1221Systems
//
//  Created by Evgenii Mikhailov on 01.02.2024.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        ZStack {
            Image(ImagesConstants.product)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: Helpers.screenWidth)
            VStack {
                HStack {
                    Text(ImagesConstants.discountPrice)
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        .padding(.horizontal)
                    Spacer()
                }
                Spacer()
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                    Image(systemName: ImagesConstants.starFill)
                        .foregroundColor(.yellow)
                    Text("4.1")
                        .font(.system(size: 14, weight: .bold))
                    Text("|")
                        .foregroundColor(.gray)
                    Text("19 отзывов")
                        .foregroundColor(.gray)
                    Spacer()
                    ZStack {
                        Image(systemName: "button.angledbottom.horizontal.left.fill")
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 32, height: 32)
                            .foregroundColor(.red)
                        Text("-5%")
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ImageView()
}
