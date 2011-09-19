What is Sh Matrix?
==================

Unfortunately, no one can be told what Sh Matrix is. You have to see it for yourself.

    jonty@towel:~$ cd a_virtualenv/project
    (a_virtualenv)jonty@barbie:~/a_virtual_env/project$ cd ~
    jonty@towel:~$ cd another_virtualenv
    (another_virtualenv)jonty@barbie:~/another_virtualenv$ cd /tmp
    jonty@barbie:/tmp$

Why do my eyes hurt?
====================

Because that was indecipherable line noise. Let's try again.

What is Sh Matrix?
==================

Sh Matrix is a microscopic script that automatically activates and deactivates Python virtual environments, regardless of where virtualenv put them, or how they're laid out.

Think of it as a less prescriptive virtualenvwrapper for people who think that ~1000 line bash scripts should be shot in the face.

Installation
============

Depending on preference, you can either bung the entire script into the end of your ~/.bashrc, or you can source it.

    curl https://raw.github.com/Jonty/Sh-Matrix/master/shmatrix.sh >> ~/.bashrc

Or

    curl https://raw.github.com/Jonty/Sh-Matrix/master/shmatrix.sh -o ~/.shmatrix.sh
    echo -en "\nsource ~/.shmatrix.sh" >> ~/.bashrc

Obviously you'll have to login again once this is done. But then you knew that, didn't you?

P.S.
====
I am so, so, sorry. Blame @infovore for the number of horrible Matrix references.
