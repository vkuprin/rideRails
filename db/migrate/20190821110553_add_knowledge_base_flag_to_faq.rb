class AddKnowledgeBaseFlagToFaq < ActiveRecord::Migration[6.0]
  def change
    add_column :faqs, :knowledge_base, :boolean
  end
end
