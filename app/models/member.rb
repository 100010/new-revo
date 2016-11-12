class Member < ApplicationRecord

  AVAILABLE_DEPERTMENT_HASH    = { "人間科学部" => 0, "スポーツ科学部" => 1 }
  AVAILABLE_UNDERGRADUATE_HASH = { "人間科学科" => 0, "スポーツ科学科" => 1 }
  AVAILABLE_POSITION_HASH      = { "代持ち" => 0, "幹部" => 1 }

  enum depertment: Member::AVAILABLE_DEPERTMENT_HASH
  enum undergraduate: Member::AVAILABLE_UNDERGRADUATE_HASH
  enum position: Member::AVAILABLE_POSITION_HASH

  mount_uploader :profile_image, ImageUploader

end
