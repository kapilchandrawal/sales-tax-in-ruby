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
    get_input INPUT1
    
  end

end

SalesTax.new
