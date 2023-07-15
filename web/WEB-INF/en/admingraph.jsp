<%-- 
    Document   : admingraph
    Created on : Jul 14, 2023, 12:36:35 AM
    Author     : Hussein
--%>

<%@page import="java.util.Vector"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Appointment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table>
            <c:forEach items="${appts}" var="appt">
                <tr><td>${appt.getTimeid().getFulldate().getTruncatedDate()}</td><td>${appt.getAppointmentid()}</td><td>${appt.getStatus()}</td><td>${appt.getUserid().getFirstname()}</td></tr>
            </c:forEach>


        </table>
        <h1>Canvas : </h1>
<canvas id="lineChart"></canvas>

<script>
    // Parse xValuesJson and yValuesJson into arrays
    var xValuesTotal = JSON.parse('${xValuesTotalJson}');
    var yValuesTotal = JSON.parse('${yValuesTotalJson}');
    //var xValuesCanceled = JSON.parse('${xValuesCanceledJson}');
    var yValuesCanceled = JSON.parse('${yValuesCanceledJson}');
    //var xValuesComplete = JSON.parse('${xValuesCompleteJson}');
    var yValuesComplete = JSON.parse('${yValuesCompleteJson}');

    // Create the line chart using Chart.js
    var ctx = document.getElementById('lineChart').getContext('2d');
    var lineChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: xValuesTotal,
            datasets: [
                {
                    label: 'Total Appointments',
                    data: yValuesTotal,
                    fill: false,
                    borderColor: 'blue',
                    tension: 0.1
                },
                {
                    label: 'Canceled Appointments',
                    data: yValuesCanceled,
                    fill: false,
                    borderColor: 'red',
                    tension: 0.1
                },
                {
                    label: 'Complete Appointments',
                    data: yValuesComplete,
                    fill: false,
                    borderColor: 'green',
                    tension: 0.1
                }
            ]
        },
        options: {
            // Add any additional options for styling and customization
        }
    });
</script>
    </body>
</html>
