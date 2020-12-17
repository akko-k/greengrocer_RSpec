require_relative '../lib/greengrocer_main_class'

# ▼（単体テスト）インスタンスの生成（異常系は対処していないのでなし）
RSpec.describe Product do
  describe "【単体テスト1 正常系】 Productsクラスの情報" do
    let(:params) {{name: "トマト", price: 100}}
    let(:params2) {{name: "きゅうり", price: 200}}
    context "名前がトマトの場合" do
      it "idが正しく振られること" do
        product = Product.new(params)
        expect(product.id).to eq 37
      end
      it "名前の値が正しいこと" do
        product = Product.new(params)
        expect(product.name).to eq "トマト"
      end
      it "金額の値が正しいこと" do
        product = Product.new(params)
        expect(product.price).to eq 100
      end
    end
    context "名前がきゅうりの場合" do
        it "idが正しく振られること" do
          product = Product.new(params2)
          expect(product.id).to eq 40
        end
        it "名前の値が正しいこと" do
          product = Product.new(params2)
          expect(product.name).to eq "きゅうり"
        end
        it "金額の値が正しいこと" do
          product = Product.new(params2)
          expect(product.price).to eq 200
        end
      end
  end
end