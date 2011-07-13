class hosting {
	file { "/etc/some-file":
		content => template("hosting/some-file.erb"),
	} 
}
