package com.mobile.auth.gatewayauth.manager.base;

import com.nirvana.tools.jsoner.JSONUtils;
import com.nirvana.tools.jsoner.JsonType;
import com.nirvana.tools.jsoner.Jsoner;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class a<T> implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13385a;
    private T b;
    private long c;

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.base.a$a, reason: collision with other inner class name */
    public static final class C0260a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13386a;
        private T b;
        private long c;

        private C0260a() {
        }

        static /* synthetic */ String a(C0260a c0260a) {
            try {
                return c0260a.f13386a;
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

        static /* synthetic */ Object b(C0260a c0260a) {
            try {
                return c0260a.b;
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

        static /* synthetic */ long c(C0260a c0260a) {
            try {
                return c0260a.c;
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

        public C0260a a(long j) {
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

        public C0260a a(T t) {
            try {
                this.b = t;
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

        public C0260a a(String str) {
            try {
                this.f13386a = str;
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

        public a a() {
            try {
                return new a(this);
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

    public a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private a(C0260a<T> c0260a) {
        a(C0260a.a((C0260a) c0260a));
        a(C0260a.b(c0260a));
        a(C0260a.c(c0260a));
    }

    public static C0260a a() {
        try {
            return new C0260a();
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

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> a<T> a(JSONObject jSONObject, JsonType<T> jsonType) {
        try {
            a<T> aVar = (a<T>) new a();
            ArrayList arrayList = new ArrayList();
            JSONUtils.fromJson(jSONObject, aVar, arrayList);
            if (arrayList.size() > 0) {
                T tNewInstance = jsonType.newInstance();
                if (tNewInstance instanceof Jsoner) {
                    ((Jsoner) tNewInstance).fromJson(jSONObject.optJSONObject("value"));
                    aVar.a(tNewInstance);
                } else if (JSONUtils.isOriginalBoolean(tNewInstance.getClass()) || JSONUtils.isOriginalChar(tNewInstance.getClass()) || JSONUtils.isOriginalNumber(tNewInstance.getClass()) || JSONUtils.isOriginalString(tNewInstance.getClass())) {
                    aVar.a(jSONObject.opt("value"));
                }
            }
            return aVar;
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

    public synchronized void a(long j) {
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

    public synchronized void a(T t) {
        try {
            this.b = t;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public synchronized void a(String str) {
        try {
            this.f13385a = str;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public synchronized String b() {
        try {
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
        return this.f13385a;
    }

    public synchronized T c() {
        try {
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
        return this.b;
    }

    public synchronized long d() {
        try {
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return -1L;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return -1L;
            }
        }
        return this.c;
    }

    public synchronized void e() {
        try {
            this.f13385a = null;
            this.b = null;
            this.c = 0L;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public JSONObject f() {
        Object json;
        try {
            JSONObject json2 = JSONUtils.toJson(this, new ArrayList());
            try {
                Class<?> cls = this.b.getClass();
                T t = this.b;
                if (!(t instanceof Jsoner)) {
                    if (JSONUtils.isOriginalBoolean(cls) || JSONUtils.isOriginalChar(cls) || JSONUtils.isOriginalNumber(cls) || JSONUtils.isOriginalString(cls)) {
                        json = this.b;
                    }
                    return json2;
                }
                json = ((Jsoner) t).toJson();
                json2.put("value", json);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            return json2;
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
