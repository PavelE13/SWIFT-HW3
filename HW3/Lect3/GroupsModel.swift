struct GroupsModel: Decodable {

	var response: Groups
}

struct Groups: Decodable {

	var item: [Group]
}

struct Group: Decodable {

	var description: String?
	}

}