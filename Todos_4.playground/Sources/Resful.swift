//import Foundation
//
//protocol RestfulService {
//     //print all todos
//     var items = NSMutableURLRequest(URL: NSURL(string:))
//    
//    items.HTTPMethod: String
//     items.addValue("application/json", forHTTPHeaderField: "Content-Type")
//    
//     var taskItems = session.dataTaskWithRequest(items){ (data, response, error) -> Void in
//        if error != nil {
//            print(error)
//        } else {
//            guard (response as? NSHTTPURLResponse)?.statusCode >= 200, let json = data else {
//                return
//            }
//    
//            var result = NSString(data: json, encoding: NSASCIIStringEncoding)!
//    
//            print(result)
//     }
//     
//     }
//     taskItems.resume()
//     
//
//}