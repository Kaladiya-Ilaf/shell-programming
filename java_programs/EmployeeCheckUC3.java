/**
 * The Employee check class
 */

public class EmployeeCheckUC3 {

    private static final int isPresent=1;
    private static final int isFullTime=1;
	private static double wage;
	
	public static void main(String [] args){
		// Calling function
		final boolean attendance = employeeAttendance();
		final boolean numberOfHrs = employeeWorkTime();
		
		if(attendance && numberOfHrs){
			System.out.println("Employee is Full Time");
			 wage = calulateWage(20, 8);
		}
    	else if(attendance && !(numberOfHrs)){
			System.out.println("Employee is Part Time");
    		 wage = calulateWage(20, 4);
		}
		else{
			System.out.println("Employee is Absent");
			 wage = calulateWage(20, 0);
		}
		
		System.out.println("Total Employee wage is :"+ wage);
	}
	
	/**
	 * Check employee
	 * @return true if employee present otherwise false.
	 */
	public static boolean employeeAttendance(){
		
		return isPresent == Math.floor(Math.random() * 10) % 2;  
	}

	/**
	 * Calculate employee wage based on params.
	 * @param ratePerHrs the employee rate per hours.
	 * @param totalHrs total employee hours.
	 * @return total employee wage.
	 */
	 public static double calulateWage(final int ratePerHrs, final int totalHrs){
		return ratePerHrs*totalHrs;
	} 
    
    /**
	 * Check employee is part time or full time
	 */
    public static boolean employeeWorkTime(){
    	return isFullTime == Math.floor(Math.random() * 10) % 2;
    	
    }    
}

    