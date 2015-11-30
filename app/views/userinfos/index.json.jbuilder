json.array!(@userinfos) do |userinfo|
  json.extract! userinfo, :id, :user_id, :date_of_birth, :gender, :mobile, :address
  json.url userinfo_url(userinfo, format: :json)
end
