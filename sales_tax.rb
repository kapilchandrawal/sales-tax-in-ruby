class SalesTax
  INPUT1 = [ "1 book at 12.49", "1 music CD at 14.99", "1 chocolate bar at 0.85" ]
  INPUT2 = ["1 imported box of chocolates at 10.00", "1 imported bottle of perfume at 47.50"]
  INPUT3 = [ "1 imported bottle of perfume at 27.99", "1 bottle of perfume at 18.99", "1 packet of headache pills at 9.75", "1 box of imported chocolates at 11.25"]
 
  EXEMPT = ["chocolates","book","pills","chocolate"]

  IMPORTED_TAX = 0.05
  SALES_TAX = 0.10
  ALL_TAX = 0.15

  def initialize
    puts "Output 1:"
    input_meth INPUT1
    
  end

  def get_input input_array
    total_tax = 0
    total_price = 0
    input_array.each do |each_item|

      i_item = each_item.split
      qty = i_item[0].to_i
      price = i_item[-1].to_f
      p = each_item.split(" at ")
      product = p[0].delete("/0-9/").strip
      
      tax = tax_cal price,product
      total_tax += tax
      tax_price = (price.to_f + tax)
      total_price += tax_price
      p "#{qty} #{product}: #{tax_price.round(2)}"
    end
    p "Sales Tax: #{total_tax.round(2)}"
    p "Total: #{total_price.round(2)}"
  end

  def input_meth inp_arr
  end
end

SalesTax.new
