package cn.mucang.android.core.api.exception;

import cn.mucang.android.core.api.ApiResponse;

/* JADX INFO: loaded from: classes.dex */
public class ApiException extends Exception {
    private ApiResponse apiResponse;

    public ApiException(ApiResponse apiResponse) {
        this.apiResponse = apiResponse;
    }

    public ApiResponse getApiResponse() {
        return this.apiResponse;
    }

    public int getErrorCode() {
        return this.apiResponse.getErrorCode();
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.apiResponse.getMessage();
    }
}
