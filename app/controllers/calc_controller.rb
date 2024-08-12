class CalcController < ApplicationController

  def square
  
    render({ :template => "calculations/square"})
  end
  
  def square_results

    @the_num = params.fetch("number").to_f

@the_result = @the_num ** 2
  
    render({ :template => "calculations/square_results"})
  end


  def root
  
    render({ :template => "calculations/root"})
  end

  def root_results

    @the_num_root = params.fetch("user_number").to_f

  @the_result_root = @the_num_root ** 0.5

    render({ :template => "calculations/root_results"})
  end



  def payment
  
    render({ :template => "calculations/payment"})
  end

  def payment_results

  @the_num_apr = params.fetch("user_apr").to_f.round(4)
  @the_num_principal = params.fetch("user_pv").to_f
  @the_num_years = params.fetch("user_years").to_i

  @the_result_payment = (@the_num_principal * ((@the_num_apr/100/12) * (1 + (@the_num_apr/100/12))**(@the_num_years*12)) / ((1 + (@the_num_apr/100/12))**(@the_num_years*12) - 1)).to_fs(:currency)
  
    render({ :template => "calculations/payment_results"})
  end





  def random
  
    render({ :template => "calculations/random"})
  end

  def random_results

    
  @the_num_min = params.fetch("user_min").to_f
  @the_num_max = params.fetch("user_max").to_f
  
  
    @the_result_random = rand(@the_num_min...@the_num_max)
  
    render({ :template => "calculations/random_results"})
  end
  end
