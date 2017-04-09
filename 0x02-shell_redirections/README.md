# Shell, I/O Redirections and filters

Bash scripts demonstrating basic input/output and shell redirection.

## Contents

### 0. Hello World
Prints “Hello, World”, followed by a new line to the standard output.
```
electra@ubuntu:/tmp/h$ ./0-hello_world 
Hello, World
electra@ubuntu:/tmp/h$ ./0-hello_world | cat -e
Hello, World$
electra@ubuntu:/tmp/h$ 
```

### 1. Confused smiley 
Displays a confused smiley `"(Ôo)'`.
```
electra@ubuntu:/tmp/h$ ./1-confused_smiley 
"(Ôo)'
electra@ubuntu:/tmp/h$ 
```

### 2. Let's display a file
Displays the content of the `/etc/passwd` file.  

file: `2-hellofile`

### 3. What about 2?
Displays the content of `/etc/passwd` and `/etc/hosts`  

file: `3-twofiles`

### 4. Last lines of a file
Displays the last 10 lines of `/etc/passwd`  

file: `4-lastlines`

### 5. I'd prefer the first ones actually
Displays the first 10 lines of `/etc/passwd`

file: `5-firstlines`

### 6. Line #2
Displays the third line of the file `iacta` in the working directory.
```
electra@ubuntu:/tmp/h$ cat iacta 
Alea iacta est

Alea iacta est ("The die is cast") is a Latin phrase attributed by Suetonius
(as iacta alea est) to Julius Caesar on January 10, 49 BC
as he led his army across the Rubicon river in Northern Italy. With this step,
he entered Italy at the head of his army in defiance of the Senate and began
his long civil war against Pompey and the Optimates. The phrase has been
adopted in Italian (Il dado è tratto), Romanian (Zarurile au fost aruncate),
Spanish (La suerte está echada), French (Les dés sont jetés), Portuguese (A
sorte está lançada), Dutch (De teerling is geworpen),
German (Der Würfel ist gefallen), Hungarian (A kocka el van vetve) and many other languages to
indicate that events have passed a point of no return.

Read more: https://en.wikipedia.org/wiki/Alea_iacta_est
electra@ubuntu:/tmp/h$ ./6-third_line 
Alea iacta est ("The die is cast") is a Latin phrase attributed by Suetonius
electra@ubuntu:/tmp/h$ 
```

### 7. Save current state of directory
Writes a script that writes into the file `ls_cwd_content` the result of the command `ls -la`. If the file `ls_cwd_content` already exists, it should be overwritten. If the file `ls_cwd_content` does not exist, creates it.

