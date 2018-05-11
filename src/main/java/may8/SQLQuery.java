package may8;

import java.sql.ResultSet;

public enum SQLQuery implements SQLSuper{
	POST(
			"INSERT INTO BOARD VALUES(SEQ_BOARD.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, SYSDATE",
			
			new DAGettable<Member>() {

				@Override
				public Member setBean(ResultSet rs) {
					// TODO Auto-generated method stub
					return null;
				}
			}
		);
	
	
	private SQLQuery(String str, DAGettable<?> method) {
		_str = str;
		_method = method;
	}
	String _str;
	DAGettable<?> _method;
	
	public String toString() {
		return _str;
	}
	
	public DAGettable<?> getMethod(){
		return _method;
	}
}
