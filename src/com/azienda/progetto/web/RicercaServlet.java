package com.azienda.progetto.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.azienda.progetto.util.Costanti;

@WebServlet("/ricercaServlet")
public class RicercaServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	List<String> lista = new ArrayList<String>();
       
    public RicercaServlet() {
        lista.add("Napoli");
        lista.add("Roma");
        lista.add("Napoli");
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String inputCitta = request.getParameter(Costanti.NAME_CITTA);
		List<String> lista2 = new ArrayList<String>();
		for (int i=0;i<lista.size();i++) {
			String cittaCorrente = lista.get(i);
			if (inputCitta.equalsIgnoreCase(cittaCorrente)) {
				lista2.add(cittaCorrente);
				
			}
		}
		request.setAttribute(Costanti.LISTA_GENERATA, lista2);
		request.getRequestDispatcher("/jsp/risultatiRicerca.jsp").forward(request,response);

	}

}
