class AddOpeningDateToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :opening_date, :date
  end
end
