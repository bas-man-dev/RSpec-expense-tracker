# frozen_string_literal: true

class API < Sinatra::Base
  def initialize(ledger:)
    @ledger = ledger
    super() # rest of init from Sinatra
  end
end

# later callers do this
API.new(ledger: Ledger.new)
