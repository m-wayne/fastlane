require_relative '../model'
module Spaceship
  class ConnectAPI
    class TerritoryAvailability
      include Spaceship::ConnectAPI::Model

      attr_accessor :available
      attr_accessor :content_statuses
      attr_accessor :pre_order_enabled
      attr_accessor :pre_order_publish_date
      attr_accessor :release_date

      module ContentStatus
        AVAILABLE = "AVAILABLE"
        AVAILABLE_FOR_PREORDER_ON_DATE = "AVAILABLE_FOR_PREORDER_ON_DATE"
        PROCESSING_TO_NOT_AVAILABLE = "PROCESSING_TO_NOT_AVAILABLE"
        PROCESSING_TO_AVAILABLE = "PROCESSING_TO_AVAILABLE"
        PROCESSING_TO_PRE_ORDER = "PROCESSING_TO_PRE_ORDER"
        AVAILABLE_FOR_SALE_UNRELEASED_APP = "AVAILABLE_FOR_SALE_UNRELEASED_APP"
        PREORDER_ON_UNRELEASED_APP = "PREORDER_ON_UNRELEASED_APP"
        AVAILABLE_FOR_PREORDER = "AVAILABLE_FOR_PREORDER"
        MISSING_RATING = "MISSING_RATING"
        CANNOT_SELL_RESTRICTED_RATING = "CANNOT_SELL_RESTRICTED_RATING"
        BRAZIL_REQUIRED_TAX_ID = "BRAZIL_REQUIRED_TAX_ID"
        MISSING_GRN = "MISSING_GRN"
        UNVERIFIED_GRN = "UNVERIFIED_GRN"
        CANNOT_SELL_SEVENTEEN_PLUS_APPS = "CANNOT_SELL_SEVENTEEN_PLUS_APPS"
        CANNOT_SELL_SEXUALLY_EXPLICIT = "CANNOT_SELL_SEXUALLY_EXPLICIT"
        CANNOT_SELL_NON_IOS_GAMES = "CANNOT_SELL_NON_IOS_GAMES"
        CANNOT_SELL_SEVENTEEN_PLUS_GAMES = "CANNOT_SELL_SEVENTEEN_PLUS_GAMES"
        CANNOT_SELL_FREQUENT_INTENSE_GAMBLING = "CANNOT_SELL_FREQUENT_INTENSE_GAMBLING"
        CANNOT_SELL_CASINO = "CANNOT_SELL_CASINO"
        CANNOT_SELL_CASINO_WITHOUT_GRAC = "CANNOT_SELL_CASINO_WITHOUT_GRAC"
        CANNOT_SELL_CASINO_WITHOUT_AGE_VERIFICATION = "CANNOT_SELL_CASINO_WITHOUT_AGE_VERIFICATION"
        CANNOT_SELL_FREQUENT_INTENSE_ALCOHOL_TOBACCO_DRUGS = "CANNOT_SELL_FREQUENT_INTENSE_ALCOHOL_TOBACCO_DRUGS"
        CANNOT_SELL_FREQUENT_INTENSE_VIOLENCE = "CANNOT_SELL_FREQUENT_INTENSE_VIOLENCE"
        CANNOT_SELL_FREQUENT_INTENSE_SEXUAL_CONTENT_NUDITY = "CANNOT_SELL_FREQUENT_INTENSE_SEXUAL_CONTENT_NUDITY"
        CANNOT_SELL_INFREQUENT_MILD_ALCOHOL_TOBACCO_DRUGS = "CANNOT_SELL_INFREQUENT_MILD_ALCOHOL_TOBACCO_DRUGS"
        CANNOT_SELL_INFREQUENT_MILD_SEXUAL_CONTENT_NUDITY = "CANNOT_SELL_INFREQUENT_MILD_SEXUAL_CONTENT_NUDITY"
        CANNOT_SELL_ADULT_ONLY = "CANNOT_SELL_ADULT_ONLY"
        CANNOT_SELL_FREQUENT_INTENSE = "CANNOT_SELL_FREQUENT_INTENSE"
        CANNOT_SELL_FREQUENT_INTENSE_WITHOUT_GRAC = "CANNOT_SELL_FREQUENT_INTENSE_WITHOUT_GRAC"
        CANNOT_SELL_GAMBLING_CONTESTS = "CANNOT_SELL_GAMBLING_CONTESTS"
        CANNOT_SELL_GAMBLING = "CANNOT_SELL_GAMBLING"
        CANNOT_SELL_CONTESTS = "CANNOT_SELL_CONTESTS"
        CANNOT_SELL = "CANNOT_SELL"
      end

      attr_mapping({
        available: 'available',
        contentStatuses: 'content_statuses',
        preOrderEnabled: 'pre_order_enabled',
        preOrderPublishDate: 'pre_order_publish_date',
        releaseDate: 'release_date'
      })

      def self.type
        return 'territoryAvailabilities'
      end
    end
  end
end