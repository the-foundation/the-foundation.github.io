class Page < ActiveRecord::Base
  named_scope :all_root, :conditions => { :parent_id => nil }
  
  acts_as_tree :order => 'title'
  
  validates_presence_of :title, :body
  validates_uniqueness_of :permalink
  before_save :update_permalink
  
  def parent?
    parent
  end
  
  def update_permalink
    self[:permalink] = title[0..20].downcase.gsub(/[^a-z0-9_-]+/, '-')
    conditions = new_record? ? ['permalink LIKE ?', "#{permalink}%"] : ['id != ? AND permalink LIKE ?', id, "#{permalink}%"]
    potential_dupes = self.class.find(:all, :conditions => conditions)
    return unless potential_dupes
    dupe_integers = potential_dupes.map do |potential_dupe|
      if permalink == potential_dupe.permalink
        1
      else
        suffix = potential_dupe.permalink[permalink.length, potential_dupe.permalink.length - 1]
        suffix.match(/\-[0-9]+$/) ? suffix[1, suffix.length].to_i : nil
      end
    end.compact.sort
    return if dupe_integers.empty?
    self[:permalink] += "-#{dupe_integers.last + 1}"
  end
end