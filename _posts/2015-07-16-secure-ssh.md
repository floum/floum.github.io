---
layout: post
---

# Main source

[ANSSI guide for OpenSSH configuration](http://www.ssi.gouv.fr/uploads/IMG/pdf/NP_OpenSSH_NoteTech.pdf)

# Configuring ssh


{% highlight bash %}

# /etc/ssh/sshd_config

PermitRootLogin no
PermitEmptyPasswords no
MaxAuthTries 2
LoginGraceTime 30
PrintLastLog yes
PermitUserEnvironment no
AllowTcpForwarding no
X11Forwarding no
ForwardX11Trusted no

{% endhighlight %}
