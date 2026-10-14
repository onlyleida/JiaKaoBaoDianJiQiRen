.class public Lcn/mucang/android/core/identity/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static declared-synchronized a()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcn/mucang/android/core/identity/i;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/identity/PrivacyDataManager;->e()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcn/mucang/android/core/identity/i;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/identity/PrivacyDataManager;->f()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
