class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Grade.sort_by { |int| -int.sort}
        render json: grades

    end

end
