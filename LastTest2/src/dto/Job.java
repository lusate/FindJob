package dto;
import java.io.Serializable;

public class Job implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;

	private String jobId;	//��� Ȩ������
	private String jname;	//�����
	private String description; //ȸ�� ����
	private String scale;	//��� �Ը�
	private String representative;	//��ǥ��
	private String birthdate;	//������
	private String totalsales;//�����
	private int person;	//�����
	private String salary;	//���Կ���
	private String address;	//�ּ�
	private String type;	//���
	private String filename; //�̹��� ���ϸ�
	private int quantity; //���� ��û�� ��� ����
	
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
