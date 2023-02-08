//
//  ContentView.swift
//  timerTrial
//
//  Created by Maria Reyna  on 1/31/23.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State var isAnswerCorrect = false
    var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var game = Math()
    @State var showView = false
    var body: some View {
        NavigationView{
            ZStack{
                VStack(spacing: 15){
                    Text("Score: \(game.score)")
                        .font(.largeTitle)
                    Spacer()
                    buttonsForAnswers(startIndex: 1, endIndex: 2)
                    buttonsForAnswers(startIndex: 0, endIndex: 2)
                    buttonsForAnswers(startIndex: 1, endIndex: 4)
                    buttonsForAnswers(startIndex: 0, endIndex: 4)
                    
                    Text("\(game.firstNum) + \(game.secondNum)")
                        .font(.largeTitle)
                    Spacer()
                }.onAppear {
                    game.generateAnswers()
                }
                
                .onReceive(timer) {time in   // Adds an action to perform when this view detects data emitted by the given publisher.
                    if game.timeRemaining > 0  {   //lets the counter count down so it dosent go past 0 into negative numbers
                        game.timeRemaining -= 1
                    }
                }
                //the display for the top part of the app
                .navigationTitle("Level 1")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Button{
                            showView.toggle()
                        }label: {
                            Text("Pause")
                                .font(.title2)
                                .foregroundColor(.red)
                        }
                        .sheet(isPresented: $showView){
                            Pause_menu()
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing){
                        Text("\(game.timeRemaining)s") //shows the time on the screen
                            .font(.system(size: 30))
                            .foregroundColor(.red)
                    }
                }
                .background((Image("background")
                    .resizable()
                    .frame(width: 393, height: 918)
                ))
                //                if timeRemaining == 0 {
                //                    End_Game_menu()
                //
                //                }
                
            }
            
        }
        
    }
    
    func buttonsForAnswers(startIndex: Int, endIndex: Int) -> some View {
        HStack {
            ForEach(startIndex..<endIndex, id: \.self) { index in
                Button {
                    game.answerCorreect(answer: game.choicearry[index])
                    game.generateAnswers()
                } label: {
                    Add_Button(num: game.choicearry[index], game: $game)
                }
            }
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
