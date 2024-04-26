% 날짜와 시간을 입력받기
inputDateString = input('날짜와 시간을 입력하세요 (예: ''2023-04-30 15''): ', 's');

try
    % 입력된 문자열 datetime 형식으로 변환
    userDateTime = datetime(inputDateString, 'InputFormat', 'yyyy-MM-dd HH');
    
    % 시간 단위의 숫자를 입력받기
    hoursToAdd = input('추가할 시간 단위의 숫자를 입력하세요: ');
    
    % 시간을 더함
    addedTime = userDateTime + hours(hoursToAdd);
    
    % 시간이 24시간을 넘어가면 날짜 변경
    if hour(addedTime) >= 24
        addedTime = addedTime + days(1);
    end
    
    % 날짜가 30일을 넘어가면 달 변경
    if day(addedTime) > 30
        addedTime = addedTime + calmonths(1);
    end
    
    % 달이 12월을 넘어가면 연도 변경
    if month(addedTime) > 12
        addedTime = addedTime + calyears(1);
    end
    
    % 변환된 날짜와 시간 표시
    disp('변환된 날짜와 시간:');
    disp(addedTime);

catch
    % 변환에 실패할 경우 오류 메시지 출력
    disp('잘못된 형식입니다. 날짜와 시간을 yyyy-MM-dd HH 형식으로 입력하세요.');
end