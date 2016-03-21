class Course < ActiveRecord::Base
  serialize :subjects
  serialize :requirements
  has_many :enrollments, dependent: :destroy

  searchable do
    text :code
    text :name
    text :description
    # text :comments do
    #   comments.map { |comment| comment.body }
    # end
    text :requirements do
      requirements.map { |requirement| requirement }
    end

    string :subjects, :multiple => true do
      subjects.map { |subject| subject["id"] }
    end

    float :credits
    boolean :independent_study
    # boolean :featured
    # integer :blog_id
    # integer :author_id
    # integer :category_ids, :multiple => true
    # double  :average_rating
    # time    :published_at
    # time    :expired_at

    # string  :sort_title do
    #   title.downcase.gsub(/^(an?|the)/, '')
    # end
  end

end
