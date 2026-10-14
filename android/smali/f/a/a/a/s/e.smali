.class public final Lf/a/a/a/s/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000A\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0007H\u0007J\u0012\u0010\u000e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0007J\u0008\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0007H\u0007J\u0012\u0010\u0014\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0004H\u0007J\u0010\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u0012H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/android/core/ui/PrivacyAgreementSetting;",
        "",
        "()V",
        "defaultData",
        "Lcn/mucang/android/core/ui/AppDefaultDataProvider;",
        "listeners",
        "",
        "Lcn/mucang/android/core/ui/PrivacyAgreementSettingListener;",
        "storage",
        "cn/mucang/android/core/ui/PrivacyAgreementSetting$storage$1",
        "Lcn/mucang/android/core/ui/PrivacyAgreementSetting$storage$1;",
        "addPrivacyAgreementListener",
        "",
        "l",
        "debugInvokeStack",
        "name",
        "",
        "isUserAcceptPrivacyAgreement",
        "",
        "removePrivacyAgreementListener",
        "runOnceAgree",
        "runnable",
        "Ljava/lang/Runnable;",
        "setAppDefaultDataProvider",
        "p",
        "setUserAcceptPrivacyAgreement",
        "accept",
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
.field public static final a:Lf/a/a/a/s/e;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/a/s/f;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lf/a/a/a/s/d;

.field private static d:Lf/a/a/a/s/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf/a/a/a/s/e;

    invoke-direct {v0}, Lf/a/a/a/s/e;-><init>()V

    sput-object v0, Lf/a/a/a/s/e;->a:Lf/a/a/a/s/e;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lf/a/a/a/s/e;->b:Ljava/util/List;

    .line 2
    new-instance v0, Lf/a/a/a/s/e$b;

    invoke-direct {v0}, Lf/a/a/a/s/e$b;-><init>()V

    sput-object v0, Lf/a/a/a/s/e;->d:Lf/a/a/a/s/e$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lf/a/a/a/s/f;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lf/a/a/a/s/b;

    invoke-direct {v0, p0}, Lf/a/a/a/s/b;-><init>(Lf/a/a/a/s/f;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final b(Lf/a/a/a/s/f;)V
    .locals 2

    const-string v0, "$l"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lf/a/a/a/s/e;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "invoke stack"

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "core invoke "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static final d()Z
    .locals 3

    .line 1
    sget-object v0, Lf/a/a/a/s/e;->d:Lf/a/a/a/s/e$b;

    invoke-virtual {v0}, Lf/a/a/a/s/e$b;->get()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    sget-object v0, Lf/a/a/a/s/e;->c:Lf/a/a/a/s/d;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "core"

    const-string v2, "AppDefaultDataProvider not set"

    .line 4
    invoke-static {v0, v2}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v0}, Lf/a/a/a/s/d;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 6
    sget-object v2, Lf/a/a/a/s/e;->d:Lf/a/a/a/s/e$b;

    invoke-virtual {v2, v0}, Lf/a/a/a/r/e;->b(Ljava/lang/String;)Z

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    return v1
.end method

.method public static synthetic e(Lf/a/a/a/s/f;)V
    .locals 0

    invoke-static {p0}, Lf/a/a/a/s/e;->i(Lf/a/a/a/s/f;)V

    return-void
.end method

.method public static synthetic f(Lf/a/a/a/s/f;)V
    .locals 0

    invoke-static {p0}, Lf/a/a/a/s/e;->b(Lf/a/a/a/s/f;)V

    return-void
.end method

.method public static synthetic g(Z)V
    .locals 0

    invoke-static {p0}, Lf/a/a/a/s/e;->l(Z)V

    return-void
.end method

.method public static final h(Lf/a/a/a/s/f;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lf/a/a/a/s/a;

    invoke-direct {v0, p0}, Lf/a/a/a/s/a;-><init>(Lf/a/a/a/s/f;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final i(Lf/a/a/a/s/f;)V
    .locals 1

    const-string v0, "$l"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lf/a/a/a/s/e;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final j(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lf/a/a/a/s/e$a;

    invoke-direct {v0, p0}, Lf/a/a/a/s/e$a;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lf/a/a/a/s/e;->a(Lf/a/a/a/s/f;)V

    :goto_0
    return-void
.end method

.method public static final declared-synchronized k(Z)V
    .locals 3

    const-class v0, Lf/a/a/a/s/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lf/a/a/a/s/e;->d:Lf/a/a/a/s/e$b;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/a/a/a/r/e;->b(Ljava/lang/String;)Z

    .line 2
    new-instance v1, Lf/a/a/a/s/c;

    invoke-direct {v1, p0}, Lf/a/a/a/s/c;-><init>(Z)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final l(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lf/a/a/a/s/e;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/a/s/f;

    .line 3
    invoke-interface {v1, p0}, Lf/a/a/a/s/f;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
