package com.mobile.auth.gatewayauth.manager.base;

import com.mobile.auth.gatewayauth.annotations.SafeProtector;

/* JADX INFO: loaded from: classes4.dex */
@SafeProtector
public class CacheKey {
    private boolean isLocalIp;
    private String key;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13384a;
        private boolean b;

        private a() {
        }

        static /* synthetic */ String a(a aVar) {
            try {
                return aVar.f13384a;
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

        static /* synthetic */ boolean b(a aVar) {
            try {
                return aVar.b;
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

        public a a(String str) {
            try {
                this.f13384a = str;
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
                this.b = z;
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

        public CacheKey a() {
            try {
                return new CacheKey(this);
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

    private CacheKey(a aVar) {
        this.key = a.a(aVar);
        this.isLocalIp = a.b(aVar);
    }

    public static a newSimKey() {
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

    public String getKey() {
        try {
            return this.key;
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

    public boolean isLocalIp() {
        try {
            return this.isLocalIp;
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

    public void setKey(String str) {
        try {
            this.key = str;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void setLocalIp(boolean z) {
        try {
            this.isLocalIp = z;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public String toString() {
        try {
            return "SimKey{key='" + this.key + "', isLocalIp=" + this.isLocalIp + '}';
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
