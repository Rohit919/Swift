//
//  SideMenuView.swift
//  SideMenuMaster
//
//  Created by apple on 09/01/22.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                //Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
                
                //Options
                
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            SideMenuCellView(viewModel: option)
                        })
                }
                
                Spacer()
                
            }.navigationBarHidden(true)
            
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
