package moreClasses.jsp;

import java.util.regex.Pattern;

public class user {//here I have helper functions for my app
	
	
	public int getMaxRiseOfOneStock(int one,int two,int three,int four,int five,int six,int seven){
		int sum=0;
		int max=0;
				if (six-seven<0){//check what the difference between stock value of some day and day before for all 7 days
					sum=0;
				}
				else{
					sum=sum+six-seven;	
				}
				if (five-six<0){
					if (max<sum)
						max=sum;
					sum=0;
			}
			else{
				sum=sum+five-six;	
			}
				if (four-five<0){
					if (max<sum)
						max=sum;
					sum=0;
			}
			else{
				sum=sum+four-five;	
			}
				if (three-four<0){
					if (max<sum)
						max=sum;
					sum=0;
			}
			else{
				sum=sum+three-four;	
			}
				if (two-three<0){
					if (max<sum)
						max=sum;
					sum=0;
			}
			else{
				sum=sum+two-three;	
			}
				if (one-two<0){
					if (max<sum)
						max=sum;
					sum=0;
			}
			else{
				sum=sum+one-two;	
			}
				if (max<sum)
					max=sum;
		
		return max;
	}
	public int getStabilityOfValue(int one,int two,int three,int four,int five,int six,int seven){
		int ans=0;
		int max_value=Math.max(one,Math.max(two,Math.max(three,Math.max(four,Math.max(five,Math.max(six,seven))))));
		int min_value=Math.min(one,Math.min(two,Math.min(three,Math.min(four,Math.min(five,Math.min(six,seven))))));
		ans=Math.abs(max_value-min_value);
		return ans;
	}
	
   
   public String validate_register(String id,String pwd,String c_pwd,String fname,String lname,String uname,String credit){
	   String error="";
	   if (id.isEmpty()||pwd.isEmpty()||c_pwd.isEmpty()||fname.isEmpty()||lname.isEmpty()||uname.isEmpty()||credit.isEmpty()){
	    	error="please fill all the fields";
	    	return error;
	   }
	   if (id.length()>255||pwd.length()>255||c_pwd.length()>255||fname.length()>255||lname.length()>255||uname.length()>255||credit.length()>255){
	    	error="one of the fileds too big";
	    	return error;
	   }
	    if (id.length()<8){
	    	error="id too short";
	    	return error;
	        }
	    if (Pattern.matches(("^[0-9]*$"), id) == false) {
	    	error="id need to contain only numbers!";
	    	return error;
	    }
	    if (!(pwd.equals(c_pwd))){
	    	error="the password are diffrent";
	    	return error;
	        }
	    if (credit.length()<16){
	    	error="credit too short";
	    	return error;
	        }
	    if (!(Pattern.matches("[a-zA-Z]+", credit) == false)) {
	    	error="credit need to contain only numbers!";
	    	return error;
	    }
		return error;
    	
   }


 


}