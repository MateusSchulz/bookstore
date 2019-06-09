require 'rails_helper'
require 'spec_helper'
require '../app/models/books'

RSpec.describe Books, type: :model do
  context 'validation tests' do
    it {should validate_presence_of :name}
    it "should pass" do
      books=Books.new(name:'Calculo',description:'Become the master of Calculo in one week',price:'100',author:'Guillermo',category:'Math',cover:'n faço ideia da capa').save
      expect(books).to eq(true)
    end
    it "should have name" do
      books=Books.new(description:'Become the master of Calculo in one week',price:'100',author:'Guillermo',category:'Math',cover:'n faço ideia da capa').save
      expect(books).to eq(false)
    end
    it "should have description" do
      books=Books.new(name:'Calculo',price:'100',author:'Guillermo',category:'Math',cover:'n faço ideia da capa').save
      expect(books).to eq(false)
    end
    it "should have price" do
      books=Books.new(name:'Calculo',description:'Become the master of Calculo in one week',author:'Guillermo',category:'Math',cover:'n faço ideia da capa').save
      expect(books).to eq(false)
    end
    it 'should verif price type' do
      books=Books.new(name:'Calculo',description:'Become the master of Calculo in one week',price:'a',author:'Guillermo',category:'Math',cover:'n faço ideia da capa').save
      expect(books.price).to eq('100')#AQUI DEVE VERIFICAR SE É INTEIRO, N SEI FAZER AINDA
    end
    it "should verif cover size" do
      books=Books.new(name:'Calculo',description:'Become the master of Calculo in one week',price:'100',author:'Guillermo',category:'Math',cover:'n faço ideia da capa').save#?
      expect(books).to eq(false)
    end
    it "should verif cover type" do
      books=Books.new(name:'Calculo',description:'Become the master of Calculo in one week',price:'100',author:'Guillermo',category:'Math',cover:'n faço ideia da capa').save#?
      expect(books).to eq(false)
    end
    it "should have cover" do
      books=Books.new(name:'Calculo',description:'Become the master of Calculo in one week',price:'100',author:'Guillermo',category:'Math').save#?
      expect(books).to eq(false)
    end

  end
end
