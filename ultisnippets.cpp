priority -50

snippet start "legger inn kommentarer øverst i .cpp-filen" b
//
// `!p res = fn`
// 
// Created by Petter Taule on `date +%d.%m.%Y`
// Copyright (c) `date +%Y` Petter Taule. All rights reserved.
//

$1
endsnippet

snippet iostream "iostream" i
#include <iostream>
endsnippet

snippet iomanip "iomanip" i
#include <iomanip>
endsnippet

snippet cmath "cmath" i
#include <cmath>
endsnippet

snippet string "string"
#include <string>
endsnippet

snippet use "using namespace" b
using namespace $1;
endsnippet

snippet main "legger inn main funksjon" b
int main()
{
	$1
}
endsnippet

snippet com "kommentar" b
// $1 (`echo $USER` ` date +%H:%M\ %d.%m.%Y`)
endsnippet

snippet { "klammeparantes" i
{$1}
endsnippet

snippet class "klassedeklarasjon" i
class $1{
	private:
		$2
	public:
		$3
};
endsnippet
