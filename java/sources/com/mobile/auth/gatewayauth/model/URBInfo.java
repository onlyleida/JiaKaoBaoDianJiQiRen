package com.mobile.auth.gatewayauth.model;

import com.mobile.auth.gatewayauth.a;

/* JADX INFO: loaded from: classes5.dex */
public class URBInfo {
    private AlibabaAliqinPnsInfoUploadResponse alibaba_aliqin_pns_info_upload_response;

    public static class AlibabaAliqinPnsInfoUploadResponse {
        private String request_id;
        private Result result;

        public static class Result {
            private String code;
            private String message;
            private boolean module;

            public String getCode() {
                try {
                    return this.code;
                } catch (Throwable th) {
                    try {
                        a.a(th);
                        return null;
                    } catch (Throwable th2) {
                        a.a(th2);
                        return null;
                    }
                }
            }

            public String getMessage() {
                try {
                    return this.message;
                } catch (Throwable th) {
                    try {
                        a.a(th);
                        return null;
                    } catch (Throwable th2) {
                        a.a(th2);
                        return null;
                    }
                }
            }

            public boolean isModule() {
                try {
                    return this.module;
                } catch (Throwable th) {
                    try {
                        a.a(th);
                        return false;
                    } catch (Throwable th2) {
                        a.a(th2);
                        return false;
                    }
                }
            }

            public void setCode(String str) {
                try {
                    this.code = str;
                } catch (Throwable th) {
                    try {
                        a.a(th);
                    } catch (Throwable th2) {
                        a.a(th2);
                    }
                }
            }

            public void setMessage(String str) {
                try {
                    this.message = str;
                } catch (Throwable th) {
                    try {
                        a.a(th);
                    } catch (Throwable th2) {
                        a.a(th2);
                    }
                }
            }

            public void setModule(boolean z) {
                try {
                    this.module = z;
                } catch (Throwable th) {
                    try {
                        a.a(th);
                    } catch (Throwable th2) {
                        a.a(th2);
                    }
                }
            }
        }

        public String getRequest_id() {
            try {
                return this.request_id;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public Result getResult() {
            try {
                return this.result;
            } catch (Throwable th) {
                try {
                    a.a(th);
                    return null;
                } catch (Throwable th2) {
                    a.a(th2);
                    return null;
                }
            }
        }

        public void setRequest_id(String str) {
            try {
                this.request_id = str;
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }

        public void setResult(Result result) {
            try {
                this.result = result;
            } catch (Throwable th) {
                try {
                    a.a(th);
                } catch (Throwable th2) {
                    a.a(th2);
                }
            }
        }
    }

    public AlibabaAliqinPnsInfoUploadResponse getAlibaba_aliqin_pns_info_upload_response() {
        try {
            return this.alibaba_aliqin_pns_info_upload_response;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public void setAlibaba_aliqin_pns_info_upload_response(AlibabaAliqinPnsInfoUploadResponse alibabaAliqinPnsInfoUploadResponse) {
        try {
            this.alibaba_aliqin_pns_info_upload_response = alibabaAliqinPnsInfoUploadResponse;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }
}
