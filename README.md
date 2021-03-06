# bash-obfucscator
A command line tool for generating bash code that represents an obfuscated version of any text passed as the script's parameter.

## Usage
The script can be invoked by passing the password directly as an argument.
Multible functions can be created by passing multible passwords to the script.
if you pass the `-r`/`--readable` flag as the first parameter, the semicolons will be replaced by newline characters so you can see what is actually happening in the generated code.
The output is directly sent to stdout, from which it can be redirected into a file for easier use.

Please note that this only generates the function itself with a random name. The function needs to be invoked manually by copying its name.

## Example
here is an example of the code generated by the script

```bash
$ echo $(./bash_password_generator.sh --readable 'foo bar' foobar foo bar)
function ZVSfmUgZqCRhQ {
	local myVirLzcAlsVM=""
	myVirLzcAlsVM+="$(printf "\x$(printf %x $((408>>2)))")"
	myVirLzcAlsVM+="$(printf "\x$(printf %x $((444>>2)))")"
	myVirLzcAlsVM+="$(printf "\x$(printf %x $((444>>2)))")"
	myVirLzcAlsVM+="$(printf "\x$(printf %x $((128>>2)))")"
	myVirLzcAlsVM+="$(printf "\x$(printf %x $((392>>2)))")"
	myVirLzcAlsVM+="$(printf "\x$(printf %x $((388>>2)))")"
	myVirLzcAlsVM+="$(printf "\x$(printf %x $((456>>2)))")"
	echo $myVirLzcAlsVM
}
function VRQROhghbplgb {
	local vopnuVDeLBGdu=""
	vopnuVDeLBGdu+="$(printf "\x$(printf %x $((408>>2)))")"
	vopnuVDeLBGdu+="$(printf "\x$(printf %x $((444>>2)))")"
	vopnuVDeLBGdu+="$(printf "\x$(printf %x $((444>>2)))")"
	vopnuVDeLBGdu+="$(printf "\x$(printf %x $((392>>2)))")"
	vopnuVDeLBGdu+="$(printf "\x$(printf %x $((388>>2)))")"
	vopnuVDeLBGdu+="$(printf "\x$(printf %x $((456>>2)))")"
	echo $vopnuVDeLBGdu
}
function dPTjTPTDcrEEr {
	local wrcWxWALDtvfA=""
	wrcWxWALDtvfA+="$(printf "\x$(printf %x $((408>>2)))")"
	wrcWxWALDtvfA+="$(printf "\x$(printf %x $((444>>2)))")"
	wrcWxWALDtvfA+="$(printf "\x$(printf %x $((444>>2)))")"
	echo $wrcWxWALDtvfA
}
function wRGYrfGnfljbx {
	local fmjnuZXzPVMds=""
	fmjnuZXzPVMds+="$(printf "\x$(printf %x $((392>>2)))")"
	fmjnuZXzPVMds+="$(printf "\x$(printf %x $((388>>2)))")"
	fmjnuZXzPVMds+="$(printf "\x$(printf %x $((456>>2)))")"
	echo $fmjnuZXzPVMds
}
```
or (using the compressed form (by not passing the `-r/--readable` flag)):
```bash 
$ echo $(./bash_password_generator.sh 'foo bar' foobar foo bar)
function kOWgeXKJCBqLO { local xTcVFjSfaQSyC=""; xTcVFjSfaQSyC+="$(printf "\x$(printf %x $((408>>2)))")"; xTcVFjSfaQSyC+="$(printf "\x$(printf %x $((444>>2)))")"; xTcVFjSfaQSyC+="$(printf "\x$(printf %x $((444>>2)))")"; xTcVFjSfaQSyC+="$(printf "\x$(printf %x $((128>>2)))")"; xTcVFjSfaQSyC+="$(printf "\x$(printf %x $((392>>2)))")"; xTcVFjSfaQSyC+="$(printf "\x$(printf %x $((388>>2)))")"; xTcVFjSfaQSyC+="$(printf "\x$(printf %x $((456>>2)))")"; echo $xTcVFjSfaQSyC; }
function QvGcvteGNxjdv { local FbCbEWhBHGCeb=""; FbCbEWhBHGCeb+="$(printf "\x$(printf %x $((408>>2)))")"; FbCbEWhBHGCeb+="$(printf "\x$(printf %x $((444>>2)))")"; FbCbEWhBHGCeb+="$(printf "\x$(printf %x $((444>>2)))")"; FbCbEWhBHGCeb+="$(printf "\x$(printf %x $((392>>2)))")"; FbCbEWhBHGCeb+="$(printf "\x$(printf %x $((388>>2)))")"; FbCbEWhBHGCeb+="$(printf "\x$(printf %x $((456>>2)))")"; echo $FbCbEWhBHGCeb; }
function RVxsxwqaSYGmz { local HPVDsJnhOrvzv=""; HPVDsJnhOrvzv+="$(printf "\x$(printf %x $((408>>2)))")"; HPVDsJnhOrvzv+="$(printf "\x$(printf %x $((444>>2)))")"; HPVDsJnhOrvzv+="$(printf "\x$(printf %x $((444>>2)))")"; echo $HPVDsJnhOrvzv; }
function gpsSBzYSAumpr { local TqwGzEKHkfXwq=""; TqwGzEKHkfXwq+="$(printf "\x$(printf %x $((392>>2)))")"; TqwGzEKHkfXwq+="$(printf "\x$(printf %x $((388>>2)))")"; TqwGzEKHkfXwq+="$(printf "\x$(printf %x $((456>>2)))")"; echo $TqwGzEKHkfXwq; }
```

## [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
