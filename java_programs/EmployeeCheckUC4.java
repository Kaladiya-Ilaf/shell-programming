/**
 * The Employee check class
 */

public class EmployeeCheckUC4 {

	private static double wage;
	
	public static void main(String [] args){
		// Calling function
		final double attendance = employeeAttendance();
		
		switch (Double.toString(attendance)){
			case "0.0":
			System.out.println("Employee is Absent");
			wage = calulateWage(20, 0);
			break;
			case "1.0":
			System.out.println("Employee is  Time");
			wage = calulateWage(20, 8);
			break;
			case "2.0":
			System.out.println("Employee is Full Time");
			wage = calulateWage(20, 0);
			break;
		
			default:
				break;
		}
		System.out.println("Total Employee wage is :"+ wage);
	} 
		
	
	/**
	 * Check employee
	 * @return true if employee present otherwise false.
	 */
	public static double employeeAttendance(){
		
		double check=(Math.floor(Math.random() * 10) % 3);  
		return check;
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

    