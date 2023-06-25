<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <title>Tai Yang Clinic</title>

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/availability.css">
        <script src="js/availability.js"></script>

        <!--google fonts -->

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

        <!--google material icon-->
        <link href="https://fonts.googleapis.com/css2?family=Material+Icons"rel="stylesheet">

    </head>
    <body>

        <div class="wrapper">

            <div class="body-overlay"></div>

            <!-- Sidebar  -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3><img src="logo" class="img-fluid"/><span>Tai Yang Clinic</span></h3>
                </div>
                <ul class="list-unstyled components">
                    <li  class="active">
                        <a href="admin" class="dashboard"><i class="material-icons">dashboard</i>
                            <span>Today</span></a>
                    </li>


                    <li class="dropdown">
                        <a href="ausers" data-toggle="collapse" aria-expanded="false" 
                           class="dropdown-toggle">
                            <i class="material-icons">aspect_ratio</i>Users</a>
                    </li>

                    <li class="dropdown">
                        <a href="aavailability" data-toggle="collapse" aria-expanded="false" 
                           class="dropdown-toggle">
                            <i class="material-icons">library_books</i><span>Availability</span></a>
                    </li>

                    <li class="dropdown">
                        <a href="aform" data-toggle="collapse" aria-expanded="false" 
                           class="dropdown-toggle">
                            <i class="material-icons">border_color</i><span>Add Form</span></a>
                    </li>

                    <li class="dropdown">
                        <a href="vform" data-toggle="collapse" aria-expanded="false" 
                           class="dropdown-toggle">
                            <i class="material-icons">extension</i><span>View Form</span></a>
                    </li>

                    <li class="dropdown">
                        <a href="viewappointment" data-toggle="collapse" aria-expanded="false" 
                           class="dropdown-toggle">
                            <i class="material-icons">apps</i><span>View Appointments</span></a>
                    </li>

                    <li class="dropdown">
                        <a href="areport" data-toggle="collapse" aria-expanded="false" 
                           class="dropdown-toggle">
                            <i class="material-icons">grid_on</i><span>Reports</span></a>
                        <ul class="collapse list-unstyled menu" id="pageSubmenu6">
                    </li>
                </ul>
            </nav>




            <div id="content">

                <!--top--navbar--->

                <div class="top-navbar">
                    <div class="xp-topbar">
                        <div class="row"> 
                            <div class="col-2 col-md-1 col-lg-1 order-2 order-md-1 align-self-center">
                                <div class="xp-menubar">
                                    <span class="material-icons text-white">signal_cellular_alt
                                    </span>
                                </div>
                            </div> 
                            <div class="col-10 col-md-11 col-lg-11 order-1 order-md-2 text-end">
                                <a href="/home" class="btn btn-primary me-2">Home</a>
                                <a href="" class="btn btn-danger me-2">Logout</a>
                            </div>
                        </div> 
                    </div>
                    <div class="xp-breadcrumbbar text-center">
                        <h4 class="page-title">Dashboard</h4>               
                    </div>
                </div>

                <!--main contents-->

                <div class="main-content">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-wrapper">
                                <div class="table-title">
                                    <div class="row">
                                        <div class="col-sm-6 p-0 d-flex justify-content-start align-items-center">
                                            <h2 class="ml-2">Manage Availability Times</h2>
                                        </div>
                                        <div class="col-sm-6 p-0 d-flex justify-content-end">
                                            <div class="d-flex">
                                                <a href="" class="btn btn-primary mr-2" id="prevBtn">
                                                    <i class="material-icons">&#xE5C4;</i> 
                                                </a>
                                                <a href="" class="btn btn-primary" id="nextBtn">
                                                    <i class="material-icons">&#xE5C8;</i> 
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>Month/Date/Year</th>
                                            <th>View Times</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>June 12, 2023</td>
                                            <td><a href="#" onclick="showTimes('June', 12, 2023)" class="view-times">View Times</a></td>
                                        </tr>
                                        <tr>
                                            <td>June 13, 2023</td>
                                            <td><a href="#" onclick="showTimes('June', 13, 2023)" class="view-times">View Times</a></td>
                                        </tr>
                                        <tr>
                                            <td>June 14, 2023</td>
                                            <td><a href="#" onclick="showTimes('June', 14, 2023)" class="view-times">View Times</a></td>
                                        </tr>
                                        <tr>
                                            <td>June 15, 2023</td>
                                            <td><a href="#" onclick="showTimes('June', 15, 2023)" class="view-times">View Times</a></td>
                                        </tr>
                                        <tr>
                                            <td>June 16, 2023</td>
                                            <td><a href="#" onclick="showTimes('June', 16, 2023)" class="view-times">View Times</a></td>
                                        </tr>
                                    </tbody>
                                </table>





                                <div id="timeSlots" style="display: none;">
                                    <div class="table-title">
                                        <div class="row">
                                            <div class="col-sm-6 p-0 d-flex justify-content-lg-start justify-content-center">
                                                <h2 class="ml-lg-2">Available Time Slots</h2>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="text-center mb-2"><span id="selectedDate" style="font-size: 0.8em;"></span></h4>
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Time</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody id="timeSlotsBody">
                                            <tr>
                                                <td>9:00 AM - 10:00 AM</td>
                                                <td>Unbooked</td>
                                                <td><button class="btn btn-danger btn-unavailable" onclick="changeStatus(this)">Unavailable</button></td>
                                            </tr>
                                            <tr>
                                                <td>10:00 AM - 11:00 AM</td>
                                                <td>Booked</td>
                                                <td><button class="btn btn-danger btn-unavailable" onclick="changeStatus(this)">Unavailable</button></td>
                                            </tr>
                                            <tr>
                                                <td>11:00 AM - 12:00 PM</td>
                                                <td>Booked</td>
                                                <td><button class="btn btn-danger btn-unavailable" onclick="changeStatus(this)">Unavailable</button></td>
                                            </tr>
                                            <tr>
                                                <td>12:00 PM - 1:00 PM</td>
                                                <td>Booked</td>
                                                <td><button class="btn btn-danger btn-unavailable" onclick="changeStatus(this)">Unavailable</button></td>
                                            </tr>
                                            <tr>
                                                <td>1:00 PM - 2:00 PM</td>
                                                <td>Booked</td>
                                                <td><button class="btn btn-danger btn-unavailable" onclick="changeStatus(this)">Unavailable</button></td>
                                            </tr>
                                            <tr>
                                                <td>2:00 PM - 3:00 PM</td>
                                                <td>Booked</td>
                                                <td><button class="btn btn-danger btn-unavailable" onclick="changeStatus(this)">Unavailable</button></td>
                                            </tr>
                                            <tr>
                                                <td>3:00 PM - 4:00 PM</td>
                                                <td>Booked</td>
                                                <td><button class="btn btn-danger btn-unavailable" onclick="changeStatus(this)">Unavailable</button></td>
                                            </tr>
                                            <tr>
                                                <td>4:00 PM - 5:00 PM</td>
                                                <td>Booked</td>
                                                <td><button class="btn btn-danger btn-unavailable" onclick="changeStatus(this)">Unavailable</button></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <!--start footer-->
                <div class="my-5"></div>
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="footer-in">
                            <p class="mb-0">&copy Tai Yang Clinic. All Rights Reserved.</p>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script>
            function changeStatus(button) {
                if (button.innerHTML === "Unavailable") {
                    button.innerHTML = "Available";
                    button.classList.remove("btn-unavailable");
                    button.classList.add("btn-available");
                } else {
                    button.innerHTML = "Unavailable";
                    button.classList.remove("btn-available");
                    button.classList.add("btn-unavailable");
                }
            }
        </script>


        <script src="js/bootstrap.min.js"></script>
    </body>
</html>