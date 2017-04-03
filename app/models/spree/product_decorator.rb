# Clase para probar un punto, no debe quedarse, si el cambio hace falta en el core dustet 30/12/2014
module Spree
  Product.class_eval do

    def apartment?
      self.product_type == Spree::ProductType.find_by_name('apartment')
    end

    def self.apartments
      where(product_type_id: Spree::ProductType.find_by_name('apartment').id )
    end

  end
end
