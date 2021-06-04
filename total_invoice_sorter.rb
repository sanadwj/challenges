def total_invoice_sorter(invoices)
  invoices.sort_by do |invoice|
    invoice.total
  end.reverse
end

describe 'Total in sorter' do
  it 'sort the invoices by the total' do
    Invoice = Struct.new(:name, :total, :category)
    google = Invoice.new("Google", 500, "Marketing")
    facebook = Invoice.new("FaceBook", 600, "Ads")
    amazon = Invoice.new("Amazon", 300, "Ecommerce")

    invoices = [google, facebook, amazon]

    expect(total_invoice_sorter(invoices).last.name).to eq("Amazon")
  end
end
