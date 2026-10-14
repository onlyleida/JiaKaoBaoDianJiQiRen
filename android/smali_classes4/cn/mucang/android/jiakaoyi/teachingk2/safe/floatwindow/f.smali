.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010\u000e\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatWindowManager;",
        "",
        "()V",
        "TAG",
        "",
        "hasPermission",
        "",
        "activity",
        "Landroid/app/Activity;",
        "requestPermission",
        "",
        "intent",
        "Landroid/content/Intent;",
        "start",
        "stop",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public static synthetic b(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->d(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method private final c(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/e;

    invoke-direct {v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p2, v1, v2}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method

.method private static final d(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const-string p1, "$activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_auth_fail:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_auth_success:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public static final e(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->c(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->c(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public static final f()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
