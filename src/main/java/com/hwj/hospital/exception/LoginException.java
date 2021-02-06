package com.hwj.hospital.exception;

/**
 * 用于验证用户登录时抛出异常
 */
public class LoginException extends Exception{
    public LoginException() {
        super();
    }

    public LoginException(String message) {
        super(message);
    }
}
