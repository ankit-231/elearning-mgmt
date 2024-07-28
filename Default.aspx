<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="elearning_mgmt._Default" %>

<%--<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
            <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Getting started</h2>
                <p>
                    ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
                A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Get more libraries</h2>
                <p>
                    NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Web Hosting</h2>
                <p>
                    You can easily find a web hosting company that offers the right mix of features and price for your applications.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </section>
        </div>
    </main>

</asp:Content>--%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="dashboardTitle">
            <h1 id="dashboardTitle">Dashboard</h1>
            <p class="lead">Welcome to your dashboard. Use the links below to navigate to different sections.</p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="profileTitle">
                <h2 id="profileTitle">Learner</h2>
                <p>
                    Go to Learner List.
               
                </p>
                <p>
                    <a class="btn btn-primary" href="learnerView.aspx">Go to Learner &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="coursesTitle">
                <h2 id="coursesTitle">Educator</h2>
                <p>
                    Go to Educator List.
               
                </p>
                <p>
                    <a class="btn btn-primary" href="educatorView.aspx">Go to Educator &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="settingsTitle">
                <h2 id="settingsTitle">Educational Programs</h2>
                <p>
                    Go to Educational Programs.
               
                </p>
                <p>
                    <a class="btn btn-primary" href="educationalPrograms.aspx">Go to Educational Programs &raquo;</a>
                </p>
            </section>
        </div>

        <div class="row">
            <section class="col-md-4" aria-labelledby="notificationsTitle">
                <h2 id="notificationsTitle">Lesson</h2>
                <p>
                    View your Lessons.
               
                </p>
                <p>
                    <a class="btn btn-primary" href="lessonView.aspx">Go to Lessons &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="supportTitle">
                <h2 id="supportTitle">Progress</h2>
                <p>
                    View learner progress.
               
                </p>
                <p>
                    <a class="btn btn-primary" href="achievementRecords.aspx">Go to Progress &raquo;</a>
                </p>
            </section>
            <hr />
            <h1>Complex</h1>
            <section class="col-md-4" aria-labelledby="reportsTitle">
                <h2 id="reportsTitle">Learner Enrolment</h2>
                <p>
                    Learner Enrolment.
               
                </p>
                <p>
                    <a class="btn btn-primary" href="learnerEnrolment.aspx">Go to Learner Enrolment &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="reportsTitle">
                <h2 id="bestElearning">Best E-Learning</h2>
                <p>
                    Access Best E-Learning.
   
                </p>
                <p>
                    <a class="btn btn-primary" href="best.aspx">Go to Best Learning &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="reportsTitle">
                <h2 id="educatorCourse">Educator Course</h2>
                <p>
                    Educator's Courses.
   
                </p>
                <p>
                    <a class="btn btn-primary" href="educatorAssignment.aspx">Educator Course &raquo;</a>
                </p>
            </section>

        </div>
    </main>

</asp:Content>
