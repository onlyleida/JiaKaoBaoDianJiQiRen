.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0008\u0010\n\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LogicOnComReconnectedMgr;",
        "",
        "()V",
        "TAG",
        "",
        "isInited",
        "",
        "isMasterDisConnected",
        "init",
        "",
        "invokeOnMasterReconnected",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;->e()V

    return-void
.end method

.method public static final synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;->b:Z

    return v0
.end method

.method public static final synthetic c(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;->b:Z

    return-void
.end method

.method private final e()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/u;->a()Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v2, v3, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->g(ZZLkotlin/jvm/b/a;ILjava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->c()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->a()V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion;

    const/4 v1, 0x2

    invoke-static {v0, v2, v3, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion;->c(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion;ZLkotlin/jvm/b/a;ILjava/lang/Object;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->g(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogicOnComReconnectedMgr: invokeOnMasterReconnected "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t$a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t$a;-><init>()V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->K(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;->c:Z

    return-void
.end method
