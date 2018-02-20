module Api
  module V1
    # Teachers namespace for api routes.
    class Teachers < Grape::API
      include Api::V1::Defaults

      resource :teachers do
        desc 'List teachers'
        get '', root: :teachers do
          Teacher.all
        end

        desc 'Create a teacher'
        params do
          requires :person_attributes, type: Hash do
            requires :name
            requires :last_name
            requires :pid
            optional :birth_date
          end
        end
        post '', root: 'teacher' do
          Teacher.create(permitted_params)
        end

        desc 'Return a teacher'
        params do
          requires :id, type: String, desc: 'ID of the teacher'
        end
        get ':id', root: 'teacher' do
          Teacher.find(permitted_params[:id])
        end

        desc 'Update a teacher'
        params do
          requires :id, type: String, desc: 'ID of the teacher'
          requires :person_attributes, type: Hash do
            optional :name
            optional :last_name
            optional :pid
            optional :birth_date
          end
        end
        put ':id', root: 'teacher' do
          @teacher = Teacher.find(permitted_params[:id])
          @teacher.person.update(permitted_params[:person_attributes])
          @teacher
        end

        desc 'Delete a teacher'
        params do
          requires :id, type: String, desc: 'ID of the teacher'
        end
        delete ':id', root: 'teacher' do
          Teacher.find(permitted_params[:id]).destroy!
        end
      end
    end
  end
end
