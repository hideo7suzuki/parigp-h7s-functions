Readme.txt

![\begin{align*}   \left( \int_0^\infty \frac{\sin x}{\sqrt{x}} dx \right)^2 =   \sum_{k=0}^\infty \frac{(2k)!}{2^{2k}(k!)^2} \frac{1}{2k+1} =   \prod_{k=1}^\infty \frac{4k^2}{4k^2 - 1} = \frac{\pi}{2} \end{align*}](https://render.githubusercontent.com/render/math?math=%5Cbegin%7Balign*%7D%20%20%20%5Cleft(%20%5Cint_0%5E%5Cinfty%20%5Cfrac%7B%5Csin%20x%7D%7B%5Csqrt%7Bx%7D%7D%20dx%20%5Cright)%5E2%20%3D%20%20%20%5Csum_%7Bk%3D0%7D%5E%5Cinfty%20%5Cfrac%7B(2k)!%7D%7B2%5E%7B2k%7D(k!)%5E2%7D%20%5Cfrac%7B1%7D%7B2k%2B1%7D%20%3D%20%20%20%5Cprod_%7Bk%3D1%7D%5E%5Cinfty%20%5Cfrac%7B4k%5E2%7D%7B4k%5E2%20-%201%7D%20%3D%20%5Cfrac%7B%5Cpi%7D%7B2%7D%20%5Cend%7Balign*%7D)


[in English]  
program lists of my user functions for PARI/GP ver.0.900.  
copyright by Hideo Suzuki, hideo7suzuki@gmail.com  Jan. 2025.  

¥begin{description}
¥item[{¥tt checkorders(order)}] 原始元かどうかをチェックする位数を列挙
¥item[{¥tt count1(dec)}] 10進数decを2進数に変換したときの1のbit数
¥item[{¥tt dec2radix(dec,base)}] 10進数decを指定されたbase進数に変換
¥item[{¥tt digits2dec(digi,base)}] 1次元配列ベクトルを1つの10進整数に変換
¥item[{¥tt digits2str(ttvec)}] 1次元配列ベクトルを1つの文字列型に変換
¥item[{¥tt hexdecchar(aaa)}] 入力された数を16進文字に変換
¥item[{¥tt irrepolylist(p,m)}] ~¥¥
$¥mathbb{F}_{p^m}に使えるm次既約多項式fをすべて列挙(16進数表示)$
¥item[{¥tt pripolylist(p,m)}] ~¥¥
$¥mathbb{F}_{p^m}に使えるm次原始多項式fをすべて列挙(16進数表示)$¥¥
ただし、(すべての既約多項式)＝(原始多項式)になる場合は、そのことを表示
¥item[{¥tt isprime2(v)}] 自然数vの素数判定
¥item[{¥tt matrref(A)}] 行列Aのrrefを計算
¥item[{¥tt nextprime2(v)}] v以上の最小素数
¥item[{¥tt precprime2(v)}] v以下の最大の素数
¥item[{¥tt prime2(v)}] v番目の素数
¥item[{¥tt numofirre(p,m)}] $¥mathbb{F}_{p^m}に使えるm次既約多項式の個数を表示$
¥item[{¥tt numofirrepri(p,m)}] $¥mathbb{F}_{p^m}に使えるm次既約多項式と原始多項式の個数を表示$
¥item[{¥tt numofpri(p,m)}] $¥mathbb{F}_{p^m}に使えるm次原始多項式の個数を表示$
¥item[{¥tt pol2isprimitive(p,f)}] ~¥¥
$多項式f(多項式in)が¥mathbb{Z}_p[x]の原始多項式であるかの判定$
¥item[{¥tt pol2isprimitivedec(p,m,fdec)}] ~¥¥
$多項式f(16進in)が¥mathbb{Z}_p[x]の原始多項式であるかの判定$
¥item[{¥tt pol2next2primitivedecin(p,fdec)}] ~¥¥
$¥mathbb{Z}_p[x]のfより1つ上の原始多項式f(16進in,多項式out)$
¥item[{¥tt pol2next2primitivedecinout(p,fdec)}] ~¥¥
$¥mathbb{Z}_p[x]のfより1つ上の原始多項式f(16進in,16進out)$
¥item[{¥tt pol2next2primitivedecout(p,f)}] ~¥¥
$¥mathbb{Z}_p[x]のfより1つ上の原始多項式f(多項式in,16進out)$
¥item[{¥tt pol2next2primitive(p,f)}] ~¥¥
$¥mathbb{Z}_p[x]のfより1つ上の原始多項式f(多項式in,out)$
¥item[{¥tt pol2nextprimitive(p,f)}] ~¥¥
$¥mathbb{Z}_p[x]のf以上の原始多項式f(多項式in,out)$
¥item[{¥tt pol2nextprimitivedecin(p,fdec)}] ~¥¥
$¥mathbb{Z}_p[x]のf以上の原始多項式f(16進in,多項式out)$
¥item[{¥tt pol2nextprimitivedecinout(p,fdec)}] ~¥¥
$¥mathbb{Z}_p[x]のf以上の原始多項式f(16進in,16進out)$
¥item[{¥tt pol2nextprimitivedecout(p,f)}] ~¥¥
$¥mathbb{Z}_p[x]のf以上の原始多項式f(多項式in,16進out)$
¥item[{¥tt pol2prec2primitive(p,f)}] ~¥¥
$¥mathbb{Z}_p[x]のfより1つ下の原始多項式f(多項式in,out)$
¥item[{¥tt pol2prec2primitivedecin(p,fdec)}] ~¥¥
$¥mathbb{Z}_p[x]のfより1つ下の原始多項式f(16進in,多項式out)$
¥item[{¥tt pol2prec2primitivedecinout(p,fdec)}] ~¥¥
$¥mathbb{Z}_p[x]のfより1つ下の原始多項式f(16進in,16進out)$
¥item[{¥tt pol2prec2primitivedecout(p,f)}] ~¥¥
$¥mathbb{Z}_p[x]のfより1つ下の原始多項式f(多項式in,16進out)$
¥item[{¥tt pol2precprimitive(p,f)}] ~¥¥
$¥mathbb{Z}_p[x]のf以下の原始多項式f(多項式in,out)$
¥item[{¥tt pol2precprimitivedecin(p,fdec)}] ~¥¥
$¥mathbb{Z}_p[x]のf以下の原始多項式f(16進in,多項式out)$
¥item[{¥tt pol2precprimitivedecinout(p,fdec)}] ~¥¥
$¥mathbb{Z}_p[x]のf以下の原始多項式f(16進in,16進out)$
¥item[{¥tt pol2precprimitivedecout(p,f)}] ~¥¥
$¥mathbb{Z}_p[x]のf以下の原始多項式f(多項式in,16進out)$
¥item[{¥tt replace4vec(aavec,rrvec)}] ~¥¥
$ベクトル変換, 例: [0,1,2,3] ¥longrightarrow [0,1,a^{119},a^{238}]$
¥item[{¥tt znlambda2(n)}] ~¥¥
Carmichael関数$¥lambda(n)=(¥mathbb{Z}_nの最大位数)(n = 2, 4, p^{¥alpha}, 2p^{¥alpha}以外のnにも対応),$¥¥
$n = 2, 4, p^{¥alpha}, 2p^{¥alpha}$のとき$¥lambda(n)=¥phi(n)$より{¥tt znlambda2(n)=eulerphi(n)}
¥item[{¥tt znorder2(b)}] ~¥¥
{¥tt b=Mod(a,n)}の位数$(n = 2, 4, p^{¥alpha}, 2p^{¥alpha}以外のnにも対応),$ ¥¥
$n = 2, 4, p^{¥alpha}, 2p^{¥alpha}$のときは{¥tt znorder2(b)=znorder(b)}
¥item[{¥tt znprimroot2(n)}] ~¥¥
$¥mathbb{Z}_n の最小の原始根(n = 2, 4, p^{¥alpha}, 2p^{¥alpha}以外のnにも対応),$ ¥¥
$n = 2, 4, p^{¥alpha}, 2p^{¥alpha}$のとき$¥lambda(n)=¥phi(n)$より{¥tt znprimroot2(n)=znprimroot(n)}
¥item[{¥tt znprimroots2(n)}] $¥mathbb{Z}_n の原始根をすべて列挙する(n = 2, 4, p^{¥alpha}, 2p^{¥alpha}以外のnにも対応)$
¥end{description}

----------

[in Japanese]  
AES暗号 (128 bit key) ユーザ定義関数プログラムリスト  
copyright by Hideo Suzuki, hideo7suzuki@gmail.com  Jan. 2025.  

