package com.mobile.auth.gatewayauth.manager;

import android.text.TextUtils;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.mobile.auth.gatewayauth.ResultCode;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile String f13370a;
    protected volatile String b;
    protected volatile long c = DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS;

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.a$a, reason: collision with other inner class name */
    public static class C0256a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13371a;
        private String b;
        private long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f13372d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f13373e;

        /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.a$a$a, reason: collision with other inner class name */
        public static final class C0257a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private String f13374a;
            private String b;
            private long c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private String f13375d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private String f13376e;

            private C0257a() {
            }

            static /* synthetic */ String a(C0257a c0257a) {
                try {
                    return c0257a.f13374a;
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

            static /* synthetic */ String b(C0257a c0257a) {
                try {
                    return c0257a.b;
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

            static /* synthetic */ long c(C0257a c0257a) {
                try {
                    return c0257a.c;
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

            static /* synthetic */ String d(C0257a c0257a) {
                try {
                    return c0257a.f13375d;
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

            static /* synthetic */ String e(C0257a c0257a) {
                try {
                    return c0257a.f13376e;
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

            public C0257a a(long j) {
                try {
                    this.c = j;
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

            public C0257a a(String str) {
                try {
                    this.f13374a = str;
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

            public C0256a a() {
                try {
                    return new C0256a(this);
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

            public C0257a b(String str) {
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

            public C0257a c(String str) {
                try {
                    this.f13375d = str;
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

            public C0257a d(String str) {
                try {
                    this.f13376e = str;
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

        private C0256a(C0257a c0257a) {
            this.f13371a = C0257a.a(c0257a);
            this.b = C0257a.b(c0257a);
            this.c = C0257a.c(c0257a);
            this.f13372d = C0257a.d(c0257a);
            this.f13373e = C0257a.e(c0257a);
        }

        public static C0257a a() {
            try {
                return new C0257a();
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

        public String b() {
            try {
                return this.f13371a;
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

        public long d() {
            try {
                return this.c;
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

        public String e() {
            try {
                return this.f13372d;
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

        public String f() {
            try {
                return this.f13373e;
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

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f13377a;
        String b;

        /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.a$b$a, reason: collision with other inner class name */
        public static final class C0258a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private String f13378a;
            private String b;

            private C0258a() {
            }

            static /* synthetic */ String a(C0258a c0258a) {
                try {
                    return c0258a.f13378a;
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

            static /* synthetic */ String b(C0258a c0258a) {
                try {
                    return c0258a.b;
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

            public C0258a a(String str) {
                try {
                    this.f13378a = str;
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

            public b a() {
                try {
                    return new b(this);
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

            public C0258a b(String str) {
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
        }

        private b(C0258a c0258a) {
            this.f13377a = C0258a.a(c0258a);
            this.b = C0258a.b(c0258a);
        }

        public static C0258a a() {
            try {
                return new C0258a();
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

        public String b() {
            try {
                return this.f13377a;
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
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13379a;
        private long b;

        /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.a$c$a, reason: collision with other inner class name */
        public static final class C0259a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private String f13380a;
            private long b;

            private C0259a() {
            }

            static /* synthetic */ String a(C0259a c0259a) {
                try {
                    return c0259a.f13380a;
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

            static /* synthetic */ long b(C0259a c0259a) {
                try {
                    return c0259a.b;
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

            public C0259a a(long j) {
                try {
                    this.b = j;
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

            public C0259a a(String str) {
                try {
                    this.f13380a = str;
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
        }

        private c(C0259a c0259a) {
            this.f13379a = C0259a.a(c0259a);
            this.b = C0259a.b(c0259a);
        }

        public static C0259a a() {
            try {
                return new C0259a();
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

        public String b() {
            try {
                return this.f13379a;
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

        public long c() {
            try {
                return this.b;
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
    }

    public String a() {
        try {
            return this.f13370a;
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
        if (j > 0) {
            try {
                this.c = j;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
    }

    public final synchronized void a(RequestCallback<C0256a, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, b bVar) {
        try {
            if (!TextUtils.isEmpty(this.f13370a) && !TextUtils.isEmpty(this.b)) {
                d(requestCallback, bVar);
                return;
            }
            requestCallback.onError(com.mobile.auth.gatewayauth.manager.base.c.a(ResultCode.CODE_ERROR_ANALYZE_SDK_INFO, ResultCode.MSG_ERROR_ANALYZE_SDK_INFO));
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(String str, String str2) {
        try {
            this.f13370a = str;
            this.b = str2;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public abstract void a(boolean z);

    public String b() {
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

    public final synchronized void b(RequestCallback<C0256a, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, b bVar) {
        try {
            if (!TextUtils.isEmpty(this.f13370a) && !TextUtils.isEmpty(this.b)) {
                e(requestCallback, bVar);
                return;
            }
            requestCallback.onError(com.mobile.auth.gatewayauth.manager.base.c.a(ResultCode.CODE_ERROR_ANALYZE_SDK_INFO, ResultCode.MSG_ERROR_ANALYZE_SDK_INFO));
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public abstract void c();

    public final synchronized void c(RequestCallback<c, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, b bVar) {
        try {
            if (!TextUtils.isEmpty(this.f13370a) && !TextUtils.isEmpty(this.b)) {
                f(requestCallback, bVar);
                return;
            }
            requestCallback.onError(com.mobile.auth.gatewayauth.manager.base.c.a(ResultCode.CODE_ERROR_ANALYZE_SDK_INFO, ResultCode.MSG_ERROR_ANALYZE_SDK_INFO));
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public abstract void d(RequestCallback<C0256a, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, b bVar);

    public abstract void e(RequestCallback<C0256a, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, b bVar);

    public abstract void f(RequestCallback<c, com.mobile.auth.gatewayauth.manager.base.c> requestCallback, b bVar);
}
