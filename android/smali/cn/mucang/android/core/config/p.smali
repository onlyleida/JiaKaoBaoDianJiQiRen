.class public abstract Lcn/mucang/android/core/config/p;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/config/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private p()V
    .locals 3

    const-string v0, "core"

    const-string v1, "initPrivacyDependency..."

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result v0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/core/config/p;->r()V

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/v;->d()V

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 7
    :cond_0
    sget-object v0, Lcn/mucang/android/core/config/c;->a:Lcn/mucang/android/core/config/c;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 8
    invoke-static {p0}, Lcn/mucang/android/core/identity/OaidProviderForInit;->c(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcn/mucang/android/core/callphone/a;->h()Lcn/mucang/android/core/callphone/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/callphone/a;->r()V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/core/config/p;->u()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/core/config/p;->x()V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/core/config/p;->v()V

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/core/config/p;->q()V

    return-void
.end method

.method private r()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/mapping/i;->g()V

    .line 2
    invoke-static {}, Lcn/mucang/android/selectcity/CityNameCodeMapping;->a()V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/s;->h()Lcn/mucang/android/core/config/s;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/glide/a;->a()V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/core/config/p;->t()V

    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 3
    new-instance v1, Lf/a/a/a/l/f;

    new-instance v2, Lf/a/a/a/l/a;

    invoke-direct {v2, p0}, Lf/a/a/a/l/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p0, v2, v0}, Lf/a/a/a/l/f;-><init>(Landroid/content/Context;Lf/a/a/a/l/d;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 4
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 0

    .line 1
    invoke-static {p0}, Lf/a/a/a/i/h;->b(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/config/p;->s()V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/jni/Riddle;->c()V

    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ":"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 5
    invoke-static {v0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/core/config/p;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/core/config/p;->p()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/a0;->d(Landroid/content/Context;)V

    .line 3
    invoke-static {p0, p0}, Lcn/mucang/android/core/config/MucangConfig;->t(Landroid/app/Application;Lcn/mucang/android/core/config/w;)V

    return-void
.end method

.method public final onCreate()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/core/config/p;->w()V

    .line 4
    new-instance v2, Lcn/mucang/android/core/config/a;

    invoke-direct {v2, p0}, Lcn/mucang/android/core/config/a;-><init>(Lcn/mucang/android/core/config/p;)V

    invoke-static {v2}, Lf/a/a/a/s/e;->j(Ljava/lang/Runnable;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application.create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "core"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 2
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/core/utils/l0;->g()V

    .line 4
    const-class p1, Lcn/mucang/android/core/config/p;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u624b\u52a8\u89e6\u53d1\u4e0a\u4f20"

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected abstract q()V
.end method

.method protected abstract s()V
.end method

.method protected abstract u()V
.end method

.method protected abstract v()V
.end method
