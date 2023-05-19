# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    
    def initialize(addresses)
        @addresses = addresses
    end 

    def parse
        # Split the string into individual email adresses using commas and whitespace as delimeters
        email_addresses = @addresses.split(/[, ]+/)

        # Remove any empty or nil values from the array
        email_addresses.reject!(&:empty?)

        # add 'uniq' to remove duplicate email addresses
        email_addresses.uniq
    end 

end 

email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)

parser.parse