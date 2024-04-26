% 사용자로부터 임의의 날짜와 시간을 입력받습니다.
inputDateString = input('날짜와 시간을 입력하세요 (예: ''2023-04-30 15''): ', 's');

try
    % 입력된 문자열을 datetime 형식으로 변환합니다.
    userDateTime = datetime(inputDateString, 'InputFormat', 'yyyy-MM-dd HH');
    
    % 변환된 날짜와 시간을 표시합니다.
    disp('입력된 날짜와 시간:');
    disp(userDateTime);
catch
    % 변환에 실패할 경우 오류 메시지를 표시합니다.
    disp('잘못된 형식입니다. 날짜와 시간을 yyyy-MM-dd HH 형식으로 입력하세요.');
end