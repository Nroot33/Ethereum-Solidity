Hyo-Coin
========
### 1. 블록체인의 정의
 - 블록 - Data의 집합
 - 블록들의 연결 
 - 각각의 블록들을 사용자들이 공유
 - 타인과 비교하여 잘못된 정보를 판별 할 수 있음
  ※ 가능한 많은 사람이 정보를 공유하여, 정보 조작이 불가능하다.
  
### 2. 머클트리
   - 2진 트리 
   - 라이트노드
   
### 3. 활용
   - 가치전달 + 데이터전달
   
#### 이더리움
#### 스마트 컨트랙트 : 블록체인의 상의 계약서 같은 존재
#### Decetralized Application

### 4. 단점
    1) 프라이버시
    2) 트랜잭션 코스트 / 이더리움 -수수료(GAS)
    3) 트랜잭션 스피드 
    4) 블록사이즈 - 매달 약 2GB
   
### 솔리디티
   - Ethereum Virtual Machine : 무엇이 실행된다 → 가스발생
   - Gas Limit / Gas Price
   - 스마트컨트랙트 예시
   
    // 1. 컨트랙트 선언
    contract Sample {
    // 2. 상태 변수 선언
    uint256 data;
    address owner;
    
    // 3. 이벤트 정의
    event logData(uint256 dataToLog);
    
    // 4. 함수 변경자 정의
    modifier onlyOwner() {
        if(msg.sender != owner) revert();
        _;
    }
    
    // 5. 생성자
    function Sample(uint256 initData, address initOwner) {
        data = initData;
        onwer = initOwner;
    }
    
    // 6. 함수(메소드) 정의
    function getData() returns (uint256 returned) {
        return data;
    }
    function setData(uint256 newData) onlyOwner {
        logData(newData);
        data = newData;
    }
    }   
   

   

  
