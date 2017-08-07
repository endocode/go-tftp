# Basic TFTP Server

This is a basic TFTP server, only implementing what is specified in RFC 1350 at this time.

To install, simply `go get github.com/whyrusleeping/go-tftp` and to run `go-tftp` in the directory you wish to serve files from. 
If you want to build statically, execute: `CGO_ENABLED=0 go build -a -ldflags '-s' -o tftpd`

Parameters accepted:
* -dir string: specify a directory to serve files from (default "/home/jorge/go-tftp")
* -host string: specify an IP to listen on (default "127.0.0.1")
* -port string: specify a port to listen on (default "69")


