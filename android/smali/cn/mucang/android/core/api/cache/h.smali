.class Lcn/mucang/android/core/api/cache/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/cache/h$b;
    }
.end annotation


# instance fields
.field private volatile a:Lcn/mucang/android/core/api/cache/impl/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/api/cache/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/h;-><init>()V

    return-void
.end method

.method public static a()Lcn/mucang/android/core/api/cache/h;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/api/cache/h$b;->a()Lcn/mucang/android/core/api/cache/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lcn/mucang/android/core/api/cache/impl/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/h;->a:Lcn/mucang/android/core/api/cache/impl/d;

    if-nez v0, :cond_2

    .line 2
    const-class v0, Lcn/mucang/android/core/api/cache/h;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/api/cache/h;->a:Lcn/mucang/android/core/api/cache/impl/d;

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/api/cache/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    monitor-exit v0

    return-object v1

    .line 6
    :cond_0
    new-instance v2, Lcn/mucang/android/core/api/cache/impl/d$b;

    invoke-direct {v2}, Lcn/mucang/android/core/api/cache/impl/d$b;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/mucang/android/core/api/cache/impl/d$b;->b(Ljava/lang/String;)Lcn/mucang/android/core/api/cache/impl/d$b;

    invoke-virtual {v2}, Lcn/mucang/android/core/api/cache/impl/d$b;->a()Lcn/mucang/android/core/api/cache/impl/d;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/core/api/cache/h;->a:Lcn/mucang/android/core/api/cache/impl/d;

    .line 7
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/h;->a:Lcn/mucang/android/core/api/cache/impl/d;

    return-object v0
.end method
