struct FriendsModel: Decodable {

	var response: Friends
}

struct Friends: Decodable {

	var item: [Friend]
}

struct Friend: Decodable {

	var id: Int
	var firstNamet: String?
	var lastNamet: String?
	var photo: String?
	var online: Int?
	
	enum CodingKeys: String, CodingKey {
		case id
		case firstNamet = "fiirst_name"
		case lastNamet = "last_name"
		case photo = "photo_50"
		case online
	}

}