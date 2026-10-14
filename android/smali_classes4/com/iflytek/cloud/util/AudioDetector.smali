.class public abstract Lcom/iflytek/cloud/util/AudioDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;
    }
.end annotation


# static fields
.field public static final DEF_BOS:I = 0x7d0

.field public static final DEF_ENGINE_TYPE:Ljava/lang/String; = "fixfront"

.field public static final DEF_EOS:I = 0x2bc

.field public static final DEF_RATE:I = 0x3e80

.field public static final EARLY_START:Ljava/lang/String; = "early_start"

.field public static final MAX_BUF_LEN:I = 0x8000

.field public static final REDUCE_FLOW:Ljava/lang/String; = "vad_reduce_flow"

.field public static final RESET_SENTENCE:Ljava/lang/String; = "reset_sentence"

.field public static final RES_PATH:Ljava/lang/String; = "vad_res_path"

.field public static final SUB_TIMEOUT:Ljava/lang/String; = "sub_timeout"

.field public static final THRESHOLD:Ljava/lang/String; = "threshold"

.field public static final TYPE_FIXFRONT:Ljava/lang/String; = "fixfront"

.field public static final TYPE_META:Ljava/lang/String; = "meta"

.field public static final VAD_ENGINE:Ljava/lang/String; = "vad_engine"

.field protected static a:Lcom/iflytek/cloud/util/AudioDetector;

.field protected static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/util/AudioDetector;->b:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/util/AudioDetector;
    .locals 3

    .line 1
    new-instance v0, Lcom/iflytek/cloud/b/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/b/a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/b/a;->c(Ljava/lang/String;)V

    const-string v1, "lib_name"

    .line 3
    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/iflytek/cloud/util/AudioDetector;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "detector factory load library failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "vad_engine"

    const-string v2, "fixfront"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    new-instance v0, Lcom/iflytek/cloud/util/a/a/a;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/util/a/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v1, "meta"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    new-instance v0, Lcom/iflytek/cloud/util/a/a/b;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/util/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "detector factory unmatched engine type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    const-string v1, "Load library failed."

    .line 14
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static createDetector(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/util/AudioDetector;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDetector enter, context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/iflytek/cloud/util/AudioDetector;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/util/AudioDetector;->a:Lcom/iflytek/cloud/util/AudioDetector;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0, p1}, Lcom/iflytek/cloud/util/AudioDetector;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object p0

    sput-object p0, Lcom/iflytek/cloud/util/AudioDetector;->a:Lcom/iflytek/cloud/util/AudioDetector;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "createDetector leave"

    .line 6
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 7
    sget-object p0, Lcom/iflytek/cloud/util/AudioDetector;->a:Lcom/iflytek/cloud/util/AudioDetector;

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getDetector()Lcom/iflytek/cloud/util/AudioDetector;
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/cloud/util/AudioDetector;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "getDetector enter"

    .line 2
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    sget-object v0, Lcom/iflytek/cloud/util/AudioDetector;->a:Lcom/iflytek/cloud/util/AudioDetector;

    return-object v0

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract destroy()Z
.end method

.method public abstract detect([BIIZ)Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;
.end method

.method public abstract reset()V
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/String;)V
.end method
