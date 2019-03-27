class Application

  def call(env)
    resp = Rack::Response.new
    time=Time.now
    zone=Time.zone
    resp.write "#{Time.zone}"
    if time.hour<12
      resp.write "Good Morning! Time now: #{time}"
    else
      resp.write "Good Afternoon! Time now: #{time}"
    end
    resp.finish
  end

end
