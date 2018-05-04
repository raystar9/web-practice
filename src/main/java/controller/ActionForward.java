package controller;

public class ActionForward {
	private boolean _isRedirect = false;
	private String _path;
	public boolean isRedirect() {
		return _isRedirect;
	}
	public String getPath() {
		return _path;
	}
	public void setRedirect(boolean isRedirect) {
		_isRedirect = isRedirect;
	}
	public void setPath(String path) {
		_path = path;
	}
}
