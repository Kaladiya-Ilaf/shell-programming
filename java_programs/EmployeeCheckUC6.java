public class EmployeeCheckUC6 {
    
    private static int workDays=1;
    private static int workHrs=0;
	private static double wage;
	private static double wageSum=0;
	public static void main(String [] args){
		// Calling function
		
        while(workDays<=20 || workHrs<100){
            final double attendance = employeeAttendance();
            switch (Double.toString(attendance)){
                case "0.0":
                System.out.println("Employee is Absent");
                wage = calulateWage(20, 0);
                workHrs=workHrs+0;
                System.out.println("Day "+ workDays +" is"+ wage);
                break;
                case "1.0":
                System.out.println("Employee is Part Time");
                wage = calulateWage(20, 4);
                workHrs=workHrs+4;
                System.out.println("Day "+ workDays +" is"+ wage);
                break;
                case "2.0":
                System.out.println("Employee is Full Time");
                wage = calulateWage(20, 8);
                workHrs=workHrs+8;
                System.out.println("Day "+ workDays +" is"+ wage);
                break;
            
                default:
                    break;
            }
            wageSum=wageSum+wage;
            workDays=workDays+1;
            
        }
        
		System.out.println("Total Employee wage is :"+ wageSum);
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