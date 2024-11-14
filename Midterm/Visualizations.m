classdef Visualizations
    methods (Static)
        % GPA Distribution Histogram
        function plotGPADistribution(students)
            GPAs = [students.GPA];
            figure;
            histogram(GPAs, 10);
            title('GPA Distribution');
            xlabel('GPA');
            ylabel('Frequency');
        end
        
        % Average GPA by Major
        function plotAvgGPAByMajor(students)
            majors = unique({students.Major});
            avgGPAs = zeros(1, length(majors));
            for i = 1:length(majors)
                majorStudents = students(strcmp({students.Major}, majors{i}));
                avgGPAs(i) = mean([majorStudents.GPA]);
            end
            figure;
            bar(avgGPAs);
            set(gca, 'XTickLabel', majors);
            title('Average GPA by Major');
            xlabel('Major');
            ylabel('Average GPA');
        end
        
        % Age Distribution Histogram
        function plotAgeDistribution(students)
            ages = [students.Age];
            figure;
            histogram(ages, 10);
            title('Age Distribution');
            xlabel('Age');
            ylabel('Frequency');
        end
    end
end