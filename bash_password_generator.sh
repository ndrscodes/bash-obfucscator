#!/bin/bash

# Copyright 2021 ndrscodes (Andreas Schmidt)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

shift_size=2
readable_line_prefix="\n"
readable_line_suffix=""
readable_structure_char="\t"
non_readable_structure_char=" "
non_readable_line_suffix=";"

if [[ $1 == "-r" || $1 == "--readable" ]]; then
	line_suffix=$readable_line_suffix
	line_prefix=$readable_line_prefix
        structure_char=$readable_structure_char
	shift
else
	line_suffix=$non_readable_line_suffix
	structure_char=$non_readable_structure_char
	line_prefix=" "
fi

function get_random_name {
	echo $(tr -dc A-Za-z </dev/urandom | head -c 13 ; echo '')
}

function get_keycode {
	printf $((16#$(printf %x "'$1")))
}

for param in "$@"; do
	random_func_name=$(get_random_name)
	random_var_name=$(get_random_name)

	echo -n "function $random_func_name {"
	echo -n "$line_prefix${structure_char}local $random_var_name=\"\"$line_suffix"
	while IFS= read -n1 c; do
		echo -n "$line_prefix$structure_char$random_var_name+=\"\$(printf \"\\\x\$(printf %x \$(($(($(get_keycode "$c")<<$shift_size))>>$shift_size)))\")\"$line_suffix"
	done < <(echo -n $param);
	echo -n "$line_prefix${structure_char}echo \$$random_var_name$line_suffix";
	echo "$line_prefix}\n"
done
