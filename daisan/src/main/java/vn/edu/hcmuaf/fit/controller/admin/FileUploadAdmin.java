package vn.edu.hcmuaf.fit.controller.admin;

import java.io.*;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/uploadProduct")
@MultipartConfig
public class FileUploadAdmin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Part filePart = request.getPart("fileImgURL");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
        if (filePart != null) {
            // get input stream of the uploaded file
            InputStream fileContent = filePart.getInputStream();

            // write the input stream to a FileOutputStream
            OutputStream outputStream = new FileOutputStream("http://localhost:8080/assets/images/productss/upload/" + File.separator + fileName);

            int read;
            final byte[] bytes = new byte[1024];

            while ((read = fileContent.read(bytes)) != -1) {
                outputStream.write(bytes, 0, read);
            }

// close the output stream
            outputStream.close();
        } else {
            // handle the case where no file was uploaded
        }
    }
}