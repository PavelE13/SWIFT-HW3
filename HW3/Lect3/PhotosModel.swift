struct PhotosModel: Decodable {

	var response: Photos
}

struct Photos: Decodable {

	var item: [Photo]
}

struct Photo: Decodable {

	var id: Int
	var text: String?
	var sizes: [Sizes]
}

struct Sizes: Decodable {

	var url: String
}