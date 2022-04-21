//
//  NewsCell.swift
//  newsApİTutorial
//
//  Created by Selin Çağlar on 21.04.2022.
//

import SwiftUI
import Kingfisher
struct NewsCell: View {
    let article: Article
    init (article: Article){
        self.article = article
    }
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        VStack{
            HStack{
                KFImage(URL(string: article.urlToImage ?? ""))
                    .resizable()
                    .clipShape(Circle())
                    .padding()
                    .frame(width: height*0.13, height: height*0.13)
                    .shadow(color: .black, radius: 5, x: 1, y: 1)
                Spacer(minLength: 0)
                Text(article.title ?? "No Title")
                    .padding()
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .foregroundColor(.gray)
                    .minimumScaleFactor(0.3)
                    .frame(height: height*0.15)
                
                    .foregroundColor(.gray)
            }
            .frame(width: width*0.9, height: height*0.16)
            Divider()

        }
    }
}
