class Subscriber < ApplicationRecord
    validates :name, presence: true,length: { minimum: 1 }
    validates :email, email_format: { message: "doesn't look like an email address" }
  
    before_create :record_data_brt
  
    private 
      def record_data_brt 
        now_in_Sao_Paulo = Time.use_zone("America/Sao_Paulo") do
          Time.current
        end
        self.data_brt = now_in_Sao_Paulo.to_s
      end
end
