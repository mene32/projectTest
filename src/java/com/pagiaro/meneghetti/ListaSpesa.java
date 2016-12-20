package com.pagiaro.meneghetti;

import java.io.Serializable;
import java.util.ArrayList;

/**
 * Classe per gestire la lista della spesa
 * @author FSEVERI\pagiaro3283
 */
public class ListaSpesa implements Serializable{
    private ArrayList<String> lista;
    private boolean valid;

    /**
     * Costruttore non parametrico
     */
    public ListaSpesa() {
        lista = new ArrayList<String>();
        valid = true;
    }

    /**
     * Getter
     * @return la lista
     */
    public ArrayList<String> getLista() {
        return lista;
    }

    /**
     * Setter
     * @param lista nuovo oggetto arraylist 
     */
    public void setLista(ArrayList<String> lista) {
        this.lista = lista;
    }
    
    /**
     * Metodo che aggiunge un prodotto nella lista 
     * @param prodotto stringa con il prodotto
     * @return 
     */
    public boolean aggiungi(String prodotto)  {
        String prod = prodotto.trim();
        if(!lista.contains(prod) && !prod.isEmpty())
            return valid = lista.add(prod);
        return valid = false;
    }
    
    /**
     * Metodo per rimuovere un prodotto
     * @param prodotto stringa col prodotto
     * @return 
     */
    public boolean rimuovi(String prodotto) {
        return valid = lista.remove(prodotto);
    }
    
    /**
     * 
     * @param prodotto 
     */
    public void spostaSu(String prodotto) {
        int i = lista.indexOf(prodotto);
        lista.remove(prodotto);
        lista.add(--i, prodotto);
    }
    
    /**
     * 
     * @param prodotto 
     */
    public void spostaGiu(String prodotto) {
        int i = lista.indexOf(prodotto);
        lista.remove(prodotto);
        lista.add(++i, prodotto);
    }
    
    /**
     * Metodo per rimuovere un prodotto
     * @param i 
     * @return 
     */
    public boolean rimuovi(int i) {
        lista.remove(i);
        return true;
    }
    
    /**
     * 
     * @param i 
     */
    public void spostaSu(int i) {
        String prodotto = lista.remove(i);
        lista.add(--i, prodotto);
    }
    
    /**
     * 
     * @param i 
     */
    public void spostaGiu(int i) {
        String prodotto = lista.remove(i);
        lista.add(++i, prodotto);
    }
    
    /**
     * 
     * @return 
     */
    public boolean isValid() {
        return valid;
    }

    /**
     * @return la stringa
     */
    @Override
    public String toString() {
        return "ListaSpesa{" + "lista=" + lista + '}';
    }
}
