package dao;

import java.util.ArrayList;

import dto.Job;

public class JobRepository {
	
	private ArrayList<Job> listOfJobs = new ArrayList<Job>();
	private static JobRepository instance = new JobRepository();
	
	public static JobRepository getInstance() {
		return instance;
	}
	public JobRepository() {	//매개 변수 jobId, jname, representative
		Job Hyundae = new Job("www.hyundae.com", "현대자동차", "정의선/히안테/장재훈");
		Hyundae.setDescription("현대·기아자동차는 최고의 기술력과 최상의 품질을 실현하며, 창사 이래 지금까지 대한민국의 수출경제 확립과 고용창출 등에 지대한 공헌을 해 온 "
				+ "명실공히 국내 최고의 기업입니다. 최근에는 해외에서도 당사 제품의 품질과 성능에 대한 신뢰가 확보되면서, 세계 초일류 자동차 기업으로의 도약이라는 당사의 목표가 더욱 힘을 "
				+ "얻어가고 있습니다. 끊임없는 경영 혁신과 기술 개발을 통해 인류의 풍요로운 미래를 추구하는 기업, 현대·기아자동차 입니다");
		Hyundae.setScale("대기업");
		Hyundae.setBirthdate("1967/12/29");
		Hyundae.setTotalsales("50조 6천억원");
		Hyundae.setPerson(70385);
		Hyundae.setSalary("4,268");
		Hyundae.setAddress("서울 서초구");
		Hyundae.setType("승용차 및 기타 여객용 자동차 제조업");
		Hyundae.setFilename("Hyundae.png");
		
		Job Hana = new Job("www.hanati.co.kr", "하나금융티아이", "박근영");
		Hana.setDescription("하나금융티아이는 1990년 창립이래 은행, 증권, 카드, 보험 등 금융 전 분야의 다양한 IT 시스템 구축과 운영 노하우를 바탕으로 보다 수준 높은 금융 서비스를 제공하고자 "
				+ "최선을 다해 왔습니다. 스마트 혁명이라는 큰 흐름 속에서, IT는 금융은 물론 모든 산업의 발전과 혁신을 주도하고 있습니다. 이러한 변화의 시기에 하나금융티아이는 "
				+ "2017년 청라 통합 데이터센터 오픈을 기점으로, 하나금융그룹 혁신의 중심이 될 금융 IT 전문 인재를 육성하고, 새로운 미래를 한발 앞서 준비하며, 글로벌 수준의 IT회사로 도약해 나갈 것입니다.");
		Hana.setScale("대기업 계열사·자회사");
		Hana.setBirthdate("1990/08/30");
		Hana.setTotalsales("2,044억");
		Hana.setPerson(971);
		Hana.setSalary("3,600");
		Hana.setAddress("인천 서구");
		Hana.setType("솔루션,SI,CRM,ERP");
		Hana.setFilename("Hana.png");
		
		Job Plateer = new Job("www.plateer.com", "PLATEER", "이상훈");
		Plateer.setDescription("㈜플래티어는 2005년 설립된 플랫폼 기술서비스 전문기업이다. 플래티어는 고객사가 요구하는 IT플랫폼영역에서의 전문성을 겸비하고 치열한 소통을 통해 신뢰를 만들어 낸다는 핵심가치를 가지고"
				+ "(1) e-Commerce 플랫폼 솔루션 및 IT서비스 제공, (2) Teamworks 플랫폼 구축을 위한 솔루션 및 IT서비스 제공 (3) Marketing 플랫폼 서비스 및 컨설팅 제공 등 3개 분야의 주요사업을 진행하고 있다.");
		Plateer.setScale("중소기업");
		Plateer.setBirthdate("2005/03/01");
		Plateer.setTotalsales("393억 7천만원");
		Plateer.setPerson(163);
		Plateer.setSalary("3,200");
		Plateer.setAddress("서울 송파구");
		Plateer.setType("응용 소프트웨어 개발 및 공급업");
		Plateer.setFilename("Plateer.png");
		
		
		listOfJobs.add(Hyundae);
		listOfJobs.add(Hana);
		listOfJobs.add(Plateer);
		
	}
	public ArrayList<Job> getAllJobs(){
		return listOfJobs;
	}
	
	public Job getJobById(String jobId) {
		Job jobById = null;
		
		for(int i = 0; i < listOfJobs.size(); i++) {
			Job business = listOfJobs.get(i);
			if(business != null && business.getJobId() != null && business.getJobId().equals(jobId)) {
				jobById = business;
				break;
			}
		}
		return jobById;
	}
	public void addJob(Job business) {
		listOfJobs.add(business);
	}
}
