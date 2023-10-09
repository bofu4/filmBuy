package com.example.common;

public enum ResultCode {
    SUCCESS("0", "success"),
    ERROR("-1", "system error"),
    PARAM_ERROR("1001", "param error"),
    USER_EXIST_ERROR("2001", "user exist error"),
    USER_ACCOUNT_ERROR("2002", "user account error"),
    USER_NOT_EXIST_ERROR("2003", "user not exist error"),
    ORDER_PAY_ERROR("3001", "insufficient inventory, failed to place order"),
    PARAM_LOST_ERROR("2004", "param lost error"),
    PARAM_PASSWORD_ERROR("2005", "original password input error"),
    ;

    public String code;
    public String msg;

    ResultCode(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
