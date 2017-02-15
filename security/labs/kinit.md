```
#Create user
kadmin.local
   addprinc mglaserna 
   xst -kt mglaserna.keytab mglaserna
   sudo su - mglaserna
   kinit -kt mglaserna.keytab mglaserna
   hadoop fs -ls /
   klist
		[mglaserna@sebnnr1n1 ~]$ klist
		Ticket cache: FILE:/tmp/krb5cc_500
		Default principal: mglaserna@SEBC.COM
		
		Valid starting     Expires            Service principal
		02/15/17 15:07:42  02/16/17 15:07:42  krbtgt/SEBC.COM@SEBC.COM
				renew until 02/22/17 15:07:42
[mglaserna@sebnnr1n1 ~]$

```