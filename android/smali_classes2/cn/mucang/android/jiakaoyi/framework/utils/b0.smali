.class public Lcn/mucang/android/jiakaoyi/framework/utils/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/utils/b0$a;
    }
.end annotation


# static fields
.field private static volatile d:Lcn/mucang/android/jiakaoyi/framework/utils/b0;

.field private static final e:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/utils/b0$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:I

.field private volatile c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->d:Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->d:Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;-><init>()V

    sput-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->d:Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->d:Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    return-object v0
.end method

.method private synthetic c(I)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/framework/utils/b0$a;

    .line 4
    invoke-interface {v2, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/b0$a;->a(I)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return v1

    .line 5
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->c:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 6
    monitor-exit p0

    return v0

    .line 7
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic d(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->c(I)V

    return-void
.end method

.method public declared-synchronized e(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->c:Ljava/lang/Boolean;

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b:I

    if-eq v0, p1, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/f;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/f;-><init>(Lcn/mucang/android/jiakaoyi/framework/utils/b0;I)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
