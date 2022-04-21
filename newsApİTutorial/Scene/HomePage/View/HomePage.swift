//
//  ContentView.swift
//  newsApİTutorial
//
//  Created by Selin Çağlar on 21.04.2022.
//

import SwiftUI

struct HomePage: View {
    @StateObject var viewModel = HomePageViewModel()
    var body: some View {
        VStack {
            if viewModel.articleList.isEmpty{
                ProgressView()
            }else{
                ScrollView{
                               VStack{
                                   ForEach(viewModel.articleList, id: \.self){ index in
                                       NewsCell(article: index)
                                   }
                               }
                           }
            }
           
        }.onAppear {
            viewModel.getArticles(url: Constants.baseURL)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
