//
//  ContentView.swift
//  istockapp
//
//  Created by Rafael Santiago Moreno Velasquez on 30/08/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var income: Double = 0.0
    @State private var totalIncome: Double = 0.0
    
    var body: some View {
        TabView {
            VStack {
                Spacer()
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 400)
                
    
                Text("from ")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.top, 110)
                Text("Eisen Campos")
                Text("Santiago Moreno")

                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white.opacity(0.2))
            
            .tabItem{Image( systemName: "dollarsign.circle" ) }
            ScrollView {
                VStack {
                    Image(systemName: "bag").resizable().scaledToFit().frame(maxWidth: 100)
                    
                    Text(" control🔥")
                    Text("Ingrese sus ingresos:")
                    
                    TextField("Ingresos", value: $income, format: .currency(code: "USD"))
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button("Guardar") {
                        totalIncome += income
                        print("Ingresos acumulados: \(totalIncome)")

                    }
                    .padding()
                    Text("Ingresos acumulados: \(totalIncome, specifier: "%.2f")")
                                
                }
            }.tabItem { Image(systemName: "bag") }
            VStack {
                Text("You also have all the SF Symbols available!")
                Text("Here's some examples 😇")
                Image(systemName: "person.3.fill")
                Image(systemName: "app.badge.fill")
                Image(systemName: "mappin.and.ellipse")
                Image(systemName: "paperplane.fill")
                Image(systemName: "bolt.fill")
            }.tabItem { Image( systemName: "chart.bar" ) }
            NavigationView {
                VStack {
                    Text("This is a navigation view ⛵️")
                    Text("You can have links to other pages!")
                    NavigationLink(destination: Text("Page 1!") ) {
                        Text("Click here for page 1")
                    }
                    NavigationLink(destination: Text("Page 2!") ) {
                        Text("Click here for page 2")
                    }
                }
            }.tabItem { Image( systemName: "briefcase" ) }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
