package vo;
/**
 * ??΄μ§? λ‘μ§? ?? ?΄??€ 
 * @author inst
 *
 */
public class PagingBean {
	/**
	 * μ΄? κ²μλ¬? ? 
	 */
	private int totalContent;
	
	public int getNowPage() {
		return nowPage;
	}
	/**
	 * ??¬ ??΄μ§? ?λ²? 
	 */
	private int nowPage=1;
	/**
	 * ? ??΄μ§??? λ³΄μ¬μ€? κ²μλ¬? ?		15
	 */
	private int numberOfContentPerPage=CommonConstants.CONTENT_NUMBER_PER_PAGE;
	/**
	 * ? ??΄μ§? κ·Έλ£Ή?΄ ??΄μ§? ?			5
	 */
	private int numberOfPageGroup=CommonConstants.PAGEGROUP_NUMBER_PER_PAGE;
	/**
	 * PagingBean? ?΅?΄ ??΄μ§? λ‘μ§? ? ??κΈ? ??΄?? 
	 * ? μ²? κ²μλ¬? ??? ??¬ ??΄μ§? ?λ²λ?? ??λ‘? ??€. 
	 * @param totalContent
	 * @param nowPage
	 */
	public PagingBean(int totalContent, int nowPage) {
		super();
		this.totalContent = totalContent;
		this.nowPage = nowPage;
	}
	/**
	 * μ΄? ??΄μ§? ? λ¦¬ν΄  
	 * ex) μ΄κ²?λ¬? ? - 15 κ°? , ??λ©΄μ? λ³΄μ¬μ§? κ²μλ¬? ? - 5κ°? 
	 *      λͺν?΄μ§? ? μ΄? 3 ??΄μ§? 
	 *      16κ°λ©΄ μ΄? 4??΄μ§? 
	 *  μ΄κ²?λ¬Όμ % ???΄μ§?? λ³΄μ¬μ§? κ²μλ¬Όμ 
	 *  0 ?΄λ©? ?? κ°?
	 *  0 ?΄ ??λ©? ?? κ°? + 1     
	 * @return
	 */
	public int getTotalPage(){
		int num=totalContent%this.numberOfContentPerPage;
		int totalPage=0;
		if(num==0)
			totalPage=totalContent/this.numberOfContentPerPage;
		else
			totalPage=totalContent/this.numberOfContentPerPage+1;
		
		return totalPage;
	}
	/**
	 * ? μ²? ??΄μ§? κ·Έλ£Ή? λ¦¬ν΄ 
	 * ex) μ΄? κ²μλ¬? ? 23κ°? - μ΄ν?΄μ§???5??΄μ§?   μ΄ν?΄μ§?κ·Έλ£Ή??2κ·Έλ£Ή
	 * μ΄ν?΄μ§?? % Page Group ?΄ ??΄μ§? ? 
	 * --> 0?΄λ©? ??κ°? 
	 * --> 0?΄ ??λ©? ??κ°?+1  
	 * @return
	 */
	public int getTotalPageGroup(){
		int num=this.getTotalPage()%this.numberOfPageGroup;
		int totalGroup=0;
		if(num==0)
			totalGroup=this.getTotalPage()/this.numberOfPageGroup;
		else
			totalGroup=this.getTotalPage()/this.numberOfPageGroup+1;
		return totalGroup;
	}
	/**
	 * ??¬ ??΄μ§?κ°? ?? ??΄μ§? κ·Έλ£Ή λ²νΈλ₯? λ¦¬ν΄ 
	 * ??¬ ??΄μ§? % Page κ·Έλ£Ή?΄ ??΄μ§? ? 
	 * 0 -> ?? κ°μ΄ ??΄μ§? κ·Έλ£Ή λ²νΈ 
	 * 0 ?΄ ??λ©? ?? κ°? + 1 
	 * @return
	 */
	public int getNowPageGroup(){
		int num=this.nowPage%this.numberOfPageGroup;
		int nowGroup=0;
		if(num==0)
			nowGroup=this.nowPage/this.numberOfPageGroup;
		else
			nowGroup=this.nowPage/this.numberOfPageGroup+1;
		return nowGroup;
	}
	/**
	 * ??¬ ??΄μ§?κ°? ?? ??΄μ§? κ·Έλ£Ή? ?? ??΄μ§? λ²νΈλ₯? λ¦¬ν΄ 
	 * PageGroup?΄ ??΄μ§? ? * (??¬ ??΄μ§? κ·Έλ£Ή-1) + 1 
	 * ?  ??΄μ§? κ·Έλ£Ή? λ§μ?λ§? λ²νΈ + 1 ?΄ κ²°κ΅­ ?? ??΄μ§?κ°? ??€ 
	 * @return
	 */
	public int getStartPageOfPageGroup(){
		//?΄?  ??΄μ§? κ·Έλ£Ή? λ§μ?λ§? ??΄μ§? λ²νΈ+1?λ©? ?? ??΄μ§?κ°? ?¨
		int start=this.numberOfPageGroup*(this.getNowPageGroup()-1)+1;
		return start;
	}
	/**
	 * ??¬ ??΄μ§?κ°? ?? ??΄μ§? κ·Έλ£Ή? λ§μ?λ§? ??΄μ§? λ²νΈλ₯? λ¦¬ν΄ 
	 * ??¬ ??΄μ§? κ·Έλ£Ή * ??΄μ§? κ·Έλ£Ή?΄ ??΄μ§? ? 
	 * λ§μ½ ? μ²? ??΄μ§? ?λ³΄λ€ ?? κ°λ³΄?€ ?΄ κ²½μ° 
	 * ? μ²? ??΄μ§? ?κ°? λ§μ?λ§? ??΄μ§? λ²νΈκ°? ??€. 
	 * @return
	 */
	public int getEndPageOfPageGroup(){
		int end=this.numberOfPageGroup*this.getNowPageGroup();
		if(end>this.getTotalPage()){
			end=this.getTotalPage();
		}
		return end;
	}
	/**
	 * ?΄?  ??΄μ§? κ·Έλ£Ή?΄ ??μ§? ??Έ??¬ ??Όλ©? true ??Όλ©? false 
	 * ??¬ ??΄μ§? κ·Έλ£Ή?΄ 1λ³΄λ€ ?¬λ©? true 
	 * @return
	 */
	public boolean isPreviousPageGroup(){
		boolean flag=false;
		if(this.getNowPageGroup()>1)
			flag=true;
		return flag;
	}
	/**
	 * ?€? ??΄μ§? κ·Έλ£Ή?΄ ?? μ§? ??Έ 
	 * ??¬ ??΄μ§? κ·Έλ£Ή?΄ ? μ²? ??΄μ§? κ·Έλ£Ή ?λ³΄λ€ ??Όλ©? true
	 * @return
	 */
	public boolean isNextPageGroup(){
		boolean flag=false;
		if(this.getNowPageGroup()<this.getTotalPageGroup())
			flag=true;
		return flag;
	}
	public static void main(String args[]){
		PagingBean bean=new PagingBean(26,6);
		System.out.println(bean.getTotalPage()+"??΄μ§?");
		System.out.println(bean.getTotalPageGroup()+"??΄μ§? κ·Έλ£Ή");
		System.out.println(bean.getNowPageGroup()+" ??¬ ??΄μ§? κ·Έλ£Ή");
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "PagingBean [totalContent=" + totalContent + ", nowPage="
				+ nowPage + ", numberOfContentPerPage="
				+ numberOfContentPerPage + ", numberOfPageGroup="
				+ numberOfPageGroup + "]";
	}
	
	
	
	
}











