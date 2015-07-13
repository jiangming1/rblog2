json.array!(@p2pproducts) do |p2pproduct|
  json.extract! p2pproduct, :id, :name, :company, :lowestAmount, :producttypelabel, :suppliernameshort, :supplierlogourl, :channelurl, :expectedprofitrate, :idea, :extrafields, :investfield, :term, :p_min_investment, :earlyBack, :earlytransfer, :p_title
  json.url p2pproduct_url(p2pproduct, format: :json)
end
