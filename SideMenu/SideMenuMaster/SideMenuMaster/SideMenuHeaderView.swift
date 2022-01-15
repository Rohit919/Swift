//
//  SideMenuHeaderView.swift
//  SideMenuMaster
//
//  Created by apple on 09/01/22.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                HStack {
                    Image("dp")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                    .padding(.bottom, 16)
                    
                    Spacer()
                    Button(action: {
                        withAnimation(.spring()) {
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "xmark")
                            .offset(y: -25)
                            .frame(width: 32, height: 32)
                            .foregroundColor(.white)
                            .padding()
                    })
                    
                }
                
                Text("Rohit Singh")
                    .font(.system(size: 24, weight: .semibold, design: .rounded))
                Text("@sirf_rohit")
                    .font(.system(size: 14))
                    .padding(.bottom, 24)
                
                HStack(spacing: 12) {
                    HStack {
                        Text("1,254")
                            .bold()
                        Text("Following")
                    }
                    
                    HStack {
                        Text("607")
                            .bold()
                        Text("Followers")
                    }
                }
                
                Spacer()
            }
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
        
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
