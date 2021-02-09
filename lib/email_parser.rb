# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :emails
    def initialize(string)
        self.emails = string
    end
    def parse
        parsed_emails = []
        step_one = self.emails.split(", ")
        step_one.each do |element|
            if element.include?(" ")
                new_element = element.split(" ")
                parsed_emails.concat(new_element)
            else
                parsed_emails.push(element)
            end
        end
        return parsed_emails.uniq 
    end
end