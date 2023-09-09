//
//  TaskView.swift
//  ring-clock
//
//  Created by Dani Benet on 9/9/23.
//

import SwiftUI
import Foundation

struct TaskView: View {
    var task: Task
    
    @State private var isOn = false
    
    internal let CARD_HEIGHT: CGFloat = 58
    
    var body: some View {
        
        VStack {
            Toggle(isOn: self.$isOn) {
                Text(task.label)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .lineLimit(1)
            }
        }
        .padding(8)
        .frame(
            maxWidth: .infinity,
            maxHeight: CARD_HEIGHT,
            alignment: .topLeading
        )
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .inset(by: 0.5)
                .stroke(Color.accentColor, lineWidth: 1)
                .shadow(
                    color: .black.opacity(0.10),
                    radius: 2,
                    x: -1,
                    y: 1
                )
        )
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        VStack (alignment: .leading) {
            TaskView(task: ModelData().tasks[0])
                .padding()
                .frame(width: 280)
            TaskView(task: ModelData().tasks[1])
                .padding()
                .frame(width: 280)

            TaskView(task: ModelData().tasks[2])
                .padding()
                .frame(width: 180)

        }
        .background(.white)
    }
}
