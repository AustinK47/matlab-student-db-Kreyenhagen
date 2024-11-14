classdef Student
    properties
        ID
        Name
        Age
        GPA
        Major
    end
    
    methods
        % Constructor to initialize the Student object
        function obj = Student(ID, Name, Age, GPA, Major)
            obj.ID = ID;
            obj.Name = Name;
            obj.Age = Age;
            obj.GPA = GPA;
            obj.Major = Major;
        end
        
        % Display student information
        function displayInfo(obj)
            fprintf('ID: %s\n', obj.ID);
            fprintf('Name: %s\n', obj.Name);
            fprintf('Age: %d\n', obj.Age);
            fprintf('GPA: %.2f\n', obj.GPA);
            fprintf('Major: %s\n', obj.Major);
        end
        
        % Update the GPA of a student
        function obj = updateGPA(obj, newGPA)
            if newGPA >= 0 && newGPA <= 4
                obj.GPA = newGPA;
            else
                warning('GPA must be between 0 and 4');
            end
        end
    end
end