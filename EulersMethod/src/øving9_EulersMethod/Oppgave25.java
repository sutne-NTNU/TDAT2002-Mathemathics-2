import java.text.DecimalFormat;

public class Oppgave25 {
	private static double X, Y;
	
	private static double eulersMetode(double startX, double startY, int NR, double steglengde, double ovre_grense, boolean print) 
	{
		Y = startY;
		X = startX;
		int n = 0;
		double dY = dY_oppgave(NR);
		
		if(print) 
		{
			String variabler = String.format("\nn: %d   X: %.2f   Y: %.2f   dY: %.2f ", n, X, Y, dY);
			System.out.println(variabler);
		}
		while(X < ovre_grense)
		{
			n++;
			
			X = startX + (n * steglengde);
				
			Y = Y + (steglengde * dY);
			
			dY = dY_oppgave(NR);
			
			if(print) 
			{
				String variabler = String.format("n: %d   X: %.2f   Y: %.2f   dY: %.2f ", n, X, Y, dY);
				System.out.println(variabler);
			}
		}
		System.out.println("\nh = " + steglengde + "	gir: " + Y);
		return Y;
	}
	
	private static double dY_oppgave(int oppgaveNR) 
	{
		switch(oppgaveNR) 
		{
			case 21:
				return Y - (2*X);
			case 23:
				return Y + (X * Y);
			case 25:
				return ( 6 * (X*X) ) - ( 3 * (X*X) * Y);
		}
		return 0;

	}

	
	
	
	
	
	public static void main(String[] args) {
		//eulersMetode(startX, startY, oppgaveNR, steglengde, ovre_grense, print)
		
		System.out.println("\n\nOppgave 21");
		eulersMetode(1.0, 0.0, 21, 0.5, 3.0, true);
		
		
		System.out.println("\n\nOppgave 23");
		eulersMetode(0.0, 1.0, 23, 0.1, 0.5, true);
		
		
		System.out.println("\n\nOppgave 25");
		eulersMetode(0.0, 3.0, 25, 1.0, 1.0, false);
		eulersMetode(0.0, 3.0, 25, 0.1, 1.0, false);
		eulersMetode(0.0, 3.0, 25, 0.01, 1.0, false);
		eulersMetode(0.0, 3.0, 25, 0.001, 1.0, false);
		eulersMetode(0.0, 3.0, 25, 0.0000001, 1.0, false);
		
	}
}
