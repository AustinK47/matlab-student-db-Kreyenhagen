db = StudentDatabase();

% Add students
student1 = Student('R123', 'Austin', 18, 3.9, 'Engineering');
student2 = Student('R456', 'Chuck', 21, 3.4, 'Computer Science');
student3 = Student('R789', 'Connor', 19, 3.7, 'Engineering');
student4 = Student('R001', 'David', 20, 3.0, 'Biology');

db = db.addStudent(student1);
db = db.addStudent(student2);
db = db.addStudent(student3);
db = db.addStudent(student4);

% Save the database to a file
db.saveDatabase('studentDatabase.mat');

% Load the database from the file
db = db.loadDatabase('studentDatabase.mat');

% Search for a student by ID and display
student = db.findStudentByID('R123');
student.displayInfo();

% Get and display students by major
engineeringStudents = db.getStudentsByMajor('Engineering');
fprintf('Engineering Students:\n');
for i = 1:length(engineeringStudents)
    engineeringStudents(i).displayInfo();
end

% Generate Visualizations
Visualizations.plotGPADistribution(db.Students);
Visualizations.plotAvgGPAByMajor(db.Students);
Visualizations.plotAgeDistribution(db.Students);