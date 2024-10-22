<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <style>
        
        .signup-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 300px; /* 컨테이너의 고정 너비 */
            margin: 0 auto; /* 페이지 중앙에 위치 */
        }
        .signup-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .signup-container label {
            display: block;
            margin-bottom: 5px;
            font-size:15px;
        }
        .signup-container input[type="text"], 
        .signup-container input[type="email"], 
        .signup-container input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .signup-container input[type="checkbox"] {
            margin-right: 10px;
        }
        .signup-container .checkbox-label {
            font-weight: normal;
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        .signup-container button {
            width: 100%;
            padding: 10px;
            color: gray;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .signup-container button:hover {
            background-color: #a9a9a9;
            color: black;
        }
        .signup-container .agreement-section {
            margin-top: 15px;
        }
        
        .birthdate-container {
    		display: flex; /* 가로로 배치 */
    		justify-content: space-between; /* 항목 사이에 공간을 균등하게 배치 */
    		width: 100%; /* 전체 너비를 사용 */
    		margin-top: 10px; /* 위쪽 간격 추가 */
		}

		.birthdate-container input {
    		flex: 1; /* 각 입력 필드가 동일한 너비를 가짐 */
    		margin: 0 5px; /* 입력 필드 사이에 간격 추가 */
    		padding: 10px; /* 내부 여백 추가 */
		}
        
        .button-container p {
    		display: flex; /* 버튼을 수평으로 배치 */
    		justify-content: center; /* 가운데 정렬 */
    		width: 100%; /* 가로 너비를 100%로 설정 */
		}

		.button-container button {
    		flex: 1; /* 버튼을 같은 너비로 설정 */
    		margin: 0 5px; /* 버튼 간격 추가 */
    		font-weight: normal; /* 글자를 굵게 설정 */
    		color:black;
		}

		/* 확인 버튼 스타일 */
		.confirm-btn {
		 font-size: 20px;
    	 background-color: #4169e1; 
    	 
		}

		/* 취소 버튼 스타일 (선택적으로 추가 가능) */
		.cancel-btn {	
		font-size: 20px;
    	background-color: #f0f0f0; /* 기본 색상 */
		}
		
    </style>
</head>
<body>
    <div class="signup-container">
        <h2>회원가입</h2>
        <form action="signup" method="post">
            <label for="name">이름</label>
            <input type="text" id="name" name="name" required>

			 <label for="email">이메일</label>
            <input type="email" id="email" name="email" required>
            
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" required>

            <label for="confirm-password">비밀번호 확인</label>
            <input type="password" id="confirm-password" name="confirm-password" required>
			
			
			<label for="adress">주소</label>
            <input type="text" id="adress" name="adress" required>

			<label for="tel">전화번호</label>
        	<input type="tel" id="tel" name="tel" required>
			  
			 <label for="birthdate">생년월일</label>
        	 <input type="date" id="birthdate" name="birthdate" required>
			            	
           
            <div class="agreement-section">
                <label class="checkbox-label">
                    <input type="checkbox" id="terms" name="terms" required>
                    <span>개인정보 수집 및 이용에 동의합니다.</span>
                </label>
                <label class="checkbox-label">
                    <input type="checkbox" id="marketing" name="marketing">
                    <span>마케팅 정보 수신에 동의합니다.</span>
                </label>
                
            </div>
            <div class="button-container">
    		<p>
        	<button type="button" class="btn btn-primary btn-lg confirm-btn">확 인</button>
        	<button type="button" class="btn btn-default btn-lg cancel-btn">취 소</button>
    		</p>
		</div>
        </form>
    </div>
</body>
</html>


