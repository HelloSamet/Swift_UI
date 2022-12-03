//
//  ContentView.swift
//  Swift_War_Card
//
//  Created by Abdulsamet Göçmen on 3.12.2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var randNum1 = 4
    @State private var randNum2 = 5
    
    @State private var score1 = 0
    @State private var score2 = 0
    var body: some View{
        ZStack{
            
            Image("myBackground1").resizable().edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Image("card" + String(randNum1))
                    Image("card" + String(randNum2))
                }
                Spacer()
                
                Button(action: {
                    self.randNum1 = Int.random(in: 2...14)
                    self.randNum2 = Int.random(in: 2...14)
                    
                    
                    if self.randNum1 > self.randNum2{
                        self.score1 += 1
                    }else if self.randNum1 < self.randNum2{
                        self.score2 += 1
                    }
                            
                    
                }){
                    Image("dealbutton").renderingMode(.original)
                }
                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player ").bold().foregroundColor(.red)
                        Text(String(score1)).padding(.top, 15).foregroundColor(.red)
                    }
                    Spacer()
                    VStack{
                        Text("CPU ").bold().foregroundColor(.red)
                        Text(String(score2)).padding(.top, 15).foregroundColor(.red)
                    }
                    Spacer()
                    
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
