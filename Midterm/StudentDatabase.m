classdef StudentDatabase
    properties
        Students % Array of Student objects
    end
    
    methods
        % Constructor to initialize an empty database
        function obj = StudentDatabase()
            obj.Students = [];
        end
        
        % Save the database
        function saveDatabase(obj, filename)
            try
                save(filename, 'obj');
                fprintf('Database saved to %s\n', filename);
            catch ME
                warning('Failed to save database: %s', ME.message);
            end
        end
        
        % Load the database
        function obj = loadDatabase(obj, filename)
            try
                loadedData = load(filename);
                obj = loadedData.obj;
                fprintf('Database loaded from %s\n', filename);
            catch ME
                warning('Failed to load database: %s', ME.message);
            end
        end
        
        % Add a new student to the database
        function obj = addStudent(obj, student)
            obj.Students = [obj.Students, student];
        end
        
        % Find a student by their ID
        function student = findStudentByID(obj, ID)
            student = [];
            for i = 1:length(obj.Students)
                if strcmp(obj.Students(i).ID, ID)
                    student = obj.Students(i);
                    return;
                end
            end
            fprintf('Student with ID %s not found.\n', ID);
        end
        
        % Get a list of students by their major
        function studentsByMajor = getStudentsByMajor(obj, major)
            studentsByMajor = [];
            for i = 1:length(obj.Students)
                if strcmp(obj.Students(i).Major, major)
                    studentsByMajor = [studentsByMajor, obj.Students(i)];
                end
            end
        end
    end
end