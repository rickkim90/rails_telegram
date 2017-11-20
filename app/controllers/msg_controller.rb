class MsgController < ApplicationController
  def new
  end

  def msg_send

    @msg = params[:msg] #우리가 new에서 보낸 메시지

    token = "token"
    response = RestClient.get("https://api.telegram.org/bot#{token}/getUpdates")
    res = JSON.parse(response)

    chat_id = res["result"][0]["message"]["chat"]["id"]

    #msg = "오늘 영화 랭킹 1위는 #{movie} 입니다"
    RestClient.get(URI.encode("https://api.telegram.org/bot#{token}/sendmessage?chat_id=#{chat_id}&text=#{@msg}"))
  end
end
