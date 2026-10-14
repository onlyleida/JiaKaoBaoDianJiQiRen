package com.mobile.auth.gatewayauth.utils;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.ResultCode;
import com.mobile.auth.gatewayauth.TokenResultListener;
import com.mobile.auth.gatewayauth.manager.CrashManager;
import com.mobile.auth.gatewayauth.model.TokenRet;
import com.nirvana.tools.crash.CrashSdk;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.UUID;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ExecutorService f13430a = new ThreadPoolExecutor(Runtime.getRuntime().availableProcessors(), Runtime.getRuntime().availableProcessors(), 0, TimeUnit.SECONDS, new ArrayBlockingQueue(10), new ThreadPoolExecutor.CallerRunsPolicy());
    private static Handler b = new Handler(Looper.getMainLooper());

    public static abstract class a implements Runnable {
        protected abstract void a();

        protected abstract void a(Throwable th);

        protected void b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    a();
                } catch (Throwable th) {
                    try {
                        a(th);
                    } finally {
                        b();
                    }
                }
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.utils.b$b, reason: collision with other inner class name */
    public static abstract class AbstractRunnableC0261b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Thread.UncaughtExceptionHandler f13431a;

        protected AbstractRunnableC0261b() {
            this.f13431a = new Thread.UncaughtExceptionHandler() { // from class: com.mobile.auth.gatewayauth.utils.b.b.1
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread, Throwable th) {
                    try {
                        f.c("未知异常:" + b.b(th));
                        b.a(thread, th);
                    } catch (Throwable th2) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        } catch (Throwable th3) {
                            com.mobile.auth.gatewayauth.a.a(th3);
                        }
                    }
                }
            };
        }

        protected AbstractRunnableC0261b(final TokenResultListener tokenResultListener) {
            this.f13431a = new Thread.UncaughtExceptionHandler() { // from class: com.mobile.auth.gatewayauth.utils.b.b.2
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread, final Throwable th) {
                    try {
                        b.a(thread, th);
                        b.a(new a() { // from class: com.mobile.auth.gatewayauth.utils.b.b.2.1
                            @Override // com.mobile.auth.gatewayauth.utils.b.a
                            protected void a() {
                                try {
                                    TokenResultListener tokenResultListener2 = tokenResultListener;
                                    if (tokenResultListener2 != null) {
                                        tokenResultListener2.onTokenFailed(b.a(th));
                                    } else {
                                        f.c(b.b(th));
                                    }
                                } catch (Throwable th2) {
                                    try {
                                        com.mobile.auth.gatewayauth.a.a(th2);
                                    } catch (Throwable th3) {
                                        com.mobile.auth.gatewayauth.a.a(th3);
                                    }
                                }
                            }

                            @Override // com.mobile.auth.gatewayauth.utils.b.a
                            protected void a(Throwable th2) {
                            }
                        });
                    } catch (Throwable th2) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        } catch (Throwable th3) {
                            com.mobile.auth.gatewayauth.a.a(th3);
                        }
                    }
                }
            };
        }

        protected abstract void a();

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.currentThread().setUncaughtExceptionHandler(this.f13431a);
                a();
                Thread.currentThread().setUncaughtExceptionHandler(null);
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
    }

    public static String a(Throwable th) {
        try {
            TokenRet tokenRet = new TokenRet();
            tokenRet.setCode(com.mobile.auth.gatewayauth.utils.a.f13429a ? ResultCode.CODE_ERROR_UNKNOWN_FAIL : Constant.CODE_ERROR_UNKNOWN_FAIL);
            tokenRet.setMsg("未知异常:" + b(th));
            return tokenRet.toJsonString();
        } catch (Throwable th2) {
            try {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            } catch (Throwable th3) {
                com.mobile.auth.gatewayauth.a.a(th3);
                return null;
            }
        }
    }

    public static Future<?> a(Runnable runnable) {
        try {
            return f13430a.submit(runnable);
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

    public static void a(a aVar) {
        try {
            b.post(aVar);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public static void a(AbstractRunnableC0261b abstractRunnableC0261b) {
        try {
            f13430a.execute(abstractRunnableC0261b);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(Thread thread, Throwable th) {
        try {
            b(thread, th);
        } catch (Throwable th2) {
            try {
                com.mobile.auth.gatewayauth.a.a(th2);
            } catch (Throwable th3) {
                com.mobile.auth.gatewayauth.a.a(th3);
            }
        }
    }

    public static String b(Throwable th) {
        try {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            String string = stringWriter.toString();
            stringWriter.close();
            printWriter.close();
            return string;
        } catch (Exception unused) {
            return "ErrorInfoFromException";
        } catch (Throwable th2) {
            try {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            } catch (Throwable th3) {
                com.mobile.auth.gatewayauth.a.a(th3);
                return null;
            }
        }
    }

    private static void b(Thread thread, Throwable th) {
        try {
            Application application = ReflectionUtils.getApplication();
            if (application != null) {
                CrashManager crashManagerA = CrashManager.a(application);
                String string = UUID.randomUUID().toString();
                crashManagerA.a(thread.getName(), Log.getStackTraceString(th), string, true, CrashSdk.CRASH_TYPE_JAVA);
                crashManagerA.a(thread, th, string);
            } else {
                f.c(Log.getStackTraceString(th));
            }
        } catch (Throwable th2) {
            try {
                com.mobile.auth.gatewayauth.a.a(th2);
            } catch (Throwable th3) {
                com.mobile.auth.gatewayauth.a.a(th3);
            }
        }
    }
}
