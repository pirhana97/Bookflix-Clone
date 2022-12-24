//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Priyanka Ghosh on 16/12/22.
//

import Foundation
import SwiftyJSON
import SDWebImageSwiftUI

struct Constants {
    static let API_KEY = "AIzaSyA2gkaHn3xuVL4PaN93H-gV0X87ps0ls8A"
    static let baseURL = "https://www.googleapis.com/books"
}


struct ConstantForManga{
    static let API_KEY = "5a94ebfbe3msh10d236d79615f19p13369cjsnd06187c69f86"
    static let baseURL = "webtoon.p.rapidapi.com"
}

class APICaller {
    static let shared = APICaller()
    
   /* func getBooks(completion: @escaping (String) -> Void){
        
        guard let url = URL(string: "\(Constants.baseURL)/v1/volumes?q=search+terms&key=\(Constants.API_KEY)") else { return}
    
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {(data, _,error) in
            
            guard let data = data, error == nil else {return}
            
            do{
                
                
                let json = try JSON(data: data)
                let items = json["items"].array!
                
                print(items)
                
            } catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
    }*/
    
    
    
    
    func getManga(completion: @escaping (String) -> Void){
        
        let headers = [
            "X-RapidAPI-Key": "5a94ebfbe3msh10d236d79615f19p13369cjsnd06187c69f86",
            "X-RapidAPI-Host": "webtoon.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://webtoon.p.rapidapi.com/canvas/home?language=en")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            guard let data = data, error == nil else {return}
            
            do{
                
                
                let json = try JSON(data: data)

                
                print(json["message"]["result"]["weeklyHotByGenreList"])
                
            } catch {
                print(error.localizedDescription)
            }
        })

        dataTask.resume()
    }
    
    
    func getMangaBooks() -> Void{
        
        let headers = [
            "X-RapidAPI-Key": "5a94ebfbe3msh10d236d79615f19p13369cjsnd06187c69f86",
            "X-RapidAPI-Host": "webtoon.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://webtoon.p.rapidapi.com/canvas/home?language=en")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            guard let data = data, error == nil else {return}
            
            do{
                
                
                let json = try JSON(data: data)

                
                print(json["message"]["result"]["weeklyHotByGenreList"]["titleList"])
                
                
                
            } catch {
                print(error.localizedDescription)
            }
        })

        dataTask.resume()
        
    }
    
   
    
}
