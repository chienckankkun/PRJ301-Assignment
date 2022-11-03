<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Check Attend</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">

    </head>

    <body>
        <c:set var = "i" scope = "page" value = "0"/>
        <h1>FPT University Academic Portal</h1>
        <div class="container">
            <h1>Single Activity Attendance</h1>
            <p >Attendance for <b>${s.getGroup().getSubject().getCode()}</b> with Lecturer <b>${s.getGroup().getInstructor().getUserName()}</b> at Slot <b>${s.getSlot()}</b> on Day <b>${s.getDate()}</b> in Room <b>${s.getRoom().getCode()}</b> at ${s.getGroup().getCampus()}</p>
            <div class="row">
                <form action="UpdateCheckattend" style="position: relative;padding-bottom: 50px;" method="post">
                    <input name="sid" value="${param['sid']}" type="hidden">
                    <input name="instructorid" value="${s.getGroup().getInstructor().getId()}" type="hidden">
                    <table border="1">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th >Code</th>
                                <th >Name</th>
                                <th >Image</th>
                                <th>Group</th>
                                <th >Status</th>
                                <th >Comment</th>
                                <th >Taker</th>
                                <th >RecordTime</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="ck" items="${cklist}">
                                <tr>
                                    <td >${ck.getStudent().getId()}</td>
                                    <td >${ck.getStudent().getCode()}</td>
                                    <td >${ck.getStudent().getName()}</td>
                                    <td >${s.getGroup().getCode()}</td>
                                    <td ><img src="${ck.getStudent().getImg()}" width="150px"></td>
                                    <td ><input type="radio" class="form-check" name="${ck.getStudent().getCode()}" ${ck.isCheck()?"checked":""} value="1"> attend 
                                        <input type="radio" class="form-check" value="0" name="${ck.getStudent().getCode()}" ${ck.isCheck()?"":"checked"}> absent</td>
                                    <td ><input type="text" class="form-check" name="${ck.getStudent().getCode()}cmt" value="${ck.getComment()}" ></td>
                                    <td >${s.getGroup().getInstructor().getUserName()}</td>    
                                    <td >${ck.getRecordtime()}</td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                    <input type="submit" value="Update" >

                </form>

            </div>
        </div>


    </body>

</html>