//
//  ContentView.swift
//  Contador
//
//  Created by SOPORTE on 12/11/26.
//

import SwiftUI

struct ContentView: View {
    let nombre = "Mario Parra"
    var body: some View {
        VStack (spacing: 12){
            Image(systemName: "book.fill")
                .font(.system(size: 50))
                .foregroundStyle(.white)
                .frame(width: 120, height: 120)
                .background(.blue)
                .clipShape(Circle())
            Text("\(nombre)")
                .font(.title)
                .bold()
            Text("Ingeniería en Computación")
                .foregroundStyle(.secondary)
            HStack(spacing: 20){
                Label("Swift", systemImage: "star.fill")
                
                Label("Videojuegos", systemImage: "gamecontroller.fill")
            }.foregroundStyle(.blue)
            Divider()
            VStack( spacing: 10){
                Label {
                    Text("mparra@tec.mx")
                } icon:{
                    Image(systemName: "person.fill")
                        .foregroundStyle(.blue)
                }
                Label{
                    Text("644 454 7959")
                } icon: {
                    Image(systemName: "phone.fill")
                        .foregroundStyle(.blue)
                }
                Label{
                    Text("Hermosillo, Sonora, MX")
                } icon: {
                    Image(systemName: "globe")
                        .foregroundStyle(.blue)
                }
                
            }
            .padding(35)
            .frame( alignment: .center)
            .background(.blue.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text("Me gusta programar y aprender cosas nuevas.\n También me gustan los deportes y las películas")
                .multilineTextAlignment(.center)
                .italic()
                .font(.callout)
                .padding(20)
                .foregroundStyle(.black)
            
            Link("Mi GitHub", destination: URL(string: "https://github.com/mparra37")!).bold()
                .buttonStyle(.bordered)
                .tint(.blue)
                .controlSize(.large)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
