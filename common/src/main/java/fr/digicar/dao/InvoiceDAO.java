package fr.digicar.dao;

import fr.digicar.model.Invoice;

import java.util.Date;
import java.util.List;

public interface InvoiceDAO {

    void addInvoice(Invoice inv);

    void updateInvoice(Invoice inv);

    Invoice getInvoice(int invoiceId);

    Invoice getInvoiceByUserAndDate(int userId, Date date);

    List<Invoice> getInvoices();

    List<Invoice> invoiceByDate(Date date);

}
