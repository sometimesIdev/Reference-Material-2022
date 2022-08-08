//
//  BackgroundMaterialsReference.swift
//  Reference Material
//
//  Created by Pat Butler on 2022-08-08.
//

/// This file is to show that the material views that were available in UIKit have been brought up to speed with SwiftUI as of iOS 15. I don't think that they have all been converted, but its a start of the most used ones. Apple uses these in their apps so you might as well know that they are availalbe.
///

// These materials are basically used for popovers by Apple.


import SwiftUI

struct BackgroundMaterialsReference: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                Text("Hi")
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.regularMaterial) // this is the material modifier
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Color.blue
        )
    }
}

struct BackgroundMaterialsReference_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsReference()
    }
}
