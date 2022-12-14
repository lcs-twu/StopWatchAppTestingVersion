//
//  ContentView.swift
//  StopWatchApp
//
//  Created by Tom Wu on 2022-11-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("00:09.06")
                    .font(Font.system(size:90,weight: .thin))
                    .foregroundColor(.white)
                HStack {
                    CircleButtonView(buttonColor: Color("Dark Grey"),
                                     label: "reset",
                                     labelColor: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColor: Color("Dark Green"),
                                     label: "start",
                                     labelColor: .green)
                    
                }
                List{
                    Group{
                        HStack{
                            Text("Lap 5")
                            Spacer()
                            LabelView()
                        }
                        HStack{
                            Text("Lap 4")
                            Spacer()
                            LabelView()
                        }
                        HStack{
                            Text("Lap 3")
                            Spacer()
                            LabelView()
                        }
                        HStack{
                            Text("Lap 2")
                            Spacer()
                            LabelView()
                        }
                        HStack{
                            Text("Lap 1")
                            Spacer()
                            LabelView()
                        }
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                .frame(height: 300)
                .listStyle(.plain)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(selection: Binding.constant(3)){
            Text("World Clock")
                .tabItem{
                    Image(systemName: "globe")
                    Text("World Clock")
                }
                .tag(1)
            
            Text("Alarm")
                .tabItem{
                    Image(systemName: "alarm.fill")
                    Text("Alarm Clock")
                }
                .tag(2)
            
            ContentView()
                .tabItem{
                    Image(systemName: "stopwatch.fill")
                    Text("Stop Watch")
                }
                .tag(3)
            
            Text("Timer")
                .tabItem{
                    Image(systemName: "timer")
                    Text("Timer")
                }
                .tag(4)
        }
        .accentColor(.orange)
        .preferredColorScheme(.dark)
    }
}
