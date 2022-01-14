//
//  ContentView.swift
//  CustomMenuBar
//
//  Created by apple on 11/01/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home: View {
    @State var index = 0
    @State var show = true
    var body: some View {
        ZStack {
            
            // Menu...
            HStack {
                VStack(alignment: .leading, spacing: 12, content: {
                    VStack(alignment: .leading, spacing: 8){
                        Image("avatar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 70, height: 70)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading){
                            Text("Hey")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .padding(.top, 10)
                                .foregroundColor(.white)
                            
                            Text("Rohit Singh")
                                .font(.system(size: 25, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                        }
                    }
                    Button(action: {
                        withAnimation(.spring()){
                            self.index = 0
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25) {
                            Image(systemName: "house.fill")
                                .foregroundColor(self.index == 0 ? Color.black : Color.white)
                            
                            Text("Home")
                                .foregroundColor(self.index == 0 ? Color.black : Color.white)
                            
                        }
                        .font(.system(size: self.index == 0 ? 20 : 18, weight: self.index == 0 ? .bold : .semibold, design: .rounded))
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color.white.opacity(0.6) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        withAnimation(.spring()){
                            self.index = 1
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25) {
                            Image(systemName: "suitcase.cart.fill")
                                .foregroundColor(self.index == 1 ? Color.black : Color.white)
                            
                            Text("Cart")
                                .foregroundColor(self.index == 1 ? Color.black : Color.white)
                            
                        }
                        .font(.system(size: self.index == 1 ? 20 : 18, weight: self.index == 1 ? .bold : .semibold, design: .rounded))
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 1 ? Color.white.opacity(0.6) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        withAnimation(.spring()){
                            self.index = 2
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25) {
                            Image(systemName: "heart.square.fill")
                                .foregroundColor(self.index == 2 ? Color.black : Color.white)
                            
                            Text("Favourites")
                                .foregroundColor(self.index == 2 ? Color.black : Color.white)
                            
                        }
                        .font(.system(size: self.index == 2 ? 20 : 18, weight: self.index == 2 ? .bold : .semibold, design: .rounded))
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 2 ? Color.white.opacity(0.6) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    
                    Button(action: {
                        withAnimation(.spring()){
                            self.index = 3
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25) {
                            Image(systemName: "bell.badge.circle.fill")
                                .foregroundColor(self.index == 3 ? Color.black : Color.white)
                            
                            Text("Notifications")
                                .foregroundColor(self.index == 3 ? Color.black : Color.white)
                            
                        }
                        .font(.system(size: self.index == 3 ? 20 : 18, weight: self.index == 3 ? .bold : .semibold, design: .rounded))
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 3 ? Color.white.opacity(0.6) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        withAnimation(.spring()){
                            self.index = 4
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25) {
                            Image(systemName: "gearshape.circle.fill")
                                .foregroundColor(self.index == 4 ? Color.black : Color.white)
                            
                            Text("Settings")
                                .foregroundColor(self.index == 4 ? Color.black : Color.white)
                            
                        }
                        .font(.system(size: self.index == 4 ? 20 : 18, weight: self.index == 4 ? .bold : .semibold, design: .rounded))
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 4 ? Color.white.opacity(0.6) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        withAnimation(.spring()){
                            self.index = 5
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25) {
                            Image(systemName: "person.crop.circle.badge.questionmark.fill")
                                .foregroundColor(self.index == 5 ? Color.black : Color.white)
                            
                            Text("Help")
                                .foregroundColor(self.index == 5 ? Color.black : Color.white)
                            
                        }
                        .font(.system(size: self.index == 5 ? 20 : 18, weight: self.index == 5 ? .bold : .semibold, design: .rounded))
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 5 ? Color.white.opacity(0.6) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 2.5)
                            .frame(width: 150, height: 5)
                            .foregroundColor(.white.opacity(0.6))
                    }
                    .padding(.vertical, 30)
                    .padding(.horizontal)
                    
                    Button(action: {
                        withAnimation(.spring()){
                            self.index = 6
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25) {
                            Image(systemName: "rectangle.portrait.and.arrow.right.fill")
                                .foregroundColor(self.index == 6 ? Color.black : Color.white)
                            
                            Text("Sign Out")
                                .foregroundColor(self.index == 6 ? Color.black : Color.white)
                            
                        }
                        .font(.system(size: self.index == 6 ? 20 : 18, weight: self.index == 6 ? .bold : .semibold, design: .rounded))
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 6 ? Color.white.opacity(0.6) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    
                    Spacer(minLength: 0)
                })
                    .padding(.top, 25)
                    .padding(.horizontal)
                
                Spacer(minLength: 0)
            }
            .padding(.vertical, 20)
            
            
            // MainView...
            VStack(spacing: 0) {
                HStack(spacing: 15) {
                    
                    Button(action: {
                        
                        self.show.toggle()
                        
                    }, label: {
                        Image(systemName: self.show ? "xmark" : "line.horizontal.3")
                            .resizable()
                            .frame(width: self.show ? 18 : 22, height: 18)
                            .foregroundColor(Color.black.opacity(0.4))
                        
                    })
                    
                    Text(self.index == 0 ? "Home" : self.index == 1 ? "Cart" : self.index == 2 ? "Favourites" : self.index == 3 ? "Notifications" : self.index == 4 ? "Settings" : "Help")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Spacer(minLength: 0)
                }
                .padding(.top, 44)
                .padding(.horizontal)
                
                GeometryReader{_ in
                    VStack {
                        if self.index == 0  {
                            MainPage()
                        } else if self.index == 1  {
                            Cart()
                        } else if self.index == 2  {
                            Favourites()
                        } else if self.index == 3  {
                            Notifications()
                        } else if self.index == 4  {
                            Settings()
                        }else  {
                            Help()
                        }
                    }
                }
                Spacer(minLength: 0)
            }
            .background(.white)
            //Appying Corner Radius ...
            .cornerRadius(self.show ? 30 : 0)
            //Shrinking And Moving View Right Slide When Menu Button is Clicked...
            .scaleEffect(self.show ? 0.9 : 1)
            .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0, y: self.show ? 15 : 0)
            // Rotating Slightly
            .rotationEffect(.init(degrees: self.show ? -5 : 0))
            
            
            
            
        }
        .background(Color.blue.edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

//MainView....
struct MainPage : View {
    var body: some View{
        
        VStack {
            ZStack(alignment: .bottomTrailing) {
                VStack(spacing: 12) {
                    Image("avatar")
                        .resizable()
                        .frame(height: 210)
                    
                    Text("Bell Local Helmet")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    
                    Text("Orange Cycling Helmet")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .foregroundColor(.gray.opacity(0.8))
                        .padding(.bottom)
                }
                
                .background(Color(red: 206/255, green: 253/255, blue: 235/255))
                .cornerRadius(14)
                .padding()
                .padding()
                
                // Cart BUtton
                Button(action: {
                    
                }, label: {
                    Spacer()
                    Image(systemName: "suitcase.cart.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60)
                        .background(Color.red.opacity(0.6))
                        .cornerRadius(14)
                        .padding()
                    
                })
                
            }
            
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 15) {
                    HStack(spacing: 15) {
                        Image("avatar")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(14)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Bell Local Helmet")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundColor(.black.opacity(0.8))
                            Text("Orange Cycling Helmet")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer(minLength: 0)
                    }
                    HStack(spacing: 15) {
                        Image("avatar")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(14)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Bell Local Helmet")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundColor(.black.opacity(0.8))
                            Text("Orange Cycling Helmet")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer(minLength: 0)
                    }
                    
                    HStack(spacing: 15) {
                        Image("avatar")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(14)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Bell Local Helmet")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundColor(.black.opacity(0.8))
                            Text("Orange Cycling Helmet")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer(minLength: 0)
                    }
                    
                    HStack(spacing: 15) {
                        Image("avatar")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(14)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Bell Local Helmet")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundColor(.black.opacity(0.8))
                            Text("Orange Cycling Helmet")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer(minLength: 0)
                    }
                    
                    HStack(spacing: 15) {
                        Image("avatar")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(14)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Bell Local Helmet")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundColor(.black.opacity(0.8))
                            Text("Orange Cycling Helmet")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer(minLength: 0)
                    }
                    
                    HStack(spacing: 15) {
                        Image("avatar")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(14)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Bell Local Helmet")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundColor(.black.opacity(0.8))
                            Text("Orange Cycling Helmet")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer(minLength: 0)
                    }
                    
                    HStack(spacing: 15) {
                        Image("avatar")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(14)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Bell Local Helmet")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundColor(.black.opacity(0.8))
                            Text("Orange Cycling Helmet")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer(minLength: 0)
                    }
                }
                .padding()
            }
            
        }
        
    }
}

//Some Other View ....

struct Cart : View {
    var body: some View {
        VStack {
            Text("Cart")
        }
    }
}

struct Favourites : View {
    var body: some View {
        VStack {
            Text("Favourites")
        }
    }
}


struct Notifications : View {
    var body: some View {
        VStack {
            Text("Notifications")
        }
    }
}


struct Help : View {
    var body: some View {
        VStack {
            Text("Help")
        }
    }
}

struct Settings : View {
    var body: some View {
        VStack {
            Text("Settings")
        }
    }
}



