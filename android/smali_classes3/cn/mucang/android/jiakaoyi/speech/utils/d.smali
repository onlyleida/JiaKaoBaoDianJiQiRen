.class public final Lcn/mucang/android/jiakaoyi/speech/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u0006\u0010\u0008\u001a\u00020\u0006J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000e\u001a\u00020\nJ\u0016\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/utils/ReportManager;",
        "",
        "()V",
        "mSpeechApi",
        "Lcn/mucang/android/jiakaoyi/speech/semantic/SpeechApi;",
        "getAsrVoicePath",
        "",
        "getRootPath",
        "getWakePath",
        "reportInvokeRet",
        "",
        "reply",
        "Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;",
        "anwText",
        "reportWakeupTimes",
        "uploadAsrWav",
        "sessionId",
        "result",
        "speech_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/speech/utils/d;

.field private static final b:Lcn/mucang/android/jiakaoyi/speech/semantic/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/utils/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/speech/utils/d;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/speech/utils/d;->a:Lcn/mucang/android/jiakaoyi/speech/utils/d;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/semantic/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/speech/semantic/e;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/speech/utils/d;->b:Lcn/mucang/android/jiakaoyi/speech/semantic/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 4
    :goto_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->h(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;)V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->j()V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final h(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;)V
    .locals 8

    const-string v0, "$anwText"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getTip()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key14:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v7, 0x1

    .line 2
    :goto_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/speech/utils/d;->b:Lcn/mucang/android/jiakaoyi/speech/semantic/e;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getRecordId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getCommandId()J

    move-result-wide v5

    move-object v4, p0

    invoke-virtual/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/speech/semantic/e;->d(JLjava/lang/String;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final j()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/utils/d;->b:Lcn/mucang/android/jiakaoyi/speech/semantic/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/semantic/e;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "$sessionId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/mucang/android/jiakaoyi/speech/utils/d;->a:Lcn/mucang/android/jiakaoyi/speech/utils/d;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/msc/iat-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".wav"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/m;->c(Ljava/io/File;Ljava/io/File;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/semantic/g;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/speech/semantic/g;-><init>()V

    invoke-virtual {v1, v0, p0, p1}, Lcn/mucang/android/jiakaoyi/speech/semantic/g;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/upload/UploadResult;

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReportManager"

    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/msc/iat.wav"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "File(getRootPath(), \"/msc/iat.wav\").absolutePath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/msc/ivw.wav"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "File(getRootPath(), \"/msc/ivw.wav\").absolutePath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g(Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anwText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/utils/a;

    invoke-direct {v0, p2, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/a;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i()V
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/utils/b;->a:Lcn/mucang/android/jiakaoyi/speech/utils/b;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/utils/c;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/utils/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method
