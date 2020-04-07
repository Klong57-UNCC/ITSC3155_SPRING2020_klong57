# RubyHashes
# Part I
def array_2_hash emails, contacts
    x = 0
    if emails[x] == nil 
        return contacts
    else
        contacts.each do |key, value|
            contacts[key] = emails[x]
            x+=1
        end
    end
    return contacts
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
    x = 0
    null = 0
    if contact_info[null][null] == nil
        return contacts
    else
        contacts.each do |key,value|
            contacts[key] = {"email" => contact_info[x][0] , "phone" => contact_info[x][1]}
            x+=1
        end
    end
    return contacts
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end
