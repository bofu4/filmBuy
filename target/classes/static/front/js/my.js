function personalPage() {
    let user = JSON.parse(localStorage.getItem("user"));
    if (!user) {
        alert('Please log in');
    }
	if (user && user.level && user.level === 1) {
		window.location = '/front/accountAdminInfo.html';
	}
	if (user && user.level && user.level === 2) {
		window.location = '/front/accountUserInfo.html';
	}

}