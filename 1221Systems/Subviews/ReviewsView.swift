//
//  ReviewsView.swift
//  1221Systems
//
//  Created by Evgenii Mikhailov on 01.02.2024.
//

import SwiftUI

struct ReviewsView: View {
    @State var reviewsCount = 5
    var body: some View {
        VStack {
            HStack {
                Text(TextConstants.reviews)
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                Spacer()
                Text("\(TextConstants.allReviews) \(reviewsCount)")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.accentColor)
            }
            .padding(.horizontal, 16)
            .font(.system(size: 18, weight: .bold))

            ScrollView(.horizontal) {
                HStack {
                    ReviewCell()
                    ReviewCell()
                    ReviewCell()
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
            }
        }
    }
}

#Preview {
    ReviewsView()
}
