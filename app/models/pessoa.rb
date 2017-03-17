class Pessoa < ActiveRecord::Base

	extend FriendlyId
  friendly_id :nome, use: :slugged
  
  private

    def should_generate_new_friendly_id?
      new_record?
    end
end
