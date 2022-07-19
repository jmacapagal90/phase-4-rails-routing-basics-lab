class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students_by_grades = Student.order("grade DESC")
        render json: students_by_grades
    end

    def highest_grade
        student_highest_grade = Student.order("grade DESC")
        render json: student_highest_grade.first
    end
end
