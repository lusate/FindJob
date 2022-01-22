package dao;

import java.util.ArrayList;

import dto.Job;

public class JobRepository {
	
	private ArrayList<Job> listOfJobs = new ArrayList<Job>();
	private static JobRepository instance = new JobRepository();
	
	public static JobRepository getInstance() {
		return instance;
	}
	public JobRepository() {	//�Ű� ���� jobId, jname, representative
		Job Hyundae = new Job("www.hyundae.com", "�����ڵ���", "���Ǽ�/������/������");
		Hyundae.setDescription("���롤����ڵ����� �ְ��� ����°� �ֻ��� ǰ���� �����ϸ�, â�� �̷� ���ݱ��� ���ѹα��� ������� Ȯ���� ���â�� � ������ ������ �� �� "
				+ "��ǰ��� ���� �ְ��� ����Դϴ�. �ֱٿ��� �ؿܿ����� ��� ��ǰ�� ǰ���� ���ɿ� ���� �ŷڰ� Ȯ���Ǹ鼭, ���� ���Ϸ� �ڵ��� ��������� �����̶�� ����� ��ǥ�� ���� ���� "
				+ "���� �ֽ��ϴ�. ���Ӿ��� �濵 ���Ű� ��� ������ ���� �η��� ǳ��ο� �̷��� �߱��ϴ� ���, ���롤����ڵ��� �Դϴ�");
		Hyundae.setScale("����");
		Hyundae.setBirthdate("1967/12/29");
		Hyundae.setTotalsales("50�� 6õ���");
		Hyundae.setPerson(70385);
		Hyundae.setSalary("4,268");
		Hyundae.setAddress("���� ���ʱ�");
		Hyundae.setType("�¿��� �� ��Ÿ ������ �ڵ��� ������");
		Hyundae.setFilename("Hyundae.png");
		
		Job Hana = new Job("www.hanati.co.kr", "�ϳ�����Ƽ����", "�ڱٿ�");
		Hana.setDescription("�ϳ�����Ƽ���̴� 1990�� â���̷� ����, ����, ī��, ���� �� ���� �� �о��� �پ��� IT �ý��� ����� � ���Ͽ츦 �������� ���� ���� ���� ���� ���񽺸� �����ϰ��� "
				+ "�ּ��� ���� �Խ��ϴ�. ����Ʈ �����̶�� ū �帧 �ӿ���, IT�� ������ ���� ��� ����� ������ ������ �ֵ��ϰ� �ֽ��ϴ�. �̷��� ��ȭ�� �ñ⿡ �ϳ�����Ƽ���̴� "
				+ "2017�� û�� ���� �����ͼ��� ������ ��������, �ϳ������׷� ������ �߽��� �� ���� IT ���� ���縦 �����ϰ�, ���ο� �̷��� �ѹ� �ռ� �غ��ϸ�, �۷ι� ������ ITȸ��� ������ ���� ���Դϴ�.");
		Hana.setScale("���� �迭�硤��ȸ��");
		Hana.setBirthdate("1990/08/30");
		Hana.setTotalsales("2,044��");
		Hana.setPerson(971);
		Hana.setSalary("3,600");
		Hana.setAddress("��õ ����");
		Hana.setType("�ַ��,SI,CRM,ERP");
		Hana.setFilename("Hana.png");
		
		Job Plateer = new Job("www.plateer.com", "PLATEER", "�̻���");
		Plateer.setDescription("���÷�Ƽ��� 2005�� ������ �÷��� ������� ��������̴�. �÷�Ƽ��� ���簡 �䱸�ϴ� IT�÷������������� �������� ����ϰ� ġ���� ������ ���� �ŷڸ� ����� ���ٴ� �ٽɰ�ġ�� ������"
				+ "(1) e-Commerce �÷��� �ַ�� �� IT���� ����, (2) Teamworks �÷��� ������ ���� �ַ�� �� IT���� ���� (3) Marketing �÷��� ���� �� ������ ���� �� 3�� �о��� �ֿ����� �����ϰ� �ִ�.");
		Plateer.setScale("�߼ұ��");
		Plateer.setBirthdate("2005/03/01");
		Plateer.setTotalsales("393�� 7õ����");
		Plateer.setPerson(163);
		Plateer.setSalary("3,200");
		Plateer.setAddress("���� ���ı�");
		Plateer.setType("���� ����Ʈ���� ���� �� ���޾�");
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
