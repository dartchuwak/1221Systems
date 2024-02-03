//
//  FeatureView.swift
//  1221Systems
//
//  Created by Evgenii Mikhailov on 01.02.2024.
//

import SwiftUI

struct FeatureView: View {
    let title: String
    let value: String
    var body: some View {
        HStack(alignment: .top) {
            Text(title)
                .font(.system(size: 14))
            Text(".............")
                .font(.system(size: 14))
                .foregroundColor(.gray)
            Spacer()
            Text(value)
                .lineLimit(2)
                .multilineTextAlignment(.trailing)
                .font(.system(size: 14))
        }
    }
}

#Preview {
    FeatureView(title: "Производство", value: "Россия, Краснадарский край")
}
