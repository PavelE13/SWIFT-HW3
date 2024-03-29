import Foundation

final class NetworkService {

	private let session = URLSession.shared

	static var token = "Wbtup2Hm4r0DXIXuidpS"
	static var userID = "51853272"
	
	func getFriends(completion: @escaping ([Group]) -> Void)) 
	
        guard let url = URL(string: "https://dev.vk.com/method/friends.get?phields=photo_50&acces_token=\(NetworkService.token)&v=5.131")
			} else {
                return
            }
				
		session.dataTask(with: url) { (data, _, networkError) in
			guard let data = data else {
                return
            }
            do {
                let friends = try JSONDecoder().decode(FriendsModel.self , from: data)
                completion(friends.response.items)
				print(friends)
                } catch {
                    print (error)
                }
			}.resume()
		
	func getPhotos(completion: @escaping ([Group]) -> Void)) 
			
        guard let url = URL(string: "https://dev.vk.com/method/photos.get?phields=photo_50&acces_token=\(NetworkService.token)&v=5.131")
			} else {
                return
            }
		session.dataTask(with: url) { (data, _, networkError) in
			guard let data = data else {
                return
            }
            do {
                let photo = try JSONDecoder().decode(PhotosModel.self , from: data)
                completion(photos.response.items)
				print(photos)
                } catch {
                    print (error)
                }
			}.resume()
		
	func getGroups(completion: @escaping ([Group]) -> Void) 
			
		guard let url = URL(string: "{https://dev.vk.com/method/groups.get?phields=photo_50&acces_token=\(NetworkService.token)&fields=description&v=5.131")
			} else {
                return
            }
		session.dataTask(with: url) { (data, _, networkError) in
			guard let data = data else {
                return
            }
            do {
                let groups = try JSONDecoder().decode(GroupsModel.self , from: data)
                completion(photos.response.items)   
				print(groups)
                } catch {
                    print (error)
                }
        }.resume()
}
