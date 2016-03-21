class Search < ActiveRecord::Base

  def self.search(args)
    Course.search do
      fulltext args[:course] do
        fields(:name)
      end
      with(:subjects, args[:subject])
    end
  end

  # def courses
  #   @courses ||= find_courses
  # end
  #
  # private
  #
  # def find_courses
  #   Course.find(:all, :conditions => conditions)
  # end
  #
  # def courses_conditions
  #   ["courses.name LIKE ?", "%#{course}%", "%#{course}"] unless course.blank?
  # end
  #
  # # def subject_conditions
  # #   ["..."]
  # # end
  #
  # def conditions
  #   [conditions_clauses.join(' AND '), *conditions_options]
  # end
  #
  # def conditions_clauses
  #   condition_parts.map { |condition| condition.first }
  # end
  #
  # def conditions_options
  #   condition_parts.map { |condition| condition[1..-1] }.flatten
  # end
  #
  # def condition_parts
  #   self.methods.grep(/conditions$/).map { |m| send(m) }.compact
  # end

end
