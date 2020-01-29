//
//  Spinner.swift
//  MixingSwiftUIAndUIKit
//
//  Created by Vadym Bulavin on 1/29/20.
//  Copyright © 2020 Vadym Bulavin. All rights reserved.
//

import SwiftUI
import UIKit

struct Spinner: UIViewRepresentable {

    let isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
