class NameValidator < ActiveModel::Validator
  def validate(record)
    if record.nil? || record.name.length <= 2
      record.errors.add(:name, 'need to be begger than 2')
    end
  end
end