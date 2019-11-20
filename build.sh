#!/bin/bash
pushd /vagrant/code

rm long_running mnt net pid user uts

go build clone.go
go build long_running.go
go build mnt.go
go build pid.go
go build user.go
go build uts.go
go build net.go

cp clone long_running mnt net pid user uts ~/containerfs/bin/

popd
