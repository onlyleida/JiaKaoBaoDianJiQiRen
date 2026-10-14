.class public Lcn/mucang/android/download/a;
.super Lcn/mucang/android/core/db/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/download/a$b;
    }
.end annotation


# static fields
.field private static g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "downloadmanager"

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/core/db/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized G()Lcn/mucang/android/download/a;
    .locals 2

    const-class v0, Lcn/mucang/android/download/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/download/a$b;->a:Lcn/mucang/android/download/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized H()V
    .locals 2

    const-class v0, Lcn/mucang/android/download/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcn/mucang/android/download/a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_1
    sput-boolean v1, Lcn/mucang/android/download/a;->g:Z

    .line 4
    new-instance v1, Lcn/mucang/android/download/a$a;

    invoke-direct {v1}, Lcn/mucang/android/download/a$a;-><init>()V

    invoke-static {v1}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
