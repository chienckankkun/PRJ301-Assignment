
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Time Table</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">

    </head>

    <body>
        <h1>FPT University Academic Portal</h1>

        <div class="container">
            <form method="" action="#" class="viewTimeTable">
                <div> Campus: 
                    <select>
                        <option>Fu-HL</option>
                        <option>Fu-HCM</option>
                        <option>Fu-CT</option>

                    </select><br>
                </div>
                <div>
                    Lecture: <input type="text" name="lecture">     

                    <button type="button">View</button>
                </div>
            </form>
            <div class="row">
                <table border="1">
                    <thead class="bg-primary">
                        <tr>
                            <th>Week: <select>
                                    <option>17/11-23/11</option>
                                    <option>25/11-01/12</option>
                                    <option>03/12-010/12</option>

                                </select><br></th>
                            <th>17/11</th>
                            <th>18/11 </th>
                            <th>19/11</th>
                            <th>20/11</th>
                            <th>21/11</th>
                            <th>22/11</th>
                            <th>23/11</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="width: 12.5%;">Slot1</td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s1.getId()}&status=${s1.isStatus()}" style="${s1.isStatus()?"color: green;":"color: red;"}"> ${s1.getGroup().getCode()}<br>${s1.getRoom().getCode()}<br>${s1.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%;"></td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s1.getId()}&status=${s1.isStatus()}" style="${s1.isStatus()?"color: green;":"color: red;"}"> ${s1.getGroup().getCode()}<br>${s1.getRoom().getCode()}<br>${s1.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%;"></td>
                            <td style="width: 12.5%;"></td>
                            <td style="width: 12.5%;"></td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s1.getId()}&status=${s1.isStatus()}" style="${s1.isStatus()?"color: green;":"color: red;"}"> ${s1.getGroup().getCode()}<br>${s1.getRoom().getCode()}<br>${s1.isStatus()?"(attend)":"(Not yet)"}</a></td>


                        </tr>
                        <tr>
                            <td style="width: 12.5%;">Slot2</td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s2.getId()}&status=${s2.isStatus()}" style="${s2.isStatus()?"color: green;":"color: red;"}"> ${s2.getGroup().getCode()}<br>${s2.getRoom().getCode()}<br>${s2.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%;"></td>
                            <td style="width: 12.5%;"></td>
                            <td style="width: 12.5%;"></td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s2.getId()}&status=${s2.isStatus()}" style="${s2.isStatus()?"color: green;":"color: red;"}"> ${s2.getGroup().getCode()}<br>${s2.getRoom().getCode()}<br>${s2.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%;"></td>
                        </tr>
                        <tr>
                        <tr>
                            <td style="width: 12.5%;">Slot3</td>
                            <td style="width: 12.5%;"> </td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s3.getId()}&status=${s3.isStatus()}" style="${s3.isStatus()?"color: green;":"color: red;"}"> ${s3.getGroup().getCode()}<br>${s3.getRoom().getCode()}<br>${s3.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%;"> </td>
                            <td style="width: 12.5%;"> </td>

                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s3.getId()}&status=${s3.isStatus()}" style="${s3.isStatus()?"color: green;":"color: red;"}"> ${s3.getGroup().getCode()}<br>${s3.getRoom().getCode()}<br>${s3.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%;"></td>
                            <td style="width: 12.5%;"></td>
                        </tr>
                        </tr>
                        <tr>
                        <tr>
                            <td style="width: 12.5%;">Slot4</td>
                            <td style="width: 12.5%;"> </td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s4.getId()}&status=${s4.isStatus()}" style="${s4.isStatus()?"color: green;":"color: red;"}"> ${s4.getGroup().getCode()}<br>${s4.getRoom().getCode()}<br>${s4.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%;"> </td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s4.getId()}&status=${s4.isStatus()}" style="${s4.isStatus()?"color: green;":"color: red;"}"> ${s4.getGroup().getCode()}<br>${s4.getRoom().getCode()}<br>${s4.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%;"> </td>
                            <td style="width: 12.5%;"></td>
                            <td style="width: 12.5%;"></td>
                        </tr>
                        </tr>
                        <tr>
                            <td style="width: 12.5%;">Slot5</td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s5.getId()}&status=${s5.isStatus()}" style="${s5.isStatus()?"color: green;":"color: red;"}"> ${s5.getGroup().getCode()}<br>${s5.getRoom().getCode()}<br>${s5.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s5.getId()}&status=${s5.isStatus()}" style="${s5.isStatus()?"color: green;":"color: red;"}"> ${s5.getGroup().getCode()}<br>${s5.getRoom().getCode()}<br>${s5.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%;"></td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s5.getId()}&status=${s5.isStatus()}" style="${s5.isStatus()?"color: green;":"color: red;"}"> ${s5.getGroup().getCode()}<br>${s5.getRoom().getCode()}<br>${s5.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%;"></td>
                            <td style="width: 12.5%;"></td>
                            <td style="width: 12.5%;"></td>
                        </tr>
                        <tr>
                            <td style="width: 12.5%;">Slot6</td>
                            <td style="width: 12.5%;"> </td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s6.getId()}&status=${s6.isStatus()}" style="${s6.isStatus()?"color: green;":"color: red;"}"> ${s6.getGroup().getCode()}<br>${s6.getRoom().getCode()}<br>${s6.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s6.getId()}&status=${s6.isStatus()}" style="${s6.isStatus()?"color: green;":"color: red;"}"> ${s6.getGroup().getCode()}<br>${s6.getRoom().getCode()}<br>${s6.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%; "><a href="CheckAttend?sid=${s6.getId()}&status=${s6.isStatus()}" style="${s6.isStatus()?"color: green;":"color: red;"}"> ${s6.getGroup().getCode()}<br>${s6.getRoom().getCode()}<br>${s6.isStatus()?"(attend)":"(Not yet)"}</a></td>
                            <td style="width: 12.5%;"> </td>
                            <td style="width: 12.5%;"> </td>
                            <td style="width: 12.5%;"></td>
                        </tr>
                        <tr>
                            <td>Slot7</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Slot8</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </body>

</html>