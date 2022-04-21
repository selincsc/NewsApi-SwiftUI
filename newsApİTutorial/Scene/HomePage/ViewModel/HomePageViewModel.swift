//
//  HomePageViewModel.swift
//  newsApİTutorial
//
//  Created by Selin Çağlar on 21.04.2022.
//

import Foundation
import SwiftUI


class HomePageViewModel:NSObject,ObservableObject{
    @Published var articleList = [Article]()
    func getArticles(url: String){
        Network().fetchData(url: url) { (response: Result<MainModel, Error>) in
            switch response {
            case.success(let success):
                DispatchQueue.main.async {
                    if let article = success.articles{
                        self.articleList = article
                    }
                }
            case.failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
}
