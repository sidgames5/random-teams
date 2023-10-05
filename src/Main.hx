class Main {
	public static function main() {
		var people = 0;
		var teamSize = 0;
		var runs = 0;
		Sys.println("Please assign each person to a number");
		Sys.print("Number of students: ");
		people = Std.parseInt(Sys.stdin().readLine());
		Sys.print("Number of students per team: ");
		teamSize = Std.parseInt(Sys.stdin().readLine());
		Sys.print("Number of runs: ");
		runs = Std.parseInt(Sys.stdin().readLine());
	}
}
