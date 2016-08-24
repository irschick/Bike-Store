class StaticPagesController < ApplicationController
  def about
  end

  def contact
  end

  def landing_page
    # @featured_product = Product.first
    @products = Product.limit(3)
    puts "here are the products"
    puts @products
  end

  def thank_you
    puts "calling thank you"
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
                            :to => 'michael.irschick@gmail.com',
                            :subject => "A new contact form message from #{@name}",
                            :body => @message).deliver_now
  end
end
