package dto;
import java.io.Serializable;

public class Job implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;

	private String jobId;	//기업 홈페이지
	private String jname;	//기업명
	private String description; //회사 설명
	private String scale;	//기업 규모
	private String representative;	//대표자
	private String birthdate;	//설립일
	private String totalsales;//매출액
	private int person;	//사원수
	private String salary;	//신입연봉
	private String address;	//주소
	private String type;	//산업
	private String filename; //이미지 파일명
	private int quantity; //내가 신청한 기업 개수
	
	public Job() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Job(String jobId, String jname, String representative) {
		super();
		this.jobId = jobId;
		this.jname = jname;
		this.representative = representative;
	}

	public String getJobId() {
		return jobId;
	}

	public void setJobId(String jobId) {
		this.jobId = jobId;
	}

	public String getJname() {
		return jname;
	}

	public void setJname(String jname) {
		this.jname = jname;
	}

	public String getScale() {
		return scale;
	}

	public void setScale(String scale) {
		this.scale = scale;
	}

	public String getRepresentative() {
		return representative;
	}

	public void setRepresentative(String representative) {
		this.representative = representative;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getTotalsales() {
		return totalsales;
	}

	public void setTotalsales(String totalsales) {
		this.totalsales = totalsales;
	}

	public int getPerson() {
		return person;
	}

	public void setPerson(int string) {
		this.person = string;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
