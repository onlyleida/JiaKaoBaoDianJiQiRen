.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0007J\u0008\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;",
        "",
        "()V",
        "NORMAL",
        "",
        "rainModeV",
        "getRainModeV",
        "isRainMode",
        "",
        "refresh",
        "",
        "setRainMode",
        "value",
        "(Ljava/lang/Integer;)V",
        "setRainModeV",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;

.field private static b:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;

    .line 1
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/ConfigModel;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/h;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcn/mucang/jiakaoyi/uilib/socket/model/ConfigModel;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/ConfigModel;->map:Ljava/util/Map;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->RainMode:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "\u6536\u5230\u76d1\u63a7\u4e2d\u5fc3\u96e8\u5929\u6a21\u5f0f\uff1a"

    .line 3
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->g(Ljava/lang/Integer;)V

    .line 5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 6
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static final synthetic b(I)V
    .locals 0

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->b:I

    return-void
.end method

.method public static final c()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->b:I

    return v0
.end method

.method public static final d()Z
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->b:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic e(Lcn/mucang/jiakaoyi/uilib/socket/model/ConfigModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->a(Lcn/mucang/jiakaoyi/uilib/socket/model/ConfigModel;)V

    return-void
.end method

.method public static final f()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$refresh$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$refresh$1;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->h(ZZLkotlin/jvm/b/a;)V

    return-void
.end method

.method public static final g(Ljava/lang/Integer;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;

    const/4 v2, 0x3

    const-wide/16 v3, 0x7d0

    .line 2
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$setRainMode$1;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$setRainMode$1;-><init>(Ljava/lang/Integer;)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$setRainMode$2;

    invoke-direct {v6, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$setRainMode$2;-><init>(Ljava/lang/Integer;)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$setRainMode$3;

    invoke-direct {v7, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$setRainMode$3;-><init>(Ljava/lang/Integer;)V

    move-object v0, v8

    .line 3
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 4
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method

.method public static final h(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "\u8bbe\u7f6e\u96e8\u5929\u6a21\u5f0f\uff1a"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method
