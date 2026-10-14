package com.mobile.auth.gatewayauth.manager.base;

import com.mobile.auth.gatewayauth.model.LoginPhoneInfo;
import com.nirvana.tools.jsoner.JSONUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13387a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13388d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f13389e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f13390f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f13391g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LoginPhoneInfo f13392h;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13393a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f13394d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f13395e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f13396f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f13397g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private LoginPhoneInfo f13398h;

        private a() {
        }

        static /* synthetic */ String a(a aVar) {
            try {
                return aVar.f13393a;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String b(a aVar) {
            try {
                return aVar.b;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String c(a aVar) {
            try {
                return aVar.c;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ String d(a aVar) {
            try {
                return aVar.f13394d;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ boolean e(a aVar) {
            try {
                return aVar.f13395e;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return false;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return false;
                }
            }
        }

        static /* synthetic */ long f(a aVar) {
            try {
                return aVar.f13396f;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return -1L;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return -1L;
                }
            }
        }

        static /* synthetic */ String g(a aVar) {
            try {
                return aVar.f13397g;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        static /* synthetic */ LoginPhoneInfo h(a aVar) {
            try {
                return aVar.f13398h;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        public a a(long j) {
            try {
                this.f13396f = j;
                return this;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        public a a(LoginPhoneInfo loginPhoneInfo) {
            try {
                this.f13398h = loginPhoneInfo;
                return this;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        public a a(String str) {
            try {
                this.f13393a = str;
                return this;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        public a a(boolean z) {
            try {
                this.f13395e = z;
                return this;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        public c a() {
            try {
                return new c(this);
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        public a b(String str) {
            try {
                this.b = str;
                return this;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        public a c(String str) {
            try {
                this.c = str;
                return this;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        public a d(String str) {
            try {
                this.f13394d = str;
                return this;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }

        public a e(String str) {
            try {
                this.f13397g = str;
                return this;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        }
    }

    private c(a aVar) {
        this.f13387a = a.a(aVar);
        this.b = a.b(aVar);
        this.c = a.c(aVar);
        this.f13388d = a.d(aVar);
        this.f13389e = a.e(aVar);
        this.f13390f = a.f(aVar);
        this.f13391g = a.g(aVar);
        this.f13392h = a.h(aVar);
    }

    public static a a() {
        try {
            return new a();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public static c a(String str, String str2) {
        try {
            return a().d(com.mobile.auth.gatewayauth.utils.a.a(str, str2)).e(com.mobile.auth.gatewayauth.utils.a.a(str, str2)).a(str).b(str2).a();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public void a(long j) {
        try {
            this.f13390f = j;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(String str) {
        try {
            this.c = str;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public String b() {
        try {
            return this.f13387a;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public String c() {
        try {
            return this.b;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public String d() {
        try {
            return this.c;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public boolean e() {
        try {
            return this.f13389e;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }

    public long f() {
        try {
            return this.f13390f;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return -1L;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return -1L;
            }
        }
    }

    public String g() {
        try {
            return this.f13388d;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public LoginPhoneInfo h() {
        try {
            return this.f13392h;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public String i() {
        try {
            JSONObject json = JSONUtils.toJson(this, null);
            try {
                LoginPhoneInfo loginPhoneInfo = this.f13392h;
                if (loginPhoneInfo != null) {
                    json.put("loginPhoneInfo", JSONUtils.toJson(loginPhoneInfo, null));
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            return json.toString();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }
}
