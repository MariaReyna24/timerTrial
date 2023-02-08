//
//  Add Button.swift
//  timerTrial
//
//  Created by Maria Reyna  on 1/31/23.
//

import SwiftUI
import Foundation

struct Add_Button: View {
    var num : Int
    @Binding var game : Math
    @State var isAnswerCorrect = false
    @State private var backgroundColor = Color.black
    var body: some View {
        
        Button {
            game.answerCorreect(answer: num)
            game.generateAnswers()
        } label: {
            Text("\(num)")
                .frame(width: 90,height:50)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(.white)
                .background(backgroundColor)
                .clipShape(Rectangle())
        }
       
      
       
    }
    
    
}

struct Add_Button_Previews: PreviewProvider {
    static var previews: some View {
        Add_Button(num: 100, game: .constant(Math()))
    }
}
