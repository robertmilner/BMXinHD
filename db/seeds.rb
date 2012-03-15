# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Start time: #{Time.now}"

channel_videos = Vimeo::Simple::Channel.videos('bmxinhd')
channel_videos.each do |video|
  video = Video.find_or_initialize_by_vendor_type_and_vendor_id('vimeo', video['id']) do |v|        
    v.vendor_type               = 'vimeo'
    v.vendor_id                 = video['id']
    v.title                     = video['title']
    v.description               = video['description']
    v.url                       = video['url']
    v.upload_date               = video['upload_date']
    v.mobile_url                = video['mobile_url']
    v.thumbnail_small           = video['thumbnail_small']
    v.thumbnail_medium          = video['thumbnail_medium']
    v.thumbnail_large           = video['thumbnail_large']
    v.user_name                 = video['user_name']
    v.user_url                  = video['user_url']
    v.user_portrait_small       = video['user_portrait_small']
    v.user_portrait_medium      = video['user_portrait_medium']
    v.user_portrait_large       = video['user_portrait_large']
    v.user_portrait_huge        = video['user_portrait_huge']
    v.stats_number_of_likes     = video['stats_number_of_likes']
    v.stats_number_of_plays     = video['stats_number_of_plays']
    v.stats_number_of_comments  = video['stats_number_of_comments']
    v.duration                  = video['duration']
    v.width                     = video['width']
    v.height                    = video['height']
    v.tags                      = video['tags']
    v.embed_privacy             = video['embed_privacy']
  end
  video.save!
end

puts "End time: #{Time.now}"

puts "#{Video.count} video created."