function CheckAddJob(){
	
	var jobId = document.getElementById("jobId");
	var name = document.getElementById("name");
	var person = document.getElementById("person");
	var salary = document.getElementById("salary");
	var address = document.getElementById("address");
	
	//기업 홈페이지 체크
	if(!check(/^www.[a-z]{0,15}.com$/, jobId, 
	"[기업 홈페이지]\n문자 맨 앞뒤에 www.과 .com을 조합하여 2~15자까지 입력하세요\n 반드시 영소문자로 써야합니다"))
	return false;
	
	//도서명 체크
	if(name.value.length == 0){
		alert("[기업명]\n기업명은 반드시 입력해야합니다");
		name.select();
		name.focus();
		return false;
	}
	
	if(!check(/^[가-힣]*$/ , name, "[기업명]\n기업명은 한글로 작성해주세요."))
	return false;
	
	//사원 수
	if(person.value.length == 0 || isNaN(person.value)){
		alert("[사원 수]\n숫자만 입력하세요");
		person.select();
		person.focus();
		return false;
	}
	
	
	if(person.value < 0) {
		alert("[사원 수]\n음수는 입력할 수 없습니다.");
		person.select();
		person.focus();
		return false;
	}
	
	//신입 연봉
	if(!check(/^[0-9가-힣]*만$/ , salary, "[신입 연봉]\n숫자와 '만'을 병합하여 작성해주세요 (****만)"))
		return false;
	
	if(salary.value < 0) {
		alert("[신입 연봉]\n음수는 입력할 수 없습니다.");
		salary.select();
		salary.focus();
		return false;
	}
	
	//주소
	if(address.value.length == 0) {
		alert("[주소]\n주소를 입력해주세요");
		address.select();
		address.focus();
		return false;
	}
	
	if(!check(/^[가-힣]*$/ , address, "\n주소는 한글로 작성해주세요."))
	return false;
	
	function check(regExp, e, msg){
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus;
		return false;
	}
	document.newJob.submit()
}