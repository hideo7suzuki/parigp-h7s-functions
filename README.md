Readme.md of parigp-h7s-functions/h7s-functions.gp

This program is for PARI/GP, not for Gnuplot.

[in English]  
program lists of my user functions for PARI/GP ver.0.900.  
copyright by Hideo Suzuki, hideo7suzuki@gmail.com  Jan. 2025.  

$\mathtt{checkorders(order)}$ 
  return vector to check whether elements are primitive.　
$\mathtt{count1(dec)}$ 
  input is dec (=decimal number), return counts of 1 in binary expression of dec　
$\mathtt{dec2radix(dec,base)}$ 10進数decを指定されたbase進数に変換  
$\mathtt{digits2dec(digi,base)}$ 1次元配列ベクトルを1つの10進整数に変換  
$\mathtt{digits2str(ttvec)}$ 1次元配列ベクトルを1つの文字列型に変換  
$\mathtt{hexdecchar(aaa)}$ 入力された数を16進文字に変換  
$\mathtt{irrepolylist(p,m)}$  
  <mi mathvariant="unicode-math">F</mi>$\mathbb{F}$${}_{p^m}$に使える$m$次既約多項式$f$をすべて列挙(16進数表示)  
$\mathtt{pripolylist(p,m)}$   
  $\mathbb{}{F}_{p^m}に使えるm次原始多項式fをすべて列挙(16進数表示)$  
  ただし、(すべての既約多項式)＝(原始多項式)になる場合は、そのことを表示  
