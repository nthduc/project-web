package vn.edu.hcmuaf.fit.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.util.ArrayList;

@WebServlet(name = "/Category", urlPatterns = "/Category")
public class Category extends HttpServlet {

    public static ArrayList<String> filtersList;
    public static String filtersPrice;
    public static String filtersBrand;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding ("UTF-8");
        response.setCharacterEncoding ("UTF-8");

        filtersList = new ArrayList<>();
        ArrayList<String> filtersListBrand = new ArrayList<>();
        HttpSession session = request.getSession();
        int page;
        int maxitem;
        String filters = null;
        String category = "";
        String sort1 = "aaaaaaaaaaaaaaaaaaaaa";
        String sql = " FROM product WHERE id LIKE CONCAT(?,'%')";
        session.setAttribute("statusSearch","Category");


        if (request.getParameter("category") == null) {
            try {
                category = (String) session.getAttribute("category");
                System.out.println("try 2 " + category);
            } catch (NullPointerException e1) {
                category = "";
            }
        } else {
            category = request.getParameter("category");
            session.setAttribute("category", category);
        }


        //try maxitem
        try {
            maxitem = Integer.parseInt(request.getParameter("maxitem"));
        } catch (NumberFormatException e) {
            try {
                maxitem = (int) session.getAttribute("maxitem2");
            } catch (NumberFormatException | NullPointerException e1) {
                maxitem = 9;
            }
        }
        //try page
        try {
            page = Integer.parseInt(request.getParameter("pages"));
        } catch (NumberFormatException e) {
            page = 1;
        }
        //try sort
        if (request.getParameter("sort") == null) {
            if ((String) session.getAttribute("sort2") == null) {
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
                System.out.println("-----------" + request.getParameter("filters"));
                filters = request.getParameter("filters");

                if (filters.substring(0, filters.length() - 2).equals("price")) {
                    switch (filters.charAt(6)) {
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
                } else if (filters.substring(0, 2).equals("br")){
                    switch (filters.substring(3,filters.length())) {
                        case "baya":
                            filtersBrand = " AND company = 'daisan' ";
                            break;
                        case "oem":
                            filtersBrand = " AND company = 'oem' ";
                            break;
                        case "sande":
                            filtersBrand = " AND company = 'sande' ";
                            break;
                        case "yokohama":
                            filtersBrand = " AND company = 'yokohama' ";
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
                } catch (NullPointerException e1) {

                }
                if (!filtersList.isEmpty()) {
                    sql += "AND ( ";
                    for (String item : filtersList) {
                        System.out.println("-----------" + item);
                        sql += "tag = '" + item + "' OR ";
                    }
                    sql = sql.substring(0, sql.length() - 4) + ")";
                }


                session.setAttribute("filtersList", filtersList);
                session.setAttribute("filtersPrice", filtersPrice);
                session.setAttribute("filtersBrand", filtersBrand);
            } else {
                System.out.println("-@----------" + request.getParameter("filters"));
                try {
                    filtersList = (ArrayList<String>) session.getAttribute("filtersList");
                    filtersPrice = (String) session.getAttribute("filtersPrice");
                    filtersBrand = (String) session.getAttribute("filtersBrand");
//                setFiltersList((ArrayList<String>) session.getAttribute("filtersList"));
                    if (!filtersList.isEmpty()) {
                        sql += "AND ( ";
                        for (String item : filtersList) {
                            System.out.println("-----------" + item);
                            sql += "tag = '" + item + "' OR ";
                        }
                        sql = sql.substring(0, sql.length() - 4) + ")";
                    }

                } catch (NullPointerException e1) {
                    System.out.println("nullpointer");
                }
            }
        } catch (NullPointerException e) {
            try {
                filtersList = (ArrayList<String>) session.getAttribute("filtersList");
                filtersPrice = (String) session.getAttribute("filtersPrice");
                filtersBrand = (String) session.getAttribute("filtersBrand");
//                setFiltersList((ArrayList<String>) session.getAttribute("filtersList"));
                if (!filtersList.isEmpty()) {
                    sql += "AND ( ";
                    for (String item : filtersList) {
                        System.out.println("-----------" + item);
                        sql += "tag = '" + item + "' OR ";
                    }
                    sql = sql.substring(0, sql.length() - 4) + ")";
                }
            } catch (NullPointerException e1) {
                System.out.println("nullpointer");
            }
        }


        System.out.println("sql: " + sort1);

        if (filtersPrice == null) {
            filtersPrice = " AND 0 = 0";
        }
        if (filtersBrand == null) {
            filtersBrand = " AND 0 = 0";
        }
        sql += filtersPrice;
        sql += filtersBrand;
        switch (sort1) {
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
                break;
        }


        sql += " LIMIT ?,?";
        System.out.println("filtersPrice: " + filtersPrice);
        System.out.println("filtersBrand: " + filtersBrand);
        System.out.println("Category: " + category);
        System.out.println("page: " + page);
        System.out.println("maxitem: " + maxitem);
        System.out.println("sql: " + sql);


        session.setAttribute("category1", category);
        session.setAttribute("pages1", page);
        session.setAttribute("maxitem1", maxitem);
        session.setAttribute("maxitem2", maxitem);
        session.setAttribute("sort2", sort1);
        session.setAttribute("sql", sql);


        System.out.println("S-Category: " + session.getAttribute("category1"));
        System.out.println("S-page: " + session.getAttribute("pages1"));
        System.out.println("S-maxitem: " + session.getAttribute("maxitem1"));
        System.out.println("S-sort: " + session.getAttribute("sort2"));

        request.getRequestDispatcher("PaginationProduct").forward(request, response);
//        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("filtersList");
        session.removeAttribute("filtersPrice");
        session.removeAttribute("filtersBrand");
        doGet(request,response);
    }

    public void removeItem(String item) throws ServletException, IOException {
        filtersList.remove(item);

    }

    public static ArrayList<String> getFiltersList() {
        return filtersList;
    }

    public static void setFiltersList(ArrayList<String> filtersList) {
        Category.filtersList = filtersList;
    }
}