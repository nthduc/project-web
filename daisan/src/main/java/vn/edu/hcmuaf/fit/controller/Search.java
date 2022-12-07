package vn.edu.hcmuaf.fit.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.util.ArrayList;

@WebServlet(name = "/Search", urlPatterns = "/Search")
public class Search extends HttpServlet {

    public static ArrayList<String> filtersList;
    public static String filtersPrice;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding ("UTF-8");
        response.setCharacterEncoding ("UTF-8");

        filtersList = new ArrayList<>();
        ArrayList<String> filtersListBrand = new ArrayList<>();
        HttpSession session = request.getSession();
        int page = 1;
        int maxitem;
        String filters = null;
        String category = "plv";
        String sort1 = "aaaaaaaaaaaaaaaaaaaaa";
        String search;
        if (request.getParameter("search") != null){
            search = request.getParameter("search");
        } else {
            search = (String) session.getAttribute("search");
        }
        String sql = "FROM product WHERE (id LIKE CONCAT(?,'%') OR 0=0)" + "AND (name LIKE CONCAT('"+search+"','%'))";

        session.setAttribute("search",search);

        try {
            maxitem = Integer.parseInt(request.getParameter("maxitem"));
        } catch (NumberFormatException e){
            try {
                maxitem = (int) session.getAttribute("maxitem2");
            } catch (NumberFormatException | NullPointerException e1){
                maxitem = 9;
            }
        }
        //try page
        try {
            page = Integer.parseInt(request.getParameter("pages"));
        } catch (NumberFormatException e){
            page = page;
        }
        //try sort
        if (request.getParameter("sort") == null){
            if ((String) session.getAttribute("sort2") == null){
                sort1 = "none";
            } else {
                sort1 = (String) session.getAttribute("sort2");
            }

        } else {
            sort1 = request.getParameter("sort");
        }
        //try filter
        try {
            if (request.getParameter("filters") != null) {
                System.out.println("-----------"+request.getParameter("filters"));
                filters = request.getParameter("filters");

                if (filters.substring(0,filters.length()-2).equals("price")){
                    switch (filters.charAt(6)){
                        case 'a':
                            filtersPrice = " AND price < 500000";
                            break;
                        case 'b':
                            filtersPrice = " AND price > 500000 AND price <= 1000000 ";
                            break;
                        case 'c':
                            filtersPrice = " AND price > 1000000 AND price <= 2000000 ";
                            break;
                        case 'd':
                            filtersPrice = " AND price > 2000000";
                            break;
                    }
                } else {
                    filtersList.add(filters);
                }

                try {
                    ArrayList<String> beforeList = (ArrayList<String>) session.getAttribute("filtersList");
                    for (String tmp : beforeList) {
                        filtersList.add(tmp);
                    }
                } catch (NullPointerException e1){

                }
                if (!filtersList.isEmpty()){
                    sql += "AND ( ";
                    for (String item : filtersList) {
                        System.out.println("-----------"+item);
                        sql += "tag = '" + item + "' OR ";
                    }
                    sql = sql.substring(0,sql.length()-4) + ")";
                }


                session.setAttribute("filtersList",filtersList);
                session.setAttribute("filtersPrice",filtersPrice);
            } else {
                System.out.println("-@----------"+request.getParameter("filters"));
                try {
                    filtersList = (ArrayList<String>) session.getAttribute("filtersList");
                    filtersPrice = (String) session.getAttribute("filtersPrice");

                    if (!filtersList.isEmpty()){
                        sql += "AND ( ";
                        for (String item : filtersList) {
                            System.out.println("-----------"+item);
                            sql += "tag = '" + item + "' OR ";
                        }
                        sql = sql.substring(0,sql.length()-4) + ")";
                    }

                } catch (NullPointerException e1) {
                    System.out.println("nullpointer");
                }
            }
        } catch (NullPointerException e){
            try {
                filtersList = (ArrayList<String>) session.getAttribute("filtersList");
                filtersPrice = (String) session.getAttribute("filtersPrice");

                if (!filtersList.isEmpty()){
                    sql += "AND ( ";
                    for (String item : filtersList) {
                        System.out.println("-----------"+item);
                        sql += "tag = '" + item + "' OR ";
                    }
                    sql = sql.substring(0,sql.length()-4) + ")";
                }
            } catch (NullPointerException e1) {
                System.out.println("nullpointer");
            }
        }


        System.out.println("sql: " + sort1);

        if (filtersPrice == null){
            filtersPrice = " AND 0 = 0";
        }
        sql += filtersPrice;
        switch (sort1){
            case "lowprice":
                sql += " ORDER BY price ASC ";
                //session.setAttribute("sql",sql);
                break;
            case "highprice":
                sql += " ORDER BY price DESC ";
                //session.setAttribute("sql",sql);
                break;
            case "lowalpha":
                sql += " ORDER BY name ASC ";
                //session.setAttribute("sql",sql);
                break;
            case "highalpha":
                sql += " ORDER BY name DESC ";
                //session.setAttribute("sql",sql);
                break;
            case "none":
//               sql = "SELECT * FROM product WHERE id LIKE CONCAT(?,'%') LIMIT ?,?";
                //session.setAttribute("sql",sql);
                break;
        }


        sql +=  " LIMIT ?,?";
        System.out.println("filtersPrice: " + filtersPrice);
        System.out.println("Category: " + category);
        System.out.println("page: " + page);
        System.out.println("maxitem: " + maxitem);
        System.out.println("sql: " + sql);


        session.setAttribute("category1",category);
        session.setAttribute("pages1",page);
        session.setAttribute("maxitem1",maxitem);
        session.setAttribute("maxitem2",maxitem);
        session.setAttribute("sort2",sort1);
        session.setAttribute("sql",sql);

        session.setAttribute("statusSearch","Search");

        request.getRequestDispatcher("PaginationProduct").forward(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("filtersList");
        session.removeAttribute("filtersPrice");
        doGet(request,response);
    }

}