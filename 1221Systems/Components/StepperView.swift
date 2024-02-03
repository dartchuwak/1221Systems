//
//  StepperView.swift
//  1221Systems
//
//  Created by Evgenii Mikhailov on 01.02.2024.
//

import SwiftUI

enum Selection:String, CaseIterable {
    case item = "Шт"
    case kg = "Кг"
}

struct StepperView: View {
    var price: Double
    @Binding var count: Int
    @State var totalPrice: Float = 0.0
    var body: some View {
        HStack {
            Button(action: {
                if count >= 2 {
                    count-=1
                }
            }, label: {
                Image(systemName: "minus")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .opacity( count>1 ? 1 : 0.6)
            })

            Spacer(minLength: 24)

            VStack {
                Text("\(count) шт")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                Text(String(format: "%.2f", price * Double(count)))
                    .font(.system(size: 12, weight: .light, design: .rounded))
                    .foregroundColor(.white)
            }

            Spacer(minLength: 24)

            Button(action: {
                count+=1
            }, label: {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
            })

        }
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
        .background(Color.accentColor)
        .cornerRadius(25)
        .frame(maxWidth: 220, alignment: .center)
    }
}

#Preview {
    StepperView(price: 499.90, count: .constant(1))
}
