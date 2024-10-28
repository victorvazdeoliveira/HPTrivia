//
//  Constants.swift
//  HPTrivia
//
//  Created by Victor Vaz de Oliveira on 25/10/24.
//

import Foundation
import SwiftUI

enum Constants {
    static let hpFont = "PartyLetPlain"
}

struct InfoBackgroundImage: View {
    var body: some View {
        Image("parchment")
            .resizable()
            .ignoresSafeArea()
            .background(.brown)
    }
}

extension Button {
    func doneButton() -> some View {
        self
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .buttonStyle(.borderedProminent)
            .tint(.brown)
    }
}
