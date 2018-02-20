module Api
  module V1
    # Students namespace for api routes.
    class Students < Grape::API
      include Api::V1::Defaults

      resource :students do
        desc 'List students'
        get '', root: :students do
          Student.all
        end

        desc 'Create a student'
        params do
          requires :gpa
          requires :person_attributes, type: Hash do
            requires :name
            requires :last_name
            requires :pid
            optional :birth_date
          end
        end
        post '', root: 'student' do
          Student.create(permitted_params)
        end

        desc 'Return a student'
        params do
          requires :id, type: String, desc: 'ID of the student'
        end
        get ':id', root: 'student' do
          Student.find(permitted_params[:id])
        end

        desc 'Update a student'
        params do
          requires :id, type: String, desc: 'ID of the student'
          optional :gpa
          requires :person_attributes, type: Hash do
            optional :name
            optional :last_name
            optional :pid
            optional :birth_date
          end
        end
        put ':id', root: 'student' do
          @student = Student.find(permitted_params[:id])
          @student.person.update(permitted_params[:person_attributes])
          @student.update_attribute(:gpa, permitted_params[:gpa]) if permitted_params[:gpa]
          @student
        end

        desc 'Delete a student'
        params do
          requires :id, type: String, desc: 'ID of the student'
        end
        delete ':id', root: 'student' do
          Student.find(permitted_params[:id]).destroy!
        end
      end
    end
  end
end
