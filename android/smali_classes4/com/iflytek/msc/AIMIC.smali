.class public Lcom/iflytek/msc/AIMIC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/msc/AIMIC$Listener;
    }
.end annotation


# static fields
.field public static final DEF_LIBNAME_C:Ljava/lang/String; = "aimic"

.field public static final INVALID_HANDLER:J = 0x0L

.field private static final VAL_SEP:Ljava/lang/String; = ";"

.field private static sHandler:J = 0x0L

.field private static sIsLoaded:Z = false

.field private static sSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/iflytek/msc/AIMIC;->sSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AIMICAudioWrite(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICDebugLog(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICDestroy(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICGetChannel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICGetParam(J[B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICGetVersion()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICNew([BLcom/iflytek/msc/AIMIC$Listener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICResetEng(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICSetParam(J[B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static getHandler()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/iflytek/msc/AIMIC;->sHandler:J

    return-wide v0
.end method

.method public static isLoaded()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/msc/AIMIC;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/iflytek/msc/AIMIC;->sIsLoaded:Z

    .line 3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isValid()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/iflytek/msc/AIMIC;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-wide v1, Lcom/iflytek/msc/AIMIC;->sHandler:J

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iflytek/msc/AIMIC;->sSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sput-boolean v1, Lcom/iflytek/msc/AIMIC;->sIsLoaded:Z

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "aimic"

    .line 4
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v2, ";"

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 6
    :goto_0
    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 7
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    .line 8
    sput-boolean p0, Lcom/iflytek/msc/AIMIC;->sIsLoaded:Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
