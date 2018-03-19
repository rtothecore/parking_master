package cokr.ezinfotech.parkingmaster.dao;

public class WeatherVo {
	
	private String today = "20180315";
	private String base_time = "1200";
	private String _nx = "53";
	private String _ny = "38";
	private String result= "";
	
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
	public String getBase_time() {
		return base_time;
	}
	public void setBase_time(String base_time) {
		this.base_time = base_time;
	}
	public String get_nx() {
		return _nx;
	}
	public void set_nx(String _nx) {
		this._nx = _nx;
	}
	public String get_ny() {
		return _ny;
	}
	public void set_ny(String _ny) {
		this._ny = _ny;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
}
