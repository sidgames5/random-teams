class Main {
	static final motd = [];
	static var finished = false;

	static var teams = new Array<Array<Int>>();
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

		Thread.create(() -> {
      			for (m in motd) {
				if(!finished) {
				Sys.print("\r" + m);
				Sys.sleep(5);
				}
			}
    		});

		for (run in runs) {
			for (student in people) {
				if (teams[teams.length - 1].length >= teamSize) {
					teams.push([student]);
				} else {
					teams[teams.length - 1].push(student);
				}
			}

			
			Sys.println("\r\nResults for run " + 1);

		}
	}
}
