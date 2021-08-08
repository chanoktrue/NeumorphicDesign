//
//  nenumorphicView.swift
//  NeumorphicDesign
//
//  Created by Thongchai Subsaidee on 8/8/2564 BE.
//

import SwiftUI
import Neumorphic

struct nenumorphicView: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        
        ZStack {
         
            Color(red: 224/225, green: 224/225, blue: 224/225, opacity: 0.9)
                .ignoresSafeArea(.all)
            
            VStack(spacing: 30) {
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white.opacity(0.5))
                    .frame(width: 100, height: 100)
                    .softOuterShadow()
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white.opacity(0.5))
                    .frame(width: 100, height: 100)
                    .softInnerShadow(RoundedRectangle(cornerRadius: 20))
                
                HStack(spacing: 30) {
                    Circle()
                        .fill(Color.Neumorphic.main)
                        .frame(width: 120, height: 120)
                        .softOuterShadow()
                    
                    Circle().fill(Color.Neumorphic.main)
                        .frame(width: 120, height: 120)
                        .softInnerShadow(Circle())
                }
                
                Button(action: {}) {
                    Text("Soft Button").fontWeight(.bold)
                }
                .softButtonStyle(RoundedRectangle(cornerRadius: 20))

                Toggle("Toggle", isOn: $toggleIsOn)
                  .softSwitchToggleStyle(tint: .green, labelsHidden: true)
                
            }
            
        }
    }
}

struct nenumorphicView_Previews: PreviewProvider {
    static var previews: some View {
        nenumorphicView()
    }
}
