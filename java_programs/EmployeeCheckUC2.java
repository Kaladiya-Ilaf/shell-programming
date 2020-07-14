/**
 * The Employee check class
 */
public class EmployeeCheckUC2 
{
	private static final int isPresent=1;
	
	public static void main(String [] args){
		// Calling function
		final boolean attendance = employeeAttendance();
		if(attendance){
			final double wage = calulateWage(20, 8);
			System.out.println("Employee is PRESENT");
			System.out.println("Total Employee wage is : "+ wage);
		}else{
			System.out.println("Employee is ABSENT");
			System.out.println("Total Employee wage is : 0.0");
		}
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
	
}
