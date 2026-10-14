.class public final Lf/a/a/a/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0007J?\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2%\u0008\u0002\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/core/activity/ActivityStarterMultiProcessSupport;",
        "",
        "()V",
        "RPC_ACTIVITY_STARTER",
        "",
        "RPC_KEY_FALLBACK",
        "RPC_KEY_URL",
        "init",
        "",
        "maybeStart",
        "protocol",
        "allowFallbackToH5",
        "",
        "result",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "suc",
        "core-lib_release"
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
.field public static final a:Lf/a/a/a/i/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf/a/a/a/i/f;

    invoke-direct {v0}, Lf/a/a/a/i/f;-><init>()V

    sput-object v0, Lf/a/a/a/i/f;->a:Lf/a/a/a/i/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/a/i/f$a;

    invoke-direct {v0}, Lf/a/a/a/i/f$a;-><init>()V

    const-string v1, "cn.mucang.android.rpc.activity.starter"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/h0;->i(Ljava/lang/String;Lcn/mucang/android/core/utils/e0;)V

    return-void
.end method

.method public static final b(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "protocol"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lf/a/a/a/i/f;->d(Ljava/lang/String;ZLkotlin/jvm/b/l;ILjava/lang/Object;)V

    return-void
.end method

.method public static final c(Ljava/lang/String;ZLkotlin/jvm/b/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "protocol"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "cn.mucang.android.rpc.key.url"

    .line 2
    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "cn.mucang.android.rpc.key.fallback"

    .line 3
    invoke-virtual {v2, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    new-instance v3, Lf/a/a/a/i/f$b;

    invoke-direct {v3, p2}, Lf/a/a/a/i/f$b;-><init>(Lkotlin/jvm/b/l;)V

    const-string v1, "cn.mucang.android.rpc.activity.starter"

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 5
    invoke-static/range {v1 .. v7}, Lcn/mucang/android/core/utils/h0;->d(Ljava/lang/String;Landroid/os/Bundle;Lcn/mucang/android/core/utils/f0;JILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;ZLkotlin/jvm/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lf/a/a/a/i/f;->c(Ljava/lang/String;ZLkotlin/jvm/b/l;)V

    return-void
.end method
