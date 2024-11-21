class AddClosingDateToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :closing_date, :date
  end
end
