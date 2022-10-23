package dal

var passwd = make(map[string]string)
var frequency = make(map[string]int)

func CreateUser(username string, password string) {
	passwd[username] = password
	frequency[username] = 0
}

func CheckUsername(username string) bool {
	_, ok := passwd[username]
	return !ok
}

func CheckPassword(username string, password string) bool {
	if passwd[username] == password {
		return true
	}
	return false
}

func SetFrequency(username string, count int) {
	frequency[username] = count
}

func GetFrequency(username string) int {
	return frequency[username]
}
