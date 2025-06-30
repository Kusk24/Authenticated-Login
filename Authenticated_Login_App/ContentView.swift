//
//  ContentView.swift
//  Authenticated_Login_App
//
//  Created by Win Yu Maung on 17/05/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 300)
                        .overlay(
                            Triangle()
                                .fill(.green)
                                .rotationEffect(.degrees(20))
                                .frame(width: 100, height: 100)
                                .offset(x: 300, y: -100)
                        )
                        .overlay(
                            Circle()
                                .foregroundColor(.red)
                                .offset(x: 100, y: 155)
                                .frame(width: 150)
                        )
                        .offset(x: -100)
                        .padding(.trailing, -85)
                    Text("Welcome").fontDesign(.monospaced).font(.largeTitle)
                }
            }
            
            Spacer().frame(height:125)
            
            Text("Sign up to ****").font(.title2)
            TextField(
                "Username",
                text: $username
            ).padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding(.horizontal)
            
            Spacer().frame(height:20)

            TextField(
                "Password",
                text: $username
            ).padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom)

            Button("Signup") {
                
            }

        }.frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .topLeading
        )
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        // Define the 3 points of the triangle
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))       // Top middle
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))    // Bottom right
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))    // Bottom left
        path.closeSubpath()

        return path
    }
}

#Preview {
    ContentView()
}
