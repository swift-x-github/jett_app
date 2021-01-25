class Firma < ActiveRecord::Base

  


    def shortname_firma 
        self.shortname
    end  
    
    def description_firma 
        self.description
    end  

    
end
