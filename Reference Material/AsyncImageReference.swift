//
//  AsyncImageReference.swift
//  Reference Material
//
//  Created by Pat Butler on 2022-08-08.
//

/// This is just an example of how to use AsyncImage that became available in ios 15 I think. All of the concurrency stuff appears to be abstracted away from the developer, but they do need to understand where this might not be the best solution to a problem.
///
///  This example is using Picsum API. The image size in pixels is the value that appears after the first /
///
/// This Async method actually caches the image behind the scenes with a regular shared UISession cache if I am correct. there is another way to init this method that includes an AsyncImagePhase that alloows for more granular control of the flow of the method that includes an enum with 3 cases, including an error, image and an empty phase (no image)
///


import SwiftUI

struct AsyncImageReference: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        AsyncImage(url: url, content: { returnedImage in
            returnedImage
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(20)
        }, placeholder: {
            ProgressView()
        })
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageReference()
    }
}
