module Spree
  class CalculatorApartment < BaseCalculator

    def adults_range
      (1..3).to_a
    end

    def children_range
      (0..2).to_a
    end

    def calculate_price(context, product, variant, options)
      return [price:product.price.to_f] if product.rates.empty?
      # rooms = context.rooms(options).to_i rescue 1
      adults_hash = {1 => 'standard'}

      list = product.variants.where(id: variant.id).first.rates
      array = []
      list.each do |r|
        if Date.parse(r.start_date) <= Date.parse(context.start_date(options).to_s) &&
            Date.parse(r.end_date) >= Date.parse(context.end_date(options).to_s)
          days = context.end_date(options).to_date - context.start_date(options).to_date rescue 1

          # TODO: what is this 'context.adult(options)'?
          avg_price = r.send(:standard).to_f
          price = context.persons(options).to_i * avg_price * days
          array << {price: price, rate: r.id, avg: avg_price}
        end
      end
      array
    end

    def get_rate_price(rate, persons)
      # TODO: what is rate?
      persons.to_i * rate.send('standard').to_f
    end
  end
end