$\mathtt{isprime2(v)}$ 自然数vの素数判定  
$\mathtt{matrref(A)}$ 行列Aのrrefを計算  
$\mathtt{nextprime2(v)}$ v以上の最小素数  
$\mathtt{precprime2(v)}$ v以下の最大の素数  
$\mathtt{prime2(v)}$ v番目の素数  
$\mathtt{numofirre(p,m)}$ $\mathbb{}{F}_{p^m}に使えるm次既約多項式の個数を表示$  
$\mathtt{numofirrepri(p,m)}$ $\mathbb{}{F}_{p^m}に使えるm次既約多項式と原始多項式の個数を表示$  
$\mathtt{numofpri(p,m)}$ $\mathbb{}{F}_{p^m}に使えるm次原始多項式の個数を表示$  
$\mathtt{pol2isprimitive(p,f)}$   
:  $多項式f(多項式in)が\mathbb{}{Z}_p[x]の原始多項式であるかの判定$  
$\mathtt{pol2isprimitivedec(p,m,fdec)}$   
:  $多項式f(16進in)が\mathbb{}{Z}_p[x]の原始多項式であるかの判定$  
$\mathtt{pol2next2primitivedecin(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ上の原始多項式f(16進in,多項式out)$  
$\mathtt{pol2next2primitivedecinout(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ上の原始多項式f(16進in,16進out)$  
$\mathtt{pol2next2primitivedecout(p,f)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ上の原始多項式f(多項式in,16進out)$  
$\mathtt{pol2next2primitive(p,f)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ上の原始多項式f(多項式in,out)$  
$\mathtt{pol2nextprimitive(p,f)}$   
:  $\mathbb{}{Z}_p[x]のf以上の原始多項式f(多項式in,out)$  
$\mathtt{pol2nextprimitivedecin(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のf以上の原始多項式f(16進in,多項式out)$  
$\mathtt{pol2nextprimitivedecinout(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のf以上の原始多項式f(16進in,16進out)$  
$\mathtt{pol2nextprimitivedecout(p,f)}$   
:  $\mathbb{}{Z}_p[x]のf以上の原始多項式f(多項式in,16進out)$  
$\mathtt{pol2prec2primitive(p,f)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ下の原始多項式f(多項式in,out)$  
$\mathtt{pol2prec2primitivedecin(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ下の原始多項式f(16進in,多項式out)$  
$\mathtt{pol2prec2primitivedecinout(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ下の原始多項式f(16進in,16進out)$  
$\mathtt{pol2prec2primitivedecout(p,f)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ下の原始多項式f(多項式in,16進out)$  
$\mathtt{pol2precprimitive(p,f)}$   
:  $\mathbb{}{Z}_p[x]のf以下の原始多項式f(多項式in,out)$  
$\mathtt{pol2precprimitivedecin(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のf以下の原始多項式f(16進in,多項式out)$  
$\mathtt{pol2precprimitivedecinout(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のf以下の原始多項式f(16進in,16進out)$  
$\mathtt{pol2precprimitivedecout(p,f)}$   
:  $\mathbb{}{Z}_p[x]のf以下の原始多項式f(多項式in,16進out)$  
$\mathtt{replace4vec(aavec,rrvec)}$   
:  $ベクトル変換, 例: [0,1,2,3] \longrightarrow [0,1,a^{119},a^{238}]$  
$\mathtt{znlambda2(n)}$   
:  Carmichael関数$\lambda(n)=(\mathbb{}{Z}_nの最大位数)(n = 2, 4, p^{\alpha}, 2p^{\alpha}以外のnにも対応),$  
:  $n = 2, 4, p^{\alpha}, 2p^{\alpha}$のとき$\lambda(n)=\phi(n)$より$\mathtt{znlambda2(n)=eulerphi(n)}$  
$\mathtt{znorder2(b)}$   
:  $\mathtt{b=Mod(a,n)}の位数(n = 2, 4, p^{\alpha}, 2p^{\alpha}以外のnにも対応),$   
:  $n = 2, 4, p^{\alpha}, 2p^{\alpha}のときは\mathtt{znorder2(b)=znorder(b)}$  
$\mathtt{znprimroot2(n)}$   
:  $\mathbb{}{Z}_n の最小の原始根(n = 2, 4, p^{\alpha}, 2p^{\alpha}以外のnにも対応),$   
:  $n = 2, 4, p^{\alpha}, 2p^{\alpha}のとき\lambda(n)=\phi(n)$より$\mathtt{znprimroot2(n)=znprimroot(n)}$  
$\mathtt{znprimroots2(n)}$  $\mathbb{}{Z}_n$ の原始根をすべて列挙する$(n = 2, 4, p^{\alpha}, 2p^{\alpha}$以外の$n$にも対応)  

----------

[in Japanese]  
AES暗号 (128 bit key) ユーザ定義関数プログラムリスト  
copyright by Hideo Suzuki, hideo7suzuki@gmail.com  Jan. 2025.  

$\mathtt{checkorders(order)}$ 原始元かどうかをチェックする位数を列挙  
$\mathtt{count1(dec)}$ 10進数decを2進数に変換したときの1のbit数  
$\mathtt{dec2radix(dec,base)}$ 10進数decを指定されたbase進数に変換  
$\mathtt{digits2dec(digi,base)}$ 1次元配列ベクトルを1つの10進整数に変換  
$\mathtt{digits2str(ttvec)}$ 1次元配列ベクトルを1つの文字列型に変換  
$\mathtt{hexdecchar(aaa)}$ 入力された数を16進文字に変換  
$\mathtt{irrepolylist(p,m)}$  
  <mi mathvariant="unicode-math">F</mi>$\mathbb{F}$${}_{p^m}$に使える$m$次既約多項式$f$をすべて列挙(16進数表示)  
$\mathtt{pripolylist(p,m)}$   
:  $\mathbb{}{F}_{p^m}に使えるm次原始多項式fをすべて列挙(16進数表示)$  
:  ただし、(すべての既約多項式)＝(原始多項式)になる場合は、そのことを表示  
$\mathtt{isprime2(v)}$ 自然数vの素数判定  
$\mathtt{matrref(A)}$ 行列Aのrrefを計算  
$\mathtt{nextprime2(v)}$ v以上の最小素数  
$\mathtt{precprime2(v)}$ v以下の最大の素数  
$\mathtt{prime2(v)}$ v番目の素数  
$\mathtt{numofirre(p,m)}$ $\mathbb{}{F}_{p^m}に使えるm次既約多項式の個数を表示$  
$\mathtt{numofirrepri(p,m)}$ $\mathbb{}{F}_{p^m}に使えるm次既約多項式と原始多項式の個数を表示$  
$\mathtt{numofpri(p,m)}$ $\mathbb{}{F}_{p^m}に使えるm次原始多項式の個数を表示$  
$\mathtt{pol2isprimitive(p,f)}$   
:  $多項式f(多項式in)が\mathbb{}{Z}_p[x]の原始多項式であるかの判定$  
$\mathtt{pol2isprimitivedec(p,m,fdec)}$   
:  $多項式f(16進in)が\mathbb{}{Z}_p[x]の原始多項式であるかの判定$  
$\mathtt{pol2next2primitivedecin(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ上の原始多項式f(16進in,多項式out)$  
$\mathtt{pol2next2primitivedecinout(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ上の原始多項式f(16進in,16進out)$  
$\mathtt{pol2next2primitivedecout(p,f)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ上の原始多項式f(多項式in,16進out)$  
$\mathtt{pol2next2primitive(p,f)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ上の原始多項式f(多項式in,out)$  
$\mathtt{pol2nextprimitive(p,f)}$   
:  $\mathbb{}{Z}_p[x]のf以上の原始多項式f(多項式in,out)$  
$\mathtt{pol2nextprimitivedecin(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のf以上の原始多項式f(16進in,多項式out)$  
$\mathtt{pol2nextprimitivedecinout(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のf以上の原始多項式f(16進in,16進out)$  
$\mathtt{pol2nextprimitivedecout(p,f)}$   
:  $\mathbb{}{Z}_p[x]のf以上の原始多項式f(多項式in,16進out)$  
$\mathtt{pol2prec2primitive(p,f)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ下の原始多項式f(多項式in,out)$  
$\mathtt{pol2prec2primitivedecin(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ下の原始多項式f(16進in,多項式out)$  
$\mathtt{pol2prec2primitivedecinout(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ下の原始多項式f(16進in,16進out)$  
$\mathtt{pol2prec2primitivedecout(p,f)}$   
:  $\mathbb{}{Z}_p[x]のfより1つ下の原始多項式f(多項式in,16進out)$  
$\mathtt{pol2precprimitive(p,f)}$   
:  $\mathbb{}{Z}_p[x]のf以下の原始多項式f(多項式in,out)$  
$\mathtt{pol2precprimitivedecin(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のf以下の原始多項式f(16進in,多項式out)$  
$\mathtt{pol2precprimitivedecinout(p,fdec)}$   
:  $\mathbb{}{Z}_p[x]のf以下の原始多項式f(16進in,16進out)$  
$\mathtt{pol2precprimitivedecout(p,f)}$   
:  $\mathbb{}{Z}_p[x]のf以下の原始多項式f(多項式in,16進out)$  
$\mathtt{replace4vec(aavec,rrvec)}$   
:  $ベクトル変換, 例: [0,1,2,3] \longrightarrow [0,1,a^{119},a^{238}]$  
$\mathtt{znlambda2(n)}$   
:  Carmichael関数$\lambda(n)=(\mathbb{}{Z}_nの最大位数)(n = 2, 4, p^{\alpha}, 2p^{\alpha}以外のnにも対応),$  
:  $n = 2, 4, p^{\alpha}, 2p^{\alpha}$のとき$\lambda(n)=\phi(n)$より$\mathtt{znlambda2(n)=eulerphi(n)}$  
$\mathtt{znorder2(b)}$   
:  $\mathtt{b=Mod(a,n)}の位数(n = 2, 4, p^{\alpha}, 2p^{\alpha}以外のnにも対応),$   
:  $n = 2, 4, p^{\alpha}, 2p^{\alpha}のときは\mathtt{znorder2(b)=znorder(b)}$  
$\mathtt{znprimroot2(n)}$   
:  $\mathbb{}{Z}_n の最小の原始根(n = 2, 4, p^{\alpha}, 2p^{\alpha}以外のnにも対応),$   
:  $n = 2, 4, p^{\alpha}, 2p^{\alpha}のとき\lambda(n)=\phi(n)$より$\mathtt{znprimroot2(n)=znprimroot(n)}$  
$\mathtt{znprimroots2(n)}$  $\mathbb{}{Z}_n$ の原始根をすべて列挙する$(n = 2, 4, p^{\alpha}, 2p^{\alpha}$以外の$n$にも対応)  
