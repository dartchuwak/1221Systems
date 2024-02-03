//
//  ReviewCell.swift
//  1221Systems
//
//  Created by Evgenii Mikhailov on 31.01.2024.
//

import SwiftUI

struct ReviewCell: View {
    var body: some View {
        HStack {
            Spacer().frame(width: 8)
            VStack(alignment: .leading,spacing: 4) {
                Text("Ольга")
                    .font(.system(size: 14, weight: .bold))
                Text("8 января 2024")
                    .font(.system(size: 14))
                HStack(spacing:0) {
                    ForEach(0..<5) { image in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }

                Text("Вкусный кофе с прекрасным араматом")
                    .font(.system(size: 14))
            }

            Spacer()
        }
        .frame(width: 220, height: 130)
        .background(Color.white)
        .cornerRadius(25)
        .shadow(radius: 4)

    }
}

#Preview {
    ReviewCell()
}
