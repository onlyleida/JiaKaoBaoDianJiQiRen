.class public final Lcn/mucang/android/core/config/mapping/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000b\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0004H\u0002J\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000c\u001a\u00020\u0004H\u0007J\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u0008\u0010\u000e\u001a\u00020\u0004H\u0002J\u0012\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/core/config/mapping/ProfileManager;",
        "",
        "()V",
        "checkTokenAndLaunch",
        "",
        "token",
        "",
        "defaultSelectedProfileId",
        "",
        "(Ljava/lang/String;Ljava/lang/Long;)V",
        "doLaunchYour",
        "fetchProfilesAndLaunch",
        "initForeground",
        "initInterceptor",
        "initProtocolSupport",
        "printStackIfDebugInReleaseMode",
        "host",
        "selectHostFromProfile",
        "pendingMappingHost",
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
.field public static final a:Lcn/mucang/android/core/config/mapping/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/config/mapping/i;

    invoke-direct {v0}, Lcn/mucang/android/core/config/mapping/i;-><init>()V

    sput-object v0, Lcn/mucang/android/core/config/mapping/i;->a:Lcn/mucang/android/core/config/mapping/i;

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/mapping/k;->d()V

    .line 2
    invoke-direct {v0}, Lcn/mucang/android/core/config/mapping/i;->k()V

    .line 3
    invoke-direct {v0}, Lcn/mucang/android/core/config/mapping/i;->h()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/core/config/mapping/i;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/config/mapping/i;->b(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "token\u5df2\u7ecf\u65e0\u6548"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "\u9274\u6743\u4e2d..."

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcn/mucang/android/core/config/mapping/e;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/core/config/mapping/e;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final c(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "$token"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/android/core/config/mapping/h;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/config/mapping/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/android/core/config/mapping/h;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "token\u5df2\u7ecf\u65e0\u6548"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 4
    sget-object p1, Lcn/mucang/android/core/config/mapping/k;->a:Lcn/mucang/android/core/config/mapping/k;

    invoke-virtual {p1}, Lcn/mucang/android/core/config/mapping/k;->b()Ljava/lang/Long;

    move-result-object p1

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/core/config/mapping/i;->a:Lcn/mucang/android/core/config/mapping/i;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/config/mapping/i;->e(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    :goto_0
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 7
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u68c0\u67e5token\u51fa\u73b0\u95ee\u9898\uff0c\u518d\u8bd5\u4e00\u6b21:"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final d()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/mucang/android/core/config/YourActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final e(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/config/mapping/c;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/core/config/mapping/c;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final f(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    const-string v0, "$token"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/android/core/config/mapping/h;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/config/mapping/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/config/mapping/h;->c(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 3
    sget-object v1, Lcn/mucang/android/core/config/mapping/k;->a:Lcn/mucang/android/core/config/mapping/k;

    invoke-virtual {v1, v0, p0}, Lcn/mucang/android/core/config/mapping/k;->i(Ljava/util/List;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 5
    invoke-virtual {v1, p1}, Lcn/mucang/android/core/config/mapping/k;->h(Ljava/lang/Long;)V

    .line 6
    :goto_0
    sget-object p0, Lcn/mucang/android/core/config/mapping/i;->a:Lcn/mucang/android/core/config/mapping/i;

    invoke-direct {p0}, Lcn/mucang/android/core/config/mapping/i;->d()V

    .line 7
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 8
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 9
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "profile\u83b7\u53d6\u51fa\u73b0\u95ee\u9898\uff0c\u518d\u8bd5\u4e00\u6b21:"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final g()V
    .locals 0

    return-void
.end method

.method private final h()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/config/mapping/l;

    invoke-direct {v0}, Lcn/mucang/android/core/config/mapping/l;-><init>()V

    .line 3
    invoke-static {}, Lf/a/a/a/h;->b()Lf/a/a/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf/a/a/a/h;->a(Lcn/mucang/android/core/config/y/b;)V

    :cond_0
    sget-object v0, Lcn/mucang/android/core/config/mapping/b;->a:Lcn/mucang/android/core/config/mapping/b;

    .line 4
    sget-object v1, Lcn/mucang/android/core/api/request/b;->a:Lcn/mucang/android/core/api/request/b;

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/request/b;->a(Lcn/mucang/android/core/api/request/d/a;)V

    .line 5
    sget-object v0, Lcn/mucang/android/core/config/mapping/k;->a:Lcn/mucang/android/core/config/mapping/k;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/mapping/k;->a()Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lcn/mucang/android/core/config/mapping/d;

    invoke-direct {v1, v0}, Lcn/mucang/android/core/config/mapping/d;-><init>(Lcn/mucang/android/core/config/mapping/ProfileJsonData;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private static final i(Lcn/mucang/android/core/api/request/c;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/mapping/k;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/api/request/c;->d()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcn/mucang/android/core/config/mapping/i;->a:Lcn/mucang/android/core/config/mapping/i;

    const-string v2, "old"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcn/mucang/android/core/config/mapping/i;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/mucang/android/core/api/request/c;->j(Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/core/api/request/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapping host from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/request/c;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "core"

    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    sget-object v0, Lcn/mucang/android/core/config/mapping/i;->a:Lcn/mucang/android/core/config/mapping/i;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/request/c;->d()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/mucang/android/core/config/mapping/i;->p(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static final j(Lcn/mucang/android/core/config/mapping/ProfileJsonData;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/config/mapping/ProfileJsonData;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u5f53\u524d\u7f51\u7edc:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private final k()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/config/mapping/i$a;

    invoke-direct {v0}, Lcn/mucang/android/core/config/mapping/i$a;-><init>()V

    const-string v1, "http://egg.nav.mucang.cn/url-mapping"

    .line 2
    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 3
    new-instance v0, Lcn/mucang/android/core/config/mapping/i$b;

    invoke-direct {v0}, Lcn/mucang/android/core/config/mapping/i$b;-><init>()V

    const-string v1, "http://egg.nav.mucang.cn/open"

    .line 4
    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/core/api/request/c;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/core/config/mapping/i;->i(Lcn/mucang/android/core/api/request/c;)V

    return-void
.end method

.method public static synthetic m(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/config/mapping/i;->f(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/core/config/mapping/ProfileJsonData;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/core/config/mapping/i;->j(Lcn/mucang/android/core/config/mapping/ProfileJsonData;)V

    return-void
.end method

.method public static synthetic o(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/config/mapping/i;->c(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private final p(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid host:"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-void

    :cond_2
    const-string v2, ".ttt."

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3, v4}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ".dev."

    .line 4
    invoke-static {p1, v2, v1, v3, v4}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ".staging."

    .line 5
    invoke-static {p1, v2, v1, v3, v4}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "forbidden host at release mode:"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_5
    return-void
.end method

.method private final q(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/mapping/k;->a:Lcn/mucang/android/core/config/mapping/k;

    invoke-virtual {v0}, Lcn/mucang/android/core/config/mapping/k;->a()Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/core/config/mapping/ProfileJsonData;->getList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcn/mucang/android/core/config/mapping/ProfileHostJsonData;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/core/config/mapping/ProfileHostJsonData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcn/mucang/android/core/config/mapping/ProfileHostJsonData;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcn/mucang/android/core/config/mapping/ProfileHostJsonData;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    return-object p1
.end method
