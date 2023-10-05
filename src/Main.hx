import sys.thread.Thread;

class Main {
	static final motd = [];
	static var finished = false;

	static var teams = new Array<Array<Int>>();
	public static function main() {
		
		Sys.println("Please assign each person to a number (first student is numbered 0)");
		Sys.print("Number of students: ");
		var people = Std.parseInt(Sys.stdin().readLine());
		Sys.print("Number of students per team: ");
		var teamSize = Std.parseInt(Sys.stdin().readLine());
		Sys.print("Number of runs: ");
		var runs = Std.parseInt(Sys.stdin().readLine());

		/*Thread.create(() -> {
      			for (m in motd) {
				if(!finished) {
				Sys.print("\r" + m);
				Sys.sleep(5);
				}
			}
    		});*/

		var students = new Array<Int>();
		for (i in 0...people) {
			students.push(i);
		}
		

		for (run in 0...runs) {
			students = Random.shuffle(students);
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

			
			Sys.println("\r\nResults for run " + run);
			for (t in 0...teams.length) {
				Sys.println("Team " + t + ": " + teams[t]);
			}
			Sys.print("Press enter to continue");
			Sys.stdin().readLine();
			Sys.println("\r\n");
			teams = [];

		}
	}
}
