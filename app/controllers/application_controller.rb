class ApplicationController < ActionController::API
  before_filter :header

  def header
    headers['Access-Control-Allow-Origin'] = '*'
  #  headers['Access-Control-Allow-Origin'] = request.headers['Origin'] || '*'
  #  headers['Access-Control-Allow-Credentials'] = 'true'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end

  def options
   head :status => 200, :'Access-Control-Allow-Headers' => 'accept, content-type'
  end
end
