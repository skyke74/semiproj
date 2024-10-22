<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기</title>
<script type="text/javascript">
    function confirmBookmark() {
        if (confirm("즐겨찾기 등록하시겠습니까?")) {
            // User clicked 'Yes', redirect to mypage
            window.location.href = '${root}/hotels/mypage/';
        } else {
            // User clicked 'No', redirect to Results1 page
            window.location.href = '${root}/hotels/Results1/';
        }
    }
</script>
</head>
<body onload="confirmBookmark()">

</body>
</html>
