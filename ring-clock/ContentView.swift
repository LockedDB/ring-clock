//
//  ContentView.swift
//  ring-clock
//
//  Created by Dani Benet on 8/9/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        HStack (alignment: .top) {
            
            VStack {
                Text("Monday")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.gray)
                    .cornerRadius(8)
                
                TaskView(task: modelData.tasks[0])
            }
            .frame(width: 300)
        }
        .padding()
        .background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
