//
//  DesriptionView.swift
//  1221Systems
//
//  Created by Evgenii Mikhailov on 01.02.2024.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack {
                Text(TextConstants.productName)
                    .font(.system(size: 32, weight: .bold, design: .rounded))
            }
            VStack(alignment: .leading,spacing: 8) {
                Text(TextConstants.description)
                    .font(.system(size: 18, weight: .bold, design: .rounded))

                Text(TextConstants.descriptionText)
                    .font(.system(size: 14, weight: .regular))
                    .multilineTextAlignment(.leading)
            }
                VStack(alignment: .leading, spacing: 16) {
                    Text("Основные характеристики")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                    FeatureView(title: "Производство", value: "Россия, Краснодарский край")
                    FeatureView(title: "Энегетическая ценность,ккал/100 г", value: "25 ккал,105 кДж")
                    FeatureView(title: "Жиры/100 г", value: "0.1 г")
                    FeatureView(title: "Белки/100 г", value: "1.3 г")
                    FeatureView(title: "Углеводы/100 г", value: "3.3 г")
                    Text("Все характеристики")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                        .foregroundColor(.accentColor)
                }
        }
        .padding(.leading, 16)
        .padding(.trailing, 8)
    }
}

#Preview {
    DescriptionView()
}
