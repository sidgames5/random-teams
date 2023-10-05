import sys.thread.Thread;

class Main {
	static final motd = [];
	static var finished = false;

	static var teams = new Array<Array<Int>>();
	public static function main() {
		var people = 0;
		var teamSize = 0;
		var runs = 0;
		Sys.println("Please assign each person to a number (first student is numbered 0)");
		Sys.print("Number of students: ");
		people = Std.parseInt(Sys.stdin().readLine());
		Sys.print("Number of students per team: ");
		teamSize = Std.parseInt(Sys.stdin().readLine());
		Sys.print("Number of runs: ");
		runs = Std.parseInt(Sys.stdin().readLine());

		/*Thread.create(() -> {
      			for (m in motd) {
				if(!finished) {
				Sys.print("\r" + m);
				Sys.sleep(5);
				}
			}
    		});*/

		var students = [];
		for (i in 0...people) {
			students.push(i);trace("here");
		}
		students = Random.shuffle(students);trace("here");
		trace(runs);
		trace(students);

		for (run in 0...runs) {
			for (student in students) {
				if (teams.length == 0) {
					teams.push([]);
				}
				if (teams[teams.length - 1].length >= teamSize) {
					teams.push([student]);
				} else {
					teams[teams.length - 1].push(student);
				}
			}

			
			Sys.println("\r\nResults for run " + 1);
			for (t in 0...teams.length) {
				Sys.println("Team " + t + ": " + teams[t]);trace("here");
			}
			Sys.print("Press enter to continue");
			Sys.stdin().readLine();

		}
	}
}
