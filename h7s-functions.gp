\\ file name: h7s-functions.gp

\\ my user functions for PARI/GP ver.0.900.  
\\ copyright by Hideo Suzuki, hideo7suzuki@gmail.com  Jan. 2025. 

{ checkorders(order) =  
  my(f,cord,t,i); 
if(isprime(order),cord=vector(2);cord[1]=1;cord[2]=order, 
 t=factor(order); 
 cord=vector(matsize(t)[1]+2);cord[1]=1; 
 for(i=1,matsize(t)[1],cord[i+1]=order/t[i,1]); 
 cord[matsize(t)[1]+2]=order); 
return(cord) }

{ checkorders_1st_factor(order) = 
  my(i,t,cord); 
t=factor(order);
if(matsize(t)[1]==1&&t[1,2]==1,cord=vector(2);cord[1]=1;cord[2]=order, 
 cord=vector(matsize(t)[1]+2);cord[1]=1; 
 for(i=1,matsize(t)[1],cord[i+1]=order/t[i,1]); 
 cord[matsize(t)[1]+2]=order); 
return(cord) }

{ count1(dec) = 
  my(i,bb,c); 
if(dec<=0,return(0)); 
bb=digits(dec,2); 
c=0; for(i=1,length(bb),if(bb[i]==1,c++));return(c) }
\\ for check
\\ for(i=0,63,print("count1( ",digits(i,2)," ) = ",count1(i)))

{ dec2radix(dec,base) =
  my(i,digiii,ans);
if(dec==0,
if(base==10,ans="0",
  if(base==2,ans="0b0",
    if(base==16,ans="0x0",ans=concat(concat("radix(",Str(base)),") 0"))));
	if(base==10,return(eval(ans)),return(ans)));
digiii=digits(dec,base);
if(base==10,ans="",
  if(base==2,ans="0b",
    if(base==16,ans="0x",ans=concat(concat("radix(",Str(base)),") "))));
    for(i=1,length(digiii),ans=concat(ans,hexdecchar(digiii[i])));
  if(base==10,return(eval(ans)),return(ans)) }
\\ for check
\\ for(i=2,16,print(dec2radix(0x43,i)))

{ digits2dec(digi,base) = 
  my(dec,i);
dec=0;for(i=1,length(digi),dec*=base;dec+=digi[i]);return(dec) }

{ digits2str(ttvec) = 
   my(iii,ttt); 
ttt="";for(iii=1,length(ttvec),ttt=concat(ttt,Str(hexdecchar(ttvec[iii])))); 
return(ttt) }
\\ for check
\\ testvec=[0,1,2,3,4,5,6,7,8,9,15,14,13,12,11,10]
\\ digits2str(testvec)

{ hexdecchar(aaa)= 
if(0<=aaa&&aaa<10,return(aaa)); 
if(aaa==10,return("A")); 
if(aaa==11,return("B")); 
if(aaa==12,return("C")); 
if(aaa==13,return("D")); 
if(aaa==14,return("E")); 
if(aaa==15,return("F")); }

{ irrepolylist(p,m) = 
my(count=0,a,f); 
printf("irreducible polynomials: "); 
for(a=p^m+1,2*p^m-1,f=Mod(Pol(digits(a,p)),p); 
if(polisirreducible(f),count++;printf("0x%X,",a)));printf("count=%d,",count); 
numofirre(p,m); 
return }

{ pripolylist(p,m) = 
  my(i,ff,a,count); 
if(isprime(p^m-1),
printf("All irreducible polynomials are the primitive polynomials");
print(",G_",p,"(",m,")=",eulerphi(p^m-1)/m), 
printf("primitive polynomials: "); 
count=0;for(a=p^m+1,2*p^m-1,ff=Mod(Pol(digits(a,p)),p); 
if(pol2isprimitive(p,ff),count++;printf("0x%X,",a))); 
print("count=",count,",G_",p,"(",m,")=",eulerphi(p^m-1)/m));return }
\\ if(pol2isprimitive(p,f),count++;printf("0x%X,",a);print(dec2radix(a,p)) )); 

