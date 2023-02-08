//
//  Pause menu .swift
//  timerTrial
//
//  Created by Maria Reyna  on 2/6/23.
//

import SwiftUI

struct Pause_menu_: View {
    @State var showView = false
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            
            Button{
                showView.toggle()
            }label: {
                Text("Paused")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
            }
            .buttonStyle(.borderedProminent)
            
            .sheet(isPresented: $showView){
                Pause_menu()
            }
        }
    }
}
struct Pause_menu__Previews: PreviewProvider {
    static var previews: some View {
        Pause_menu_()
    }
}