file: `8-cwd_state` (don't ask me why it is 8 instead of 7, project requirements)

### 8. It is a good file that cuts iron without making a noise
Creates a file named exactly `\*\\'"Holberton School"\'\\*$\?\*\*\*\*\*:)` containing the text `Holberton School` and ending by a new line.
```
electra@production-503e7013:~/shell$ ls && ./7-file && ls -l && cat -e \\*
0-mac_and_cheese 7-file 7-file~ Makefile
total 20
-rwxrw-r-- 1 electra electra 79 Jan 20 06:24 0-mac_and_cheese
-rwxrw-r-- 1 electra electra 90 Jan 20 06:40 7-file
-rwxrw-r-- 1 electra electra 69 Jan 20 06:37 7-file~
-rw-rw-r-- 1 electra electra 14 Jan 20 06:38 Makefile
-rw-rw-r-- 1 electra electra 17 Jan 20 06:40 \*\\'"Holberton School"\'\\*$\?\*\*\*\*\*:)
Holberton School$
electra@production-503e7013:~/shell$
```

### 9. Duplicate last line 
Duplicates the last line of the file `iacta` in the working directory

file: `9-duplicate_last_line`

### 10. No more javascript
Deletes all the regular files (not the directories) with a .js extension that are present in the current directory and all its subfolders.

file: `10-no_more_js`

### 11. Don't just count your directories, make your directories count 
Counts the number of directories and sub-directories in the current directory.
- The current and parent directories are taken into account
- Hidden directories are counted

```
electra@production-503e7013:~/shell/fun_with_the_shell$ ls -lRa
.:
total 32
drwxrwxr-x 3 electra electra 4096 Jan 20 03:53 .
drwxrwxr-x 3 electra electra 4096 Jan 20 02:58 ..
-rwxr--r-- 1 electra electra 43 Jan 20 02:59 0-commas
-rwxr--r-- 1 electra electra 47 Jan 20 02:50 1-empty_casks
-rwxrw-r-- 1 electra electra 68 Jan 20 03:35 2-gifs
-rwxrw-r-- 1 electra electra 47 Jan 20 03:53 3-directories
-rw-rw-r-- 1 electra electra 14 Jan 20 03:35 Makefile
drwxrwxr-x 4 electra electra 4096 Jan 20 03:42 test_dir

./test_dir:
total 16
drwxrwxr-x 4 electra electra 4096 Jan 20 03:42 .
drwxrwxr-x 3 electra electra 4096 Jan 20 03:53 ..
-rw-rw-r-- 1 electra electra 0 Jan 20 03:40 .horrible_selfie.gif
-rw-rw-r-- 1 electra electra 0 Jan 20 03:23 README.md
-rw-rw-r-- 1 electra electra 0 Jan 20 03:17 docker.gif
-rw-rw-r-- 1 electra electra 0 Jan 20 03:17 file.sh
drwxrwxr-x 2 electra electra 4096 Jan 20 03:23 photos
drwxrwxr-x 2 electra electra 4096 Jan 20 03:23 rep.gif

./test_dir/photos:
total 8
drwxrwxr-x 2 electra electra 4096 Jan 20 03:23 .
drwxrwxr-x 4 electra electra 4096 Jan 20 03:42 ..
-rw-rw-r-- 1 electra electra 0 Jan 20 03:23 cat.gif
-rw-rw-r-- 1 electra electra 0 Jan 20 03:22 index.html
-rw-rw-r-- 1 electra electra 0 Jan 20 03:23 main.gif
-rw-rw-r-- 1 electra electra 0 Jan 20 03:23 rudy_rigot.gif

./test_dir/rep.gif:
total 8
drwxrwxr-x 2 electra electra 4096 Jan 20 03:23 .
drwxrwxr-x 4 electra electra 4096 Jan 20 03:42 ..
electra@production-503e7013:~/shell/fun_with_the_shell$ ./11-directories
3
electra@production-503e7013:~/shell/fun_with_the_shell$
```

### 12. What’s new
Displays the 10 newest files in the current directory.
- One file per line
- Sorted from the newest to the oldest
```
electra@ubuntu:/tmp$ ls -l
total 7
-rwxr-xr-x 1 501 dialout  32 Sep 27 23:51 0-hello_world
-rwxr-xr-x 1 501 dialout  46 Sep 28 11:09 10-no_more_js
-rwxr-xr-x 1 501 dialout  43 Sep 28 11:19 11-directories
-rwxr-xr-x 1 501 dialout  30 Sep 29 13:43 12-newest_files
-rwxr-xr-x 1 501 dialout  28 Sep 27 23:54 1-confused_smiley
-rwxr-xr-x 1 501 dialout  28 Sep 27 23:58 2-hellofile
-rwxr-xr-x 1 501 dialout  39 Sep 27 23:58 3-twofiles
-rwxr-xr-x 1 501 dialout  33 Sep 27 23:59 4-lastlines
-rwxr-xr-x 1 501 dialout  33 Sep 28 00:00 5-firstlines
-rwxr-xr-x 1 501 dialout  28 Sep 28 00:25 6-third_line
-rwxr-xr-x 1 501 dialout 110 Sep 28 00:34 7-file
-rwxr-xr-x 1 501 dialout  36 Sep 28 00:34 8-cwd_state
-rwxr-xr-x 1 501 dialout  35 Sep 28 00:35 9-duplicate_last_line
-rw-r--r-- 1 501 dialout  19 Sep 27 23:51 README.md
electra@ubuntu:/tmp$ ./12-newest_files 
12-newest_files
11-directories
10-no_more_js
9-duplicate_last_line
7-file
8-cwd_state
6-third_line
5-firstlines
4-lastlines
3-twofiles
electra@ubuntu:/tmp$
``` 

### 13. Being unique is better than being perfect 
Takes a list of words as input and prints only words that appear exactly once.

- Input format: One line, one word
- Output format: One line, one word
- Words should be sorted

```
electra@ubuntu:/tmp/0x02$ cat list 
C#
C
Javascript
Perl
PHP
PHP
ASP
R
Go
C#
C++
R
Perl
Javascript
Javascript
Python
Javascript
Javascript
Javascript
Java
Java
Python
Javascript
Javascript
Javascript
ASP
electra@ubuntu:/tmp/0x02$ cat list | ./13-unique 
C
C++
Go
electra@ubuntu:/tmp/0x02$ 
```

### 14. It must be in that file 
Displays lines containing the pattern "root" from the file `/etc/passwd`
```
$ ./14-findthatword
root:*:0:0:System Administrator:/var/root:/bin/sh
daemon:*:1:1:System Services:/var/root:/usr/bin/false
_cvmsroot:*:212:212:CVMS Root:/var/empty:/usr/bin/false
$
```

### 15. Count that word
Displays the number of lines that contain the pattern "bin" in the file `/etc/passwd`

file: `15-countthatword`

### 16. What's next?
Displays lines containing the pattern "root" and 3 lines after them in the file `/etc/passwd.`

file: `16-whatsnext`

### 17. I hate bins
Displays all the lines in the file `/etc/passwd` that do not contain the pattern "bin".

file: `17-hidethisword`

### 18. Letters only please
Displays all lines of the file `/etc/ssh/sshd_config` starting with a letter.
- include capital letters as well

```
$ ./18-letteronly
SyslogFacility AUTHPRIV
AuthorizedKeysFile  .ssh/authorized_keys
UsePrivilegeSeparation sandbox # Default for new installations.
AcceptEnv LANG LC_*
Subsystem   sftp    /usr/libexec/sftp-server
$
```

### 19. A to Z
Replaces all characters `A` and `c` from input to `Z` and `e` respectively.

file: `19-AZ` 

### 20. Without C, you would live in hiago
Removes all letters c and C from input.

file: `20-hiago`

### 21. esreveR
Reverses the input.

file: '21-reverse'

### 22. DJ Cut Killer
Displays all user and their home directories, sorted by users, based on the `/etc/passwd` file.

file: `22-users_and_homes`

