//
//  NeumorphismView.swift
//  NeumorphicDesign
//
//  Created by Thongchai Subsaidee on 8/8/2564 BE.
//

/*
 https://neumorphism.io/#e0e0e0
*/

import SwiftUI

struct NeumorphismView: View {
    
    var body: some View {
        ZStack {
            
            Color(red: 225/255, green: 224/255, blue: 225/255)
                .ignoresSafeArea(.all)
            
            VStack(spacing: 20) {
                
                Circle()
                    .fill(Color(red: 224/255, green: 224/255, blue: 224/255))
                    .frame(width: 120, height: 120)
                    .shadow(color: .white, radius: 13, x: -9, y: -9)
                    .shadow(color: .gray.opacity(0.5), radius: 13, x: 9, y: 9)
                
                
                Circle()
                    .fill(LinearGradient(
                            gradient: Gradient(colors: [
                                Color(red: 202/255, green: 202/255, blue: 202/255),
                                Color(red: 204/255, green: 204/255, blue: 204/255)
                            ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ))
                    .frame(width: 120, height: 120)
                    .shadow(color: .white, radius: 13, x: 9, y: 9)
                    .shadow(color: .gray.opacity(0.5), radius: 13, x: -9, y: -9)
   
                Circle()
                    .fill(Color(red: 224/255, green: 224/255, blue: 224/255))
                    .frame(width: 120, height: 120)
                    .shadow(color: .white, radius: 13, x: 9, y: 9)
                    .shadow(color: .gray.opacity(0.5), radius: 13, x: -9, y: -9)

            
            }

        }
    }
}

struct NeumorphismView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphismView()
    }
}
