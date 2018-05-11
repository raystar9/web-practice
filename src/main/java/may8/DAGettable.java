package may8;

import java.sql.ResultSet;

public interface DAGettable<T> {
	
	public T setBean(ResultSet rs);
}
