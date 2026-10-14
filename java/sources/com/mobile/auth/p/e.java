package com.mobile.auth.p;

import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.ResultCode;
import com.mobile.auth.gatewayauth.manager.RequestCallback;
import com.nirvana.tools.requestqueue.TimeoutCallable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public abstract class e implements TimeoutCallable<com.mobile.auth.u.e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mobile.auth.gatewayauth.manager.f f13549a;
    private String b;

    public e(com.mobile.auth.gatewayauth.manager.f fVar, String str) {
        this.f13549a = fVar;
        this.b = str;
    }

    public com.mobile.auth.u.e a() {
        try {
            com.mobile.auth.u.e eVar = new com.mobile.auth.u.e(true);
            eVar.a(com.mobile.auth.gatewayauth.manager.base.c.a(ResultCode.CODE_ERROR_FUNCTION_TIME_OUT, "请求超时"));
            return eVar;
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

    public abstract void a(RequestCallback requestCallback, com.mobile.auth.gatewayauth.manager.a aVar);

    public com.mobile.auth.u.e b() {
        try {
            com.mobile.auth.gatewayauth.manager.a aVarA = this.f13549a.a(this.b);
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            final com.mobile.auth.u.e eVar = new com.mobile.auth.u.e(false);
            a(new RequestCallback<com.mobile.auth.gatewayauth.manager.a.C0256a, com.mobile.auth.gatewayauth.manager.base.c>() { // from class: com.mobile.auth.p.e.1
                public void a(com.mobile.auth.gatewayauth.manager.a.C0256a c0256a) {
                    try {
                        eVar.a(true);
                        eVar.a(c0256a);
                        eVar.a(com.mobile.auth.gatewayauth.manager.base.c.a().c(c0256a.c()).a(c0256a.d()).a());
                        countDownLatch.countDown();
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }

                public void a(com.mobile.auth.gatewayauth.manager.base.c cVar) {
                    try {
                        eVar.a(cVar);
                        countDownLatch.countDown();
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }

                @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                public /* synthetic */ void onError(com.mobile.auth.gatewayauth.manager.base.c cVar) {
                    try {
                        a(cVar);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }

                @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                public /* synthetic */ void onSuccess(com.mobile.auth.gatewayauth.manager.a.C0256a c0256a) {
                    try {
                        a(c0256a);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            }, aVarA);
            try {
                countDownLatch.await(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e2) {
                eVar.a(com.mobile.auth.gatewayauth.manager.base.c.a(Constant.CODE_ERROR_UNKNOWN_FAIL, com.mobile.auth.gatewayauth.utils.b.b(e2)));
            }
            return eVar;
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

    @Override // java.util.concurrent.Callable
    public /* synthetic */ Object call() throws Exception {
        try {
            return b();
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

    @Override // com.nirvana.tools.requestqueue.TimeoutCallable
    public /* synthetic */ com.mobile.auth.u.e onTimeout() {
        try {
            return a();
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