{ isprime2(v) = 
   my(i,j,b,r,s,t,y); 
if(v<=1, return(0)); 
\\ for(i=1,670,  \\prime(670)=5003 2,113ms 
 for(i=1,5134,  \\prime(5134)=50021 1,828ms 
\\ for(i=1,41539,  \\prime(41539)=500009 3,401ms 
  b=prime(i); 
  if(v==b,return(1)); 
  if(lift(Mod(v,b))==0,return(0)));
r=v-1;s=0;while(lift(Mod(r,2))==0,s++;r/=2); 
t=5; setrand(5); 
for(i=1,t, 
  x=random(v-3)+2; 
  y=lift(Mod(x,v)^r);
  if(y!=1 && y!=(v-1), 
    j=1; 
    while(j<=(s-1) && y!=(v-1), 
      y=lift(Mod(y,v)^2);
      if(y==1, return(0));
      j++); 
    if(y!=(v-1), return(0)))); 
return(1) }

{ nextprime2(v) = 
  my(m); 
  if(v<=2,return(2)); 
  if(v==3,return(3)); 
  if(v<=5,return(5)); 
  if(lift(Mod(v,2))==0, m=v+1, m=v); 
  while(isprime2(m)==0, m+=2 );
  return(m) }

{ precprime2(v) = 
  my(m); 
  if(v<2,return(0)); 
  if(v==2,return(2)); 
  if(v<=4,return(3)); 
  if(lift(Mod(v,2))==0, m=v-1, m=v); 
  while(isprime2(m)==0, m-=2 );
  return(m) }

{ prime2(v) = 
  my(i,count); 
if(v==1,return(2)); 
if(v==2,return(3)); 
count=2; i=3; 
while(count!=v, 
  i+=2; 
  while(isprime2(i)!=1, i+=2); 
  count++); 
return(i)}

{ numofirre(p,m) = 
  my(ddd,sss,iii); 
ddd=divisors(m);sss=0;for(iii=1,length(ddd), 
sss=sss+moebius(ddd[iii])*p^(m/ddd[iii]));sss=sss/m;
print("I_",p,"(",m,")=",sss) }
\\ for check
\\ p=2;for(m=2,10,numofirre(p,m))

{ numofirrepri(p,m) = 
  my(ddd,sss,iii); 
ddd=divisors(m);sss=0;for(iii=1,length(ddd), 
sss=sss+moebius(ddd[iii])*p^(m/ddd[iii]));sss=sss/m;
print("I_",p,"(",m,")=",sss,",G_",p,"(",m,")=",eulerphi(p^m-1)/m) }
\\ for check
\\ p=2;for(m=2,10,numofirrepri(p,m))

{ numofpri(p,m) =
print("G_",p,"(",m,")=",eulerphi(p^m-1)/m) }
\\ for check
\\ p=2;for(m=2,10,numofpri(p,m))

\\ new my rref = reduced row echelon form 
{ matrref(M) = 
   my(i,lead=0,s=matsize(M),rowCount=s[1],columnCount=s[2]); 
   my(M2=M,tvec=vector(s[2])); 
\\   for(k=1,s[1],print(M2[k,]));  
   for(r=0,rowCount-1, 
      if(lead >= columnCount, return(M2)); 
      i=r; 
      while(M2[i+1,lead+1] == 0, 
         i++; 
         if(i == rowCount, 
            i=r; lead++; 
            if(lead == columnCount, return(M2)) 
         )); 
      \\ swap rows i and r 
      tvec=M2[i+1,]; 
      M2[i+1,]=M2[r+1,]; 
      M2[r+1,]=tvec; 
      if(M2[r+1,lead+1] != 0, M2[r+1,]=M2[r+1,] / M2[r+1,lead+1]); 
      for(i=0,rowCount-1, 
         if(i != r, 
            M2[i+1,]=M2[i+1,] - M2[r+1,] * M2[i+1,lead+1])); 
      lead++); 
      return(M2)} 
\\ for check
\\ B=[1,1,1,0,0,1; 0,1,0,1,1,0; 1,0,1,1,0,1; 1,1,0,1,1,1]; B
\\ F=[1,0,1,1,0,0,0; 0,1,0,1,1,0,0; 0,0,1,0,1,1,0; 0,0,0,1,0,1,1]; F 
\\ G=[1,2,-1,-4; 2,3,-1,-11; -2,0,-3,22]; G

{ pol2isprimitive(p,f) = 
  my(d,deg,ggg,i); 
if(polisirreducible(f)==0,return(0), 
deg=poldegree(f);if(isprime(p^deg-1),return(1)); 
d=checkorders(p^deg-1); 
for(i=2,length(d)-1,ggg=lift(lift(Mod(Mod(x,p),f)^d[i])); 
if(ggg==1,return(0))); 
return(1)) }
\\ irrepolylist(2,6)                                                      
\\ irreducible polynomials: 0x43,0x49,0x57,0x5B,0x61,0x67,0x6D,0x73,0x75,count=9,I_2(6)=9
\\ pripolylist(2,6)                                                       
\\ primitive polynomials: 0x43,0x5B,0x61,0x67,0x6D,0x73,count=6,G_2(6)=6
\\ for check
\\ p=2; a=[0x43,0x49,0x57,0x5B,0x61,0x67,0x6D,0x73,0x75]
\\ for(i=1,length(a),print(pol2isprimitive(p,Mod(Pol(digits(a[i],p)),p))))

{ pol2isprimitivedec(p,m,fdec) = 
  my(f,cord,g,i); 
if(isprime(p^m-1), 
return(polisirreducible(f=Mod(Pol(digits(fdec,p)),p)))); 
cord=checkorders(p^m-1); 
for(i=2,length(cord)-1,f=Pol(digits(fdec,p));g=lift(lift(Mod(Mod(x,p),f)^cord[i])); 
if(g==1,return(0))); 
return(1) }

{ pol2nextprimitive(p,f) = 
  my(i,start); 
if(pol2isprimitive(p,f),return(f)); 
start=fromdigits(Vec(lift(lift(f))),p); 
for(i=start+1,start+2000,f=Mod(Pol(digits(i,p)),p); 
if(pol2isprimitive(p,f), return(lift(f)))); 
return(0); }

{ pol2next2primitive(p,f) = 
  my(i,start); 
\\if(pol2isprimitive(p,f),return(f)); 
start=fromdigits(Vec(lift(lift(f))),p); 
for(i=start+1,start+2000,f=Mod(Pol(digits(i,p)),p); 
if(pol2isprimitive(p,f), return(lift(f)))); 
return(0); }

{ pol2precprimitive(p,f) = 
  my(i,start); 
if(pol2isprimitive(p,f),return(f)); 
start=fromdigits(Vec(lift(lift(f))),p); 
for(i=1,2000,f=Mod(Pol(digits(start-i,p)),p); 
if(pol2isprimitive(p,f), return(lift(f)))); 
return(0); }

{ pol2prec2primitive(p,f) = 
  my(i,start); 
\\if(pol2isprimitive(p,f),return(f)); 
start=fromdigits(Vec(lift(lift(f))),p); 
for(i=1,2000,f=Mod(Pol(digits(start-i,p)),p); 
if(pol2isprimitive(p,f), return(lift(f)))); 
return(0); }

{ pol2nextprimitivedecin(p,fdec) = 
  my(i,f); 
for(i=fdec,fdec+2000,f=Mod(Pol(digits(i,p)),p); 
if(pol2isprimitive(p,f), return(lift(f)))); 
return(0); }

{ pol2nextprimitivedecinout(p,fdec) = 
  my(i,f); 
for(i=fdec,fdec+2000,f=Mod(Pol(digits(i,p)),p); 
if(pol2isprimitive(p,f), return(i))); 
return(0); }

{ pol2nextprimitivedecout(p,f) = 
  my(i,ff,start); 
if(pol2isprimitive(p,f),return(fromdigits(Vec(lift(lift(f))),p))); 
start=fromdigits(Vec(lift(lift(f))),p); 
for(i=start+1,start+2000,ff=Mod(Pol(digits(i,p)),p); 
if(pol2isprimitive(p,ff), return(i))); 
return(0); }

{ pol2next2primitivedecin(p,fdec) = 
  my(i,ff); 
for(i=fdec+1,fdec+2000,ff=Mod(Pol(digits(i,p)),p); 
if(pol2isprimitive(p,ff), return(lift(ff)))); 
return(0); }

{ pol2next2primitivedecinout(p,fdec) = 
  my(i,ff); 
for(i=fdec+1,fdec+2000,ff=Mod(Pol(digits(i,p)),p); 
if(pol2isprimitive(p,ff), return(i))); 
return(0); }

{ pol2next2primitivedecout(p,f) = 
  my(i,ff,start); 
\\if(pol2isprimitive(p,f),return(fromdigits(Vec(lift(lift(f))),p))); 
start=fromdigits(Vec(lift(lift(f))),p); 
for(i=start+1,start+2000,ff=Mod(Pol(digits(i,p)),p); 
if(pol2isprimitive(p,ff), return(i))); 
return(0); }

{ pol2precprimitivedecin(p,fdec) = 
  my(i,ff); 
for(i=0,2000,ff=Mod(Pol(digits(fdec-i,p)),p); 
if(pol2isprimitive(p,ff), return(lift(f)))); 
return(0); }

{ pol2precprimitivedecinout(p,fdec) = 
  my(i,ff); 
for(i=0,2000,ff=Mod(Pol(digits(fdec-i,p)),p); 
if(pol2isprimitive(p,ff), return(fdec-i))); 
return(0); }

{ pol2precprimitivedecout(p,f) = 
  my(i,ff,start); 
if(pol2isprimitive(p,f),return(f)); 
start=fromdigits(Vec(lift(lift(f))),p); 
for(i=1,2000,ff=Mod(Pol(digits(start-i,p)),p); 
if(pol2isprimitive(p,ff), return(start-i))); 
return(0); }

{ pol2prec2primitivedecin(p,fdec) = 
  my(i,ff,start); 
for(i=1,2000,ff=Mod(Pol(digits(fdec-i,p)),p); 
if(pol2isprimitive(p,ff), return(lift(f)))); 
return(0); }

{ pol2prec2primitivedecinout(p,fdec) = 
  my(i,ff,start); 
for(i=1,2000,ff=Mod(Pol(digits(fdec-i,p)),p); 
if(pol2isprimitive(p,ff), return(fdec-i))); 
return(0); }

{ pol2prec2primitivedecout(p,f) = 
  my(i,ff,start); 
\\if(pol2isprimitive(p,f),return(f)); 
start=fromdigits(Vec(lift(lift(f))),p); 
for(i=1,2000,ff=Mod(Pol(digits(start-i,p)),p); 
if(pol2isprimitive(p,ff), return(start-i))); 
return(0); }

{ replace4vec(avec,rvec) = 
  my(bvec,i,ff); 
bvec=vector(length(avec)); 
for(i=1,length(avec), 
  bvec[i]=rvec[avec[i]+1]); 
return(bvec) }
\\ for check
\\ for(i=1,511,ff0=digits(i,4);print(ff0))
\\ kill(a);rvec=[0,1,a^119,a^238];for(i=1,511,ff1=replace4vec(digits(i,4),rvec);print(ff1))

{ znlambda2(n) = 
  my(nn,ords,f2,size); 
if(type(n)=="t_INTMOD", nn = n.mod, 
  if(type(n)=="t_INT", nn = n, return("Error"))); 
if(nn<0,return("Error")); 
if(nn==0,return(0)); 
if(nn==1,return(1)); 
ords = vector(0); 
f2 = factor(nn); 
\\ print(f2); 
size = matsize(f2); 
if(f2[1,1]==2, 
  if(f2[1,2]<3, 
    ords=concat(ords,f2[1,1]^(f2[1,2]-1)), 
    ords=concat(ords,f2[1,1]^(f2[1,2]-2))), 
  ords=concat(ords,eulerphi(f2[1,1]^f2[1,2])));  
if(size[1]==1, 
  return(ords[1]), 
  for(i=2,size[1], 
    ords=concat(ords,eulerphi(f2[i,1]^f2[i,2])))); 
return(lcm(ords)) }
\\ print(factor(lcm(ords)));return(lcm(ords)) }

{ znorder2(b) = 
  my(a,nn,maxorder,v,d,y); 
if(type(b)=="t_INTMOD", a=lift(b); nn = b.mod, 
  return("Error")); 
if(gcd(a,nn)!=1, return("Error: gcd(a,n)!=1 of Mod(a,n)")); 
if(nn<1,return("Error")); 
if(nn==1,return(0)); 
if(nn==2,return(1)); 
maxorder = znlambda2(nn); 
d = vecsort(checkorders(maxorder)); 
for(i=1,length(d),y=lift(Mod(a,nn)^d[i]);if(y==1,return(d[i]))); 
print("Error stop"); }
\\ for check
\\ for(i=5,8,for(j=1,8,t=Mod(j,i);print("znorder2(",t,")=",znorder2(t)));print(""))
\\ for check
\\ { for(i=5,8,for(j=1,8,if(gcd(j,i)==1,t=Mod(j,i);print("znorder(",t,")=",
\\ znorder(t))));print("")) } 
\\ for check
\\ { for(i=5,8,for(j=1,8,if(gcd(j,i)==1,t=Mod(j,i);print("znorder2(",t,")=",
\\ znorder2(t))));print(znprimroots2(i));print("")) }

{ znprimroot2(n) = 
  my(nn,maxorder,v,d,y); 
if(type(n)=="t_INTMOD", nn = n.mod, 
  if(type(n)=="t_INT", nn = n, return("Error"))); 
if(nn<1,return("Error")); 
if(nn==1,return(Mod(0,nn))); 
if(nn==2,return(Mod(1,nn))); 
maxorder = znlambda2(nn); 
d = checkorders(maxorder); 
if(maxorder < 3, 
  for(i=2,nn-1,if(gcd(i,nn)==1,return(Mod(i,nn)))), 
  for(i=2,nn-1,if(gcd(i,nn)==1,for(j=2,length(d)-1, 
    y=lift(Mod(i,nn)^d[j]); 
    if(y<2,break, 
      if(j==length(d)-1,return(Mod(i,nn)))))))) }

{ znprimroots2(n) = 
  my(nn,maxorder,v,d,y); 
if(type(n)=="t_INTMOD", nn = n.mod, 
  if(type(n)=="t_INT", nn = n, return("Error"))); 
if(nn<1,return("Error")); 
if(nn==1,v=vector(1);v=[0];return(v)); 
if(nn==2,v=vector(1);v=[1];return(v)); 
maxorder = znlambda2(nn); 
d = checkorders(maxorder); 
v=vector(0); 
if(maxorder < 3, 
  for(i=2,nn-1,if(gcd(i,nn)==1,v=concat(v,i))), 
  for(i=2,nn-1,if(gcd(i,nn)==1,for(j=2,length(d)-1, 
    y=lift(Mod(i,nn)^d[j]); 
    if(y<2,break, 
      if(j==length(d)-1,v=concat(v,i))))))); 
return(v)}
\\ for check
\\ { print("n: znlambda2(n) znprimroot2(n) znprimroots2(n)"); 
\\ for(n=1,101,print(n,": ",znlambda2(n)," ",znprimroot2(n)," ",
\\ znprimroots2(n)," ")) }
