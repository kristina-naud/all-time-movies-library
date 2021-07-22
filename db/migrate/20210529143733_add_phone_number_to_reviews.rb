class AddPhoneNumberToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :phone_number, :string
  end
end
