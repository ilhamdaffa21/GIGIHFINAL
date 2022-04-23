class ReportsController < ApplicationController
    def index
        @reports = Order.where(created_at: (DateTime.current.beginning_of_day)..(DateTime.current.end_of_day)).where(status: "PAID")
    end
end
