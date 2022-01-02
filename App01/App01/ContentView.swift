//
//  ContentView.swift
//  App01
//
//  Created by Christopher on 1/1/22.
//

import SwiftUI

struct ContentView: View {
    
    var ourRandomNumber:Int = Int.random(in: 1...4)
    @State var winningNumber: Int = -1
    
    @State var points:Int = 0
    @State var random1: Int = 0
    @State var random2: Int = 0
    @State var random3: Int = 0
    @State var random4: Int = 0
    
    
    var body: some View {
        
    
        
        VStack {
            
            Label("Click 'Generate Numbers', and select a button. The winning button will earn you a point. ", systemImage: "")
            Text("Score: " + String(points))
                .padding()
            
            HStack {
                VStack {
                    Button(action: checkButtonNumber1) {
                        Text(String(random1))
                    }
                    Button(action:checkButtonNumber2) {
                        Text(String(random2))
                    }
                }
                VStack {
                    Button(action: checkButtonNumber3) {
                        Text(String(random3))
                    }
                    Button(action: checkButtonNumber4) {
                        Text(String(random4))
                    }
                }
            }
            Button(action: GenerateNumbers) {
                Text("Generate Numbers")
            }
        }.frame(width: 300, height: 300, alignment: Alignment.center
        )
    
       
    }
    
    func checkButtonNumber1(){
        
        if winningNumber == random1 {
            
            points = points + 1
            winningNumber = -1
 
        }else{
            
            winningNumber = -1
        }
       
    }
    
    func checkButtonNumber2(){
        
        if winningNumber == random2 {
            
            points = points + 1
            winningNumber = -1
 
        }else{
            
            winningNumber = -1
        }
       
    }
    
    func checkButtonNumber3(){
        
        if winningNumber == random3 {
            
            points = points + 1
            winningNumber = -1
 
        }else{
            
            winningNumber = -1
        }
       
    }
    
    func checkButtonNumber4(){
        
        if winningNumber == random4 {
            
            points = points + 1
            winningNumber = -1
 
        }else{
            
            winningNumber = -1
        }
       
    }
    
    func addOne(){
        
        points = points + 1
        
    }
    
    func GenerateNumbers(){
        
        random1 = Int.random(in: 1...4)
        random2 = Int.random(in: 1...4)
        random3 = Int.random(in: 1...4)
        random4 = Int.random(in: 1...4)
        winningNumber = Int.random(in: 1...4)
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
   
    
    static var previews: some View {
        ContentView()
            .padding()
    
            
    }
}
