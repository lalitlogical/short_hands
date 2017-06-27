class ShortHand < ApplicationRecord
  include Mongoid::Document
  include Mongoid::Timestamps

  searchkick word: [:description, :code], highlight: [:description, :code], suggest: [:description, :code]

  belongs_to :user
  has_many   :comments

  # General Information
  field :description, type: String
  field :tags, type: String
  field :code, type: String

  validates :description, :tags, :code, presence: true

  def owner? id
    user_id == id
  end

  def search_data
    {
      description: description,
      tags: tags,
      code: code,
      updated_at: updated_at
    }
  end

  def self._search params, aggs = [], per_page = 20
    search_text = "*"
    where = {}
    operator = "or"
    order = {_score: :desc}
    if params[:facets].present?
      fparam = params[:facets]
      search_text = fparam[:search] if fparam[:search].present?
      if fparam[:sort].present?
        order = {}
        order[fparam[:sort]] = :desc
      end

      operator = "and" if fparam[:whole].present?
    end

    self.search search_text, operator: operator,
      fields: ["description^10", "code"],
      page: params[:page], per_page: per_page,
      order: order, misspellings: {below: 5},
      highlight: true, suggest: true,
      where: where, aggs: aggs #, smart_aggs: false
  end

  def self.autocomplete params
    self.search(params[:query], {
      fields: ["description^10", "code"],
      match: :word,
      limit: 10,
      load: false,
      misspellings: {below: 5}
    }).map(&:description)
  end
end
