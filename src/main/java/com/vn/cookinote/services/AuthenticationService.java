package com.vn.cookinote.services;

import com.vn.cookinote.dtos.requests.AuthenticationRequest;
import com.vn.cookinote.dtos.requests.RegisterRequest;
import com.vn.cookinote.dtos.responses.ApiResponse;

public interface AuthenticationService {
    ApiResponse<Object> register(RegisterRequest registerRequest);
    ApiResponse<Object> authenticate(AuthenticationRequest authenticationRequest);
}
