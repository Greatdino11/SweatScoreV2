//
//  LoadingView.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/26/23.
//

import SwiftUI

struct LoadingView: View {
    
    @State private var trimTo: Double = 0.01
    @State private var rotation: Double = 0
    @State private var isActive = false
    
    let circleCount: Int = 6
    let size: CGFloat = 200
    let spacing: CGFloat = 15
    let animationTime: Double = 2
    
    var body: some View {
        
        if isActive {
            ContentView()
        }
        else {
            VStack{
                ZStack {
                    
                    Rectangle()
                        .fill(Color("Secondary"))
                        .ignoresSafeArea()
                    
                    ForEach(0..<5) {i in
                        ZStack {
                            ForEach(0..<circleCount) {j in
                                Circle()
                                    .trim(from: 0, to: trimTo)
                                    .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round))
                                    .foregroundColor(Color("Primary"))
                                    .animation(.easeInOut(duration: animationTime / 2).repeatForever(autoreverses: true), value: trimTo)
                                    .rotationEffect(.degrees(rotation))
                                    .animation(.easeInOut(duration: animationTime).repeatForever(autoreverses: false), value: rotation)
                                    .rotationEffect(.degrees((-72 / Double(circleCount)) * Double(j)))
                                    .frame(width: ((size + (spacing * Double(circleCount))) / Double(circleCount)) * Double(j), height: ((size + (spacing * Double(circleCount))) / Double(circleCount)) * Double(j))
                            }
                        }
                        .rotationEffect(.degrees(72 * Double(i)))
                    }
                    
                }
                .onAppear {
                    trimTo = 0.201
                    rotation = 360
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.8){
                    withAnimation {
                        self.isActive = true
                    }
                    
                }
            }
        }
        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
