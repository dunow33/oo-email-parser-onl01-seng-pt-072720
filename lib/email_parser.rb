# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails
  
  @@emails = []
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    #email_list = @emails.gsub(/, /, " ").split
    
    email_list = @emails.split(/", "/)
    
    email_list.each do | email |
      @@emails << email
    end
    
    email_array = @@emails.uniq!
    email_array
  end
end