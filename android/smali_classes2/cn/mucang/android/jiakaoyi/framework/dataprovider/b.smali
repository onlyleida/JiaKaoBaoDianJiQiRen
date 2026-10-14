.class public final Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J1\u0010\t\u001a\u0004\u0018\u0001H\n\"\u0008\u0008\u0000\u0010\n*\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ.\u0010\u000f\u001a\u00020\u0010\"\u0008\u0008\u0000\u0010\n*\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u00052\u000e\u0010\u0011\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\n0\u0005J\u001e\u0010\u0012\u001a\u00020\u0010\"\u0008\u0008\u0000\u0010\n*\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u0005RB\u0010\u0003\u001a6\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00050\u0004j\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\u0008\u001a*\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004j\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/dataprovider/DataProviderRegister;",
        "",
        "()V",
        "providerClazzMap",
        "Ljava/util/HashMap;",
        "Ljava/lang/Class;",
        "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;",
        "Lkotlin/collections/HashMap;",
        "providerMap",
        "getImpl",
        "T",
        "provider",
        "args",
        "Landroid/os/Bundle;",
        "(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;",
        "register",
        "",
        "impl",
        "unregister",
        "framework_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->c:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    if-eqz v2, :cond_0

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_1
    aput-object p2, v1, v3

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/s;->c(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    .line 4
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_4
    invoke-virtual {v1, p2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;->setArgs(Landroid/os/Bundle;)V

    :goto_1
    return-object v1
.end method

.method public final c(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
