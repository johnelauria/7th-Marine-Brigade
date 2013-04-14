class AddDetailsToEducationalBackgrounds < ActiveRecord::Migration
  def change
    add_column :educational_backgrounds, :elementary_standing, :string
    add_column :educational_backgrounds, :elementary_completed, :boolean, default: true
    add_column :educational_backgrounds, :high_school_standing, :string
    add_column :educational_backgrounds, :high_school_completed, :boolean, default: true
    add_column :educational_backgrounds, :college_standing, :string
    add_column :educational_backgrounds, :college_completed, :boolean, default: true
    add_column :educational_backgrounds, :post_grad_standing, :string
    add_column :educational_backgrounds, :post_grad_completed, :boolean, default: true
    add_column :educational_backgrounds, :other_standing, :string
    add_column :educational_backgrounds, :other_completed, :boolean, default: true
  end
end
