//
//  AddToCartView.swift
//  1221Systems
//
//  Created by Evgenii Mikhailov on 03.02.2024.
//

import SwiftUI

struct AddToCartView: View {
    let price = 499.90
    @State var count = 1
    @State var selection: Selection = .item
    var body: some View {
        VStack {
            Divider().frame(width: Helpers.screenWidth, height: 1)
            Picker("", selection: $selection) {
                ForEach(Selection.allCases, id: \.self) { selection in
                    Text(selection.rawValue.capitalized)
                }
            }
            .pickerStyle(.segmented)
            HStack {
                Text("499")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                + Text("90")
                    .font(.system(size: 14, weight: .medium, design: .rounded))
                    .baselineOffset(15.0)
                + Text("₽")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                Spacer()
                StepperView(price: price, count: $count)
            }
            Button(action: {}, label: {
                Text("В корзину")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .frame(width: Helpers.screenWidth - 30, height: 44)
                    .background(Color.accentColor)
                    .cornerRadius(20)
            })
        }
        .background(Color.white)
        .padding(.horizontal)
    }
}

#Preview {
    AddToCartView()
        .previewLayout(.sizeThatFits)
}
