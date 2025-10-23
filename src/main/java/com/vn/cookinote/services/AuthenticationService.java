package com.vn.cookinote.services;

import com.vn.cookinote.dtos.requests.AuthenticationRequest;
import com.vn.cookinote.dtos.requests.RegisterRequest;

public interface AuthenticationService {
    void register(RegisterRequest registerRequest);

    String authenticate(AuthenticationRequest authenticationRequest);
}
