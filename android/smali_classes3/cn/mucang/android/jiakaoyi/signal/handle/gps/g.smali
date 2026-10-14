.class public Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 3
    monitor-exit v0

    return-object p0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static d(Ljava/lang/String;I)V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p0, p1, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;-><init>(Ljava/lang/String;IJ)V

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/16 p1, 0x64

    if-le p0, p1, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 9
    :cond_1
    sget-boolean p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->a:Z

    if-eqz p0, :cond_2

    .line 10
    const-class p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->a:Z

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->d(Ljava/lang/String;I)V

    return-void
.end method
