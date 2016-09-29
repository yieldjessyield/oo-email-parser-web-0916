# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails

  def initialize(emails)

    @emails = emails

  end

  def parse

    if emails.include?(",")
      comma_split = emails.split(", ")
      comma_split.map! do |one_email|
        if one_email.include?(" ")
          one_email.split(" ")
        else one_email
        end
      end
    else
      comma_split = emails.split(" ")
    end

comma_split.flatten.uniq
  end
end

#emails = "hot@dog.com, cup.man@gmail.com, fred@gmail.com"
