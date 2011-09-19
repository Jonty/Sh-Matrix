Sh Matrix
=========

Sh Matrix is a microscopic bash script that automatically activates and deactivates Python virtual environments created by the Virtualenv tool, regardless of where they are, or how they're laid out.

Think of it as a less prescriptive version of virtualenvwrapper for people who think that ~1000 line bash scripts should be shot in the face.

Installation
============

Depending on preference, you can either bung the entire script into the end of your ~/.bashrc, or you can source it.

    curl https://raw.github.com/Jonty/Sh-Matrix/master/shmatrix.sh >> ~/.bashrc

Or

    curl https://raw.github.com/Jonty/Sh-Matrix/master/shmatrix.sh -o ~/.shmatrix.sh
    cat "source ~/.shmatrix.sh" >> ~/.bashrc

Obviously you'll have to login again once this is done. But then you knew that, didn't you?

Demo
====

Yeaaaaah, ascii demo time!

    towel:~ jonty$ ssh barbie.com
    Linux barbie 2.6.32-trunk-kirkwood #1 Mon Jan 11 10:57:12 UTC 2010 armv5tel
    jonty@barbie:~$ cd shmatrix
    (shmatrix)jonty@barbie:~/shmatrix$ cd /tmp
    jonty@barbie:/tmp$
