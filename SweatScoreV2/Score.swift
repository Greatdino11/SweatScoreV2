//
//  Score.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/20/23.
//

import SwiftUI

struct Score: View {
    
    @State var scores = 3.96
    @State var isShowing = false
    @State var whole_num: Int = 0
    @State var decimal: Int = 0
    
    let animation = Animation
        .easeOut(duration: 0.5)
        .delay(0.5)
    
    var body: some View {
        
        ZStack {
            Circle()
                .stroke(lineWidth: 20.0)
                .opacity(0.3)
                .foregroundColor(Color("Tertiary"))
                .frame(width: 250, height: 250)
            
            ZStack{
                Circle()
                    .trim(from: 0, to: isShowing ? Double((self.scores/4)-0.05) : 0)
                    .rotation(Angle(degrees: -90))
                    .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color("Primary"))
                    .frame(width: 250, height: 250)
            }
            .animation(animation, value: isShowing)
            .onAppear{
                isShowing = true
            }
            .onDisappear{
                isShowing = false
            }
            
            HStack {
                RollingText(font: .system(size: 40), weight: .black, value: $whole_num)
                    .font(.custom("AvenirNextLTPro-Bold", size: 40))
                    .foregroundColor(Color("Tertiary"))
                
                Text(".")
                    .font(.custom("AvenirNextLTPro-Bold", size: 40))
                    .foregroundColor(Color("Tertiary"))

                RollingText(font: .system(size: 40), weight: .black, value: $decimal)
                    .foregroundColor(Color("Tertiary"))
                
                Spacer()
                
                Text("/   4.00")
                    .font(.custom("AvenirNextLTPro-Bold", size: 20))
                    .foregroundColor(Color("Primary"))
                    .padding(.top, 20)
                
            }
            .frame(width: 200)
            .onAppear{
                
                decimal = 96
                whole_num = 3
                
            }
            .onDisappear{
                
                decimal = 0
                whole_num = 0
                
            }
            
        }
        .padding(20)
        
    }
}

struct Score_Previews: PreviewProvider {
    static var previews: some View {
        Score()
    }
}
