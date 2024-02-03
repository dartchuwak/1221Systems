//
//  CountryView.swift
//  1221Systems
//
//  Created by Evgenii Mikhailov on 03.02.2024.
//

import SwiftUI

struct CountryView: View {
    var body: some View {
        VStack {
            HStack {
                Image("flag")
                    .resizable()
                    .frame(width: 28, height: 28)
                Text("Испания, Риоха")
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    CountryView()
}
