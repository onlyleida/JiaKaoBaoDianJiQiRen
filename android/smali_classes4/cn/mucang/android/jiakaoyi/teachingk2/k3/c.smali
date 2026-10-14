.class public final Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0007J\u0014\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0007H\u0007J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/k3/TeachModeManager;",
        "",
        "()V",
        "KEY",
        "",
        "getSelectMode",
        "getUnityModeList",
        "",
        "key",
        "unitySelectMode",
        "",
        "mode",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->Teach:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(key(), K3TeachMode.Teach.mode)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final c()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v0

    const-string v1, "Key_User_Mode_"

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/account/data/AuthUser;->getMucangId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final f(Ljava/lang/String;)V
    .locals 4

    const-string v0, "$mode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->g()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->g()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
