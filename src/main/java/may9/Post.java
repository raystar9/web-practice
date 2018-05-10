package may9;

import java.sql.Date;

public class Post {
	private int _postNum;
	private String _postName;
	private String _postPass;
	private String _postSubject;
	private String _postContent;
	private String _postFile;
	private int _postReRef;
	private int _postReLev;
	private int _postReSeq;
	private int _postReadCount;
	private Date _postDate;
	
	public int getPostNum() {
		return _postNum;
	}
	public String getPostName() {
		return _postName;
	}
	public String getPostPass() {
		return _postPass;
	}
	public String getPostSubject() {
		return _postSubject;
	}
	public String getPostContent() {
		return _postContent;
	}
	public String getPostFile() {
		return _postFile;
	}
	public int getPostReRef() {
		return _postReRef;
	}
	public int getPostReLev() {
		return _postReLev;
	}
	public int getPostReSeq() {
		return _postReSeq;
	}
	public int getPostReadCount() {
		return _postReadCount;
	}
	public Date getPostDate() {
		return _postDate;
	}
	public void setPostDate(Date postDate) {
		_postDate = postDate;
	}
	public void setPostNum(int postNum) {
		_postNum = postNum;
	}
	public void setPostName(String postName) {
		_postName = postName;
	}
	public void setPostPass(String postPass) {
		_postPass = postPass;
	}
	public void setPostSubject(String postSubject) {
		_postSubject = postSubject;
	}
	public void setPostContent(String postContent) {
		_postContent = postContent;
	}
	public void setPostFile(String postFile) {
		_postFile = postFile;
	}
	public void setPostReRef(int postReRef) {
		_postReRef = postReRef;
	}
	public void setPostReLev(int postReLev) {
		_postReLev = postReLev;
	}
	public void setPostReSeq(int postReSeq) {
		_postReSeq = postReSeq;
	}
	public void setPostReadCount(int postReadCount) {
		_postReadCount = postReadCount;
	}
}
