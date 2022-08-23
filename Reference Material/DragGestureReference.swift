//
//  DragGestureReference.swift
//  Reference Material
//
//  Created by Pat Butler on 2022-08-22.
//

import SwiftUI

struct DragGestureReference: View {
    
    @State var offSet: CGSize = .zero

    var body: some View {
        ZStack {
            VStack {
                Text("\(offSet.width)")
                Spacer()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 500)
                .offset(offSet)
                .scaleEffect(getScaleAmount())
                .rotationEffect(Angle(degrees: getRotationAmount()))
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            withAnimation(.spring()) {
                                offSet = value.translation
                            }
                        }
                        .onEnded{ value in
                            withAnimation(.spring()) {
                                offSet = .zero
                            }
                            
                        }
            )
        }
    }
    
    func getScaleAmount() -> CGFloat {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = abs(offSet.width)
        let percent = currentAmount / max
        return 1.0 - min(percent, 0.5) * 0.5
    }
    
    func getRotationAmount() -> Double {
        let max = UIScreen.main.bounds.width / 2
        let rotationAmount = offSet.width
        let rotationPercent = rotationAmount / max
        let percentage = Double(rotationPercent)
        let maxAngle: Double = 10
        return percentage * maxAngle
        
        
    }
}

struct DragGestureReference_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureReference()
    }
}
