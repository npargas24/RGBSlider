//
//  ContentView.swift
//  RGBSlider
//
//  Created by Natalie Pargas on 10/17/24.
//
import SwiftUI

struct ContentView: View {
    
    @State public var sliderRed = 0.0
    @State public var sliderBlue = 0.0
    @State public var sliderGreen = 0.0
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            
            Text("RGB")
                .font(.title)
                .padding(50)
            
            VStack {
                Text("Red")
                Text(
                    String(format: "%.2f", sliderRed)
                )
                Slider(
                    value: $sliderRed,
                    in:0...1,
                    onEditingChanged: { editing in
                        isEditing = true
                    }
                ) 
                .accentColor(.red)
                Text("Blue")
                Text(
                    String(format: "%.2f", sliderBlue)
                )
                Slider(
                    value: $sliderBlue,
                    in:0...1,
                    onEditingChanged: { editing in
                        isEditing = true
                    }
                ) 
                .accentColor(.blue)
                Text("Green")
                Text(
                    String(format: "%.2f", sliderGreen)
                )
                Slider(
                    value: $sliderGreen,
                    in:0...1,
                    onEditingChanged: { editing in
                        isEditing = true
                    }
                ) 
                .accentColor(.green)
            }
            
            VStack {
                if isEditing == true {
                     RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                         .fill(Color(red: sliderRed, green: sliderGreen, blue: sliderBlue))
                         .frame(width: 300, height:150)
                 }
                else{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color(red: 0.0, green: 0.0, blue: 0.0))
                        .frame(width: 300, height:150)
                }
            
            }
        }
    }
}

#Preview {
    ContentView()
}
