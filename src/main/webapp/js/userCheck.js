/**
 * https://regexr.com
 */
 
let win=null;

function open_idcheck(){
	win=window.open("idCheck","idCheck","width=400, height=400, left=200, top=200");
}//--------------------------

// 아이디 체크 후 갖고오기
function set_id(uid){ 
	//alert(uid);
	//uid값을 부모창(window)의 userid의 value값에 전달하자
	//팝업창에서 부모창을 참조할때는: opener (window)
	//window >document>forms
	opener.document.mf.userid.value = uid;
	
	//팝업창 닫기
	self.close();
}//--------------------------

//아이디 중복체크 및 가능 여부
function id_check(){
	if(!idf.userid.value){
		alert('아이디를 입력해야 해요');
		idf.userid.focus();
		return;
	}
	if(!isUserid(idf.userid)){
		alert('아이디는 영문자,숫자,_,!로 4~20자까지 가능해요');
		idf.userid.select();
		return;
	}
	idf.submit();
}//-------------------------

// 이름, 아이디, 비밀번호, 비번일치, 이메일 체크
function member_check(){
	if(!isKor(mf.name)){
		alert('이름은 한글로 2자 이상 가능해요');
		mf.name.select();
		return;
	}
	//*아이디는 영문자,숫자,_,!만 사용 가능해요
	if(!isUserid(mf.userid)){
		alert('아이디는 영문자,숫자,_,!만 4~20자까지 가능해요');
		mf.userid.select();
		return;
	}
	
	//비밀번호는 문자,숫자,!,_포함해서 4~20자 이내
	if(mf.mode.value!=9 && !isPasswd(mf.pwd)){
		alert('비밀번호는 문자,숫자,!_포함해서 4~20자 이내여야 해요');
		mf.pwd.select();
		return;
	}
	//비번,비번확인 값 일치 여부 체크
	if(mf.pwd.value!= mf.pwd2.value){
		alert('비밀번호와 비밀번호 확인값이 달라요');
		mf.pwd2.select();
		return;
	}

	//이메일 체크
	/*
	asdf-12cd@gmail.com
	asdf.my@naver.com
	asdf12@google.co.kr
	*/
	/*
	if(!isEmail(mf.email)){
		alert('이메일 형식에 맞지 않아요');
		mf.email.select();
		return;
	}
	*/
	
	mf.submit();//서버로 전송
	
}//member_check()--------------------

/*/
+ : 1개 이상 (one more)
* : 0 또는 여러개 (one or more)
? : 0 또는 1 (one or zero)
 */

function isEmail(input){
	let val=input.value;
	let pattern=/^[\w-]+(\.[\w]+)*@([a-zA-Z]+\.)+[a-z]{2,3}$/;
	let b=pattern.test(val);
	//alert('email: '+b);
	return b;
}//isEmail()------------------------


/*
\w : 알파벳대소문,숫자,_ 
\. : 마침표
! : !
{4,8}: 4~8자리까지
*/

//비밀번호는 문자,숫자,!,_포함해서 4~20자 이내
function isPasswd(input){
	let val=input.value;
	let pattern=/^[\w!]{4,20}$/;
	let b=pattern.test(val);
	//alert('pwd: '+b);
	return b;
}//isPasswd()-------------------------

/*
^ :시작을 의미
$ :끝을 의미
a-z: 알파벳 소문자
A-Z: 알파벳 대문자
0-9: 아라비아 숫자
_ : _
! : !
{3} : 3자리만 가능
{3,} : 3자 이상 가능
{3,7}: 3~7자리까지 가능
*/

//아이디는 영문자로 시작하고 그다음에는 영문자,숫자,_,!만 3~19자까지
function isUserid(input){
	let val=input.value;
	let pattern=/^([A-Za-z])[A-Za-z0-9_!]{3,19}$/
	let b=pattern.test(val);
	//alert("id여부: "+b);
	return b;
}//isUserid()----------------------------


/** 
 * ^ : 시작을 의미
 * $ : 끝을 의미
 * 가-힣 : 한글을 의미
 * + : 패턴이 1개 이상 반복된다는 의미
 * {2,}:패턴문자가 2개 이상 와야한다는 의미
*/

function isKor(input){
	//alert(input.value);
	let val=input.value;
	//정규식 객체: RegExp
	//let pattern=new RegExp(/multi/g); //flag: g,i,m,s
	//let pattern=/^[가-힣]+$/
	let pattern=/^[가-힣]{2,}$/
	//multi문자열이 있는지 여부를 체크
	let b=pattern.test(val);
	//test()함수: 정규식 패턴에 매개변수 문자열이 맞으면 true를 반환하고, 틀리면 false반환
	//alert(b);
	return b;
}

