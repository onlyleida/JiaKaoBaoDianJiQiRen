.class public Lcn/mucang/android/jiakaoyi/signal/com/x/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;
    }
.end annotation


# static fields
.field private static final b:Lcn/mucang/android/jiakaoyi/signal/com/x/c;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/signal/com/x/c$a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/x/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/com/x/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/com/x/c;->b:Lcn/mucang/android/jiakaoyi/signal/com/x/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/c;->a:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized a(I)Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/mucang/android/jiakaoyi/signal/com/x/c$a<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/com/x/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/x/c;->b:Lcn/mucang/android/jiakaoyi/signal/com/x/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/com/x/c;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(I)Z
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/com/x/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/x/c;->b:Lcn/mucang/android/jiakaoyi/signal/com/x/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/com/x/c;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
