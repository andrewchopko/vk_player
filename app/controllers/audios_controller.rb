class AudiosController < ApplicationController
  def index
    @response = HTTP.get("https://api.vk.com/method/audio.get?owner_id=192665455&need_user=0&v=5.60&access_token=712228d5f3cd9f076daafd1977a517ef18f6831ac3618b60a1353cc0d05101711f7805ce71438865743ae")
    @response.to_s



    @app_id = '5702988'

    @secret_key = 'rYdQoE6SoOnztLEaIlYY'

    @base_link = 'https://api.vk.com/method/'

    @scope = 'audio,offline'

    @access_token = '712228d5f3cd9f076daafd1977a517ef18f6831ac3618b60a1353cc0d05101711f7805ce71438865743ae'


    link = @base_link + 'audio.get?owner_id=192665455&need_user=0&v=5.60&access_token=712228d5f3cd9f076daafd1977a517ef18f6831ac3618b60a1353cc0d05101711f7805ce71438865743ae'
  end

  def get_audios
    owner_id = params[:owner_id]
    url = 'https://api.vk.com/method/audio.get?owner_id='+owner_id+'&need_user=1&v=5.60&access_token=712228d5f3cd9f076daafd1977a517ef18f6831ac3618b60a1353cc0d05101711f7805ce71438865743ae'
    response = HTTP.get(url)
    @res = JSON.parse(response)

    respond_to do |format|
      format.js
    end
  end

  def get_by_author
    q = params[:q]
    url = 'https://api.vk.com/method/audio.search?q='+q+'&auto_complete=0&lyrics=0&performer_only=1&search_own=0&count=25&v=5.60&access_token=712228d5f3cd9f076daafd1977a517ef18f6831ac3618b60a1353cc0d05101711f7805ce71438865743ae'
    response = HTTP.get(url)
    @res = JSON.parse(response)

    respond_to do |format|
      format.js
    end
  end
end

#https://api.vk.com/method/audio.search?q=Beatles&auto_complete=0&lyrics=0&performer_only=1&search_own=0&count=25&v=5.60&access_token=712228d5f3cd9f076daafd1977a517ef18f6831ac3618b60a1353cc0d05101711f7805ce71438865743ae
#https://api.vk.com/method/audio.get?owner_id=192665455&need_user=1&count=10&v=5.60&access_token=712228d5f3cd9f076daafd1977a517ef18f6831ac3618b60a1353cc0d05101711f7805ce71438865743ae
