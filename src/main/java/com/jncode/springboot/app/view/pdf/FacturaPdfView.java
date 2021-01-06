package com.jncode.springboot.app.view.pdf;

import java.awt.Color;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.jncode.springboot.app.models.entity.Factura;
import com.jncode.springboot.app.models.entity.ItemFactura;
import com.lowagie.text.Document;
import com.lowagie.text.Phrase;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;

@Component("factura/ver")
public class FacturaPdfView extends AbstractPdfView {
	
	@Autowired
	private MessageSource messageSource;
	
	@Autowired
	private LocaleResolver localeResolver;

	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Factura factura = (Factura) model.get("factura");
		
		Locale locale = localeResolver.resolveLocale(request);
		
		PdfPTable tabla = new PdfPTable(1);
		tabla.setSpacingAfter(20);
		
		PdfPCell cell = null;
		
		cell = new PdfPCell(new Phrase(messageSource.getMessage("text.factura.ver.datos.cliente",null, locale)));
		
		cell.setBackgroundColor(new Color(184,218,255));
		cell.setPadding(8f);
		tabla.addCell(cell);
		
		tabla.addCell(factura.getCliente().toString());
		tabla.addCell(factura.getCliente().getEmail());
		
		PdfPTable tabla2 = new PdfPTable(1);
		tabla2.setSpacingAfter(20);
		
		cell = new PdfPCell(new Phrase(messageSource.getMessage("text.factura.ver.datos.factura",null, locale)));
		cell.setBackgroundColor(new Color(195,230,203));
		cell.setPadding(8f);
		
		tabla2.addCell(cell);
		
		tabla2.addCell("Numero de la factura: " + factura.getId());
		tabla2.addCell("Descripcion: " + factura.getDescripcion());
		tabla2.addCell("Fecha de compra: " + factura.getCreateAt());
	
		document.add(tabla);
		document.add(tabla2);
		
		PdfPTable tabla3 = new PdfPTable(4);
		tabla3.setWidths(new float [] {3.5f,1,1,1});
		
		tabla3.addCell(messageSource.getMessage("text.factura.ver.datos.producto",null, locale));
		tabla3.addCell(messageSource.getMessage("text.factura.ver.datos.precio",null, locale));
		tabla3.addCell(messageSource.getMessage("text.factura.ver.datos.cantidad",null, locale));
		tabla3.addCell(messageSource.getMessage("text.factura.ver.datos.subtotal",null, locale));
		
		for(ItemFactura item: factura.getItems()) {
			tabla3.addCell(item.getProducto().getNombre());
			
			cell = new PdfPCell(new Phrase(item.getProducto().getPrecio().toString()));
			cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
			tabla3.addCell(cell);
			
			cell = new PdfPCell(new Phrase(item.getCantidad().toString()));
			cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
			tabla3.addCell(cell);
			
			cell = new PdfPCell(new Phrase(item.calcularImporte().toString()));
			cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
			tabla3.addCell(cell);
		}
		
		cell = new PdfPCell(new Phrase("Total: "));
		cell.setColspan(3);
		cell.setHorizontalAlignment(PdfPCell.ALIGN_RIGHT);
		tabla3.addCell(cell);
		tabla3.addCell(factura.getTotal().toString());
		
		document.add(tabla3);
		
	}

	
	
}
