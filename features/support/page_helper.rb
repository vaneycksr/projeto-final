# frozen_string_literal: true

# configura as chamadas das pages
# e pra cada uma das pages da um require
Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].sort.each do |file|
  require file
end

# pra instanciar, apenas chama o metodo
module Pages
  def user
    @user = User.new
  end
end
