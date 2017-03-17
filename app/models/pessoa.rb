class Pessoa < ActiveRecord::Base
	# attr_accessible :slug, :nome, :data_nascimento, :idade

	extend FriendlyId
  friendly_id :nome, use: :slugged
  
  private

    def should_generate_new_friendly_id?
      new_record?
    end
end
