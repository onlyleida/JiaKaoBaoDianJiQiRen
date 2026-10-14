.class public final Lcn/mucang/android/jiakaoyi/signal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008H\u0007R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0018\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager;",
        "",
        "()V",
        "hardwareInfoObserver",
        "cn/mucang/android/jiakaoyi/signal/HardwareInfoManager$hardwareInfoObserver$1",
        "Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager$hardwareInfoObserver$1;",
        "onResultCallBack",
        "Ljava/lang/ref/WeakReference;",
        "Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager$OnResult;",
        "getInfo",
        "",
        "callback",
        "OnResult",
        "signal_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/signal/a;

.field private static final b:Lcn/mucang/android/jiakaoyi/signal/a$b;

.field private static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/mucang/android/jiakaoyi/signal/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/a;->a:Lcn/mucang/android/jiakaoyi/signal/a;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/a$b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/a$b;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/a;->b:Lcn/mucang/android/jiakaoyi/signal/a$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/a;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final b(Lcn/mucang/android/jiakaoyi/signal/a$a;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/a;->c:Ljava/lang/ref/WeakReference;

    const-class p0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/a;->b:Lcn/mucang/android/jiakaoyi/signal/a$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class p0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    .line 3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-string p0, "\u53d1\u9001\u83b7\u53d6\u5e8f\u5217\u53f7\u6307\u4ee4"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->f()Z

    return-void
.end method
