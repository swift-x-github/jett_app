class OurOfficeController < ApplicationController
   def index
    @contactmessage = Contactmessage.new
    @shortname_firma = Firma.first.shortname
    @fullname_firma = Firma.last.fullname
    @email_firma = Firma.last.email
    @website_firma = Firma.last.website
    @tel_firma = Firma.last.tel
    @address_firma = Firma.last.address
    @description_firma = Firma.last.description_firma
   end
end
