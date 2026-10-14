.class public final Lcn/mucang/jiakaoyi/uilib/ui/login/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0007J\u0018\u0010\u000c\u001a\u00020\u000b2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/login/JkyJsBridge;",
        "",
        "()V",
        "JS_BRIDGE",
        "",
        "LOGIN",
        "PAY",
        "TAG",
        "loginCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "registerJsBridge",
        "",
        "setLoginCallback",
        "cb",
        "uilib_release"
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
.field public static final a:Lcn/mucang/jiakaoyi/uilib/ui/login/g;

.field private static b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/login/g;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/login/g;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/login/g;->a:Lcn/mucang/jiakaoyi/uilib/ui/login/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcn/mucang/android/jiakaoyi/framework/h/b;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/login/g;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object v0
.end method

.method public static synthetic b(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/login/g;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/core/d;

    const-string v1, "jky.luban.mucang.cn"

    invoke-direct {v0, v1}, Lcn/mucang/android/core/webview/core/d;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/login/g$a;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/ui/login/g$a;-><init>()V

    const-string v2, "/user/login"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 3
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/ui/login/c;->a:Lcn/mucang/jiakaoyi/uilib/ui/login/c;

    const-string v2, "/pay/success"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/core/webview/core/l;->d()Lcn/mucang/android/core/webview/core/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/webview/core/l;->h(Lcn/mucang/android/core/webview/core/d;)V

    return-void
.end method

.method private static final d(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/ui/login/PaySuccess;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/login/PaySuccess;-><init>()V

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    const/4 p0, 0x0

    const-string v0, ""

    .line 2
    invoke-static {p0, v0}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcn/mucang/jiakaoyi/uilib/ui/login/g;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method
