//
//  ContentView.swift
//  HWswift1.6
//
//  Created by Astrid Snäll on 2/4/23.
//


import SwiftUI

struct ContentView: View {
    
    @State private var messageString = " wu "
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(
                    Gradient(colors: [.white, .blue , .red])
                    )
                .ignoresSafeArea()
        }
         
        VStack  {
            
            Text("you have skills")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color("Maroon-BC"))
                .padding()
                .background(Color("Gold-BC"))
                .cornerRadius(15)
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 1)
                .padding()
            
            Spacer()
            
            
                
            
            HStack {
                Button("Awesome") {
                    messageString = "You are awesome"
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button("Awesome") {
                    messageString = "You are awesome"
                }
                .buttonStyle(.borderedProminent)
            }
            .border(.purple, width: 5)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
