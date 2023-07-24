class InvoicesController < Sinatra::Base
    set :default_content_type, 'application/json'
  
    # GET route to fetch all invoices
    get "/invoices" do
      invoices = Invoice.all
      invoices.to_json
    end
  
    # POST route to create a new invoice
    post "/invoices" do
      invoice = Invoice.create(
        invoice_date: params[:invoice_date],
        due_date: params[:due_date],
        total_amount: params[:total_amount],
        patient_id: params[:patient_id],
        appointment_id: params[:appointment_id]
      )
      invoice.to_json
    end
  
    # PUT route to update an existing invoice
    put "/invoices/:id" do
      invoice = Invoice.find(params[:id])
      invoice.update(
        invoice_date: params[:invoice_date],
        due_date: params[:due_date],
        total_amount: params[:total_amount],
        patient_id: params[:patient_id],
        appointment_id: params[:appointment_id]
      )
      invoice.to_json
    end
  
    # DELETE route to delete an invoice
    delete "/invoices/:id" do
      invoice = Invoice.find(params[:id])
      invoice.destroy
      { message: "Invoice deleted successfully!" }.to_json
    end
  end
  