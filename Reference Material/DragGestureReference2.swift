//
//  DragGestureReference2.swift
//  Reference Material
//
//  Created by Pat Butler on 2022-08-22.
//

import SwiftUI

struct DragGestureReference2: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(systemName: "chevron.up")
                Text("Sign up")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Image(systemName: "flame.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                Text("This is the description for our app. This is a SWiftUI Reference, free for all to use, thanks to Nick.")
                    .multilineTextAlignment(.center)
                
                Text("CREATE AN ACCOUNT")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.black.cornerRadius(10))
                Spacer()
            }
            
            .background(Color.white)
        }
        .background(Color.green.ignoresSafeArea())
    }
    
}

struct DragGestureReference2_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureReference2()
    }
}
