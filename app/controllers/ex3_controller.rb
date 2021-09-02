class Ex3Controller < ApplicationController
  def createpost
    msg = params[:msg]
    user_id = params[:user_id]
    user_id = Integer(user_id) rescue nil
    @num_user = User.count
    @createcomplete = true
    @failbynotint = false
    @failbyUIDnotinscope = false

    #case1 : user_id is not int
    if (user_id == nil)
      @createcomplete = false
      @failbynotint = true
    end

    #case2 : user input user_id that don't have in database
    if ( user_id !=nil and(user_id < 1 or user_id > @num_user))
      @createcomplete = false
      @failbyUIDnotinscope = true
    end

    if (@createcomplete)
      Post.create(msg:msg ,user_id:user_id)
    end
  end

  def userread
  end
end
