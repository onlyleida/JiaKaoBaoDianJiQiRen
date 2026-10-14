.class public final Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0003J6\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00192\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!2\u0006\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u0019H\u0002J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u0006H\u0007J\u0006\u0010\'\u001a\u00020\u001cJ\u0006\u0010(\u001a\u00020\u001cJ\u0006\u0010)\u001a\u00020\u001cJ\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J*\u0010+\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0007J \u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000200H\u0002J\u0008\u00102\u001a\u00020\u001cH\u0007J\u0010\u00103\u001a\u00020\u001c2\u0006\u00104\u001a\u00020\u001eH\u0007J\u0018\u00105\u001a\u00020\u001c2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u001eH\u0007J\u0010\u00109\u001a\u00020\u001c2\u0006\u00106\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u001c2\u0006\u0010;\u001a\u00020.H\u0007J2\u0010<\u001a\u00020\u001c2\u0006\u0010=\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00192\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/ScreenRecorder$VideoRecordListener;",
        "()V",
        "cacheEntity",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
        "enable",
        "",
        "entity",
        "focusMode",
        "mediaProjectionCloneData",
        "Landroid/content/Intent;",
        "getMediaProjectionCloneData$annotations",
        "getMediaProjectionCloneData",
        "()Landroid/content/Intent;",
        "setMediaProjectionCloneData",
        "(Landroid/content/Intent;)V",
        "screenRecorder",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/ScreenRecorder;",
        "traceIdObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;",
        "traceUploadObserver",
        "Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadCurrentMsg;",
        "updateObserver",
        "addAudio",
        "Ljava/io/File;",
        "videoFile",
        "cutVideo",
        "",
        "filePath",
        "",
        "originFile",
        "segments",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;",
        "compressFile",
        "compressFaceFile",
        "finishRecord",
        "needSave",
        "init",
        "onEnter",
        "onExit",
        "onRecordFinished",
        "processVideo",
        "sendBroadcast",
        "action",
        "",
        "x",
        "",
        "y",
        "sendClickBroadCast",
        "setFocusMode",
        "mode",
        "showShareDialog",
        "activity",
        "Landroid/app/Activity;",
        "shareUrl",
        "showVideoDialog",
        "startRecord",
        "stepInt",
        "zipVideo",
        "finalFile",
        "teachbase_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

.field private static b:Landroid/content/Intent;

.field private static c:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static d:Z

.field private static e:Z

.field private static final f:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

.field private static g:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

.field private static final h:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->f:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/k;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->h:Landroidx/lifecycle/a0;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/l;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->i:Landroidx/lifecycle/a0;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/m;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->j:Landroidx/lifecycle/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;->b(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 3
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/j;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7cbe\u5f69\u65f6\u523b\uff1a\u4e0a\u4f20\u89c6\u9891\u5931\u8d25,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTrackId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2c

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/android/core/utils/t;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTrackId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final C(Ljava/io/File;Ljava/io/File;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/io/File;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    .line 1
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "finalFile.absolutePath"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->f(Ljava/lang/String;)J

    move-result-wide v9

    move-object/from16 v3, p1

    .line 2
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->i(Ljava/io/File;)Ljava/io/File;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v16}, Lkotlin/io/g;->j(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-ne v8, v6, :cond_0

    :goto_0
    if-eqz v6, :cond_6

    .line 5
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/d;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/core/utils/m;->g(Ljava/lang/String;)Z

    :cond_2
    const-string v6, ".zip"

    if-nez v0, :cond_3

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    .line 8
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "originFile.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v0

    move-object v6, v1

    .line 9
    invoke-virtual/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setCompressPath(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setZipPath(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setCompressDuration(J)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setUpdateTime(J)V

    .line 14
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->o(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 15
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v3

    if-nez v3, :cond_6

    .line 16
    invoke-virtual {v2, v1, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->c(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 17
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ""

    .line 18
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setOriginPath(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "\u7cbe\u5f69\u65f6\u523b\uff1a\u6570\u636e\u5e93\u66f4\u65b0\u5931\u8d25:"

    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;IFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->q(IFF)V

    return-void
.end method

.method private final c(Ljava/io/File;)Ljava/io/File;
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "mime"

    const-string v1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5f00\u59cb\u5408\u6210\u97f3\u9891"

    .line 1
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "videoFile.absolutePath"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ".tmp"

    const-string v4, ".mp4"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 6
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 8
    new-instance v3, Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v4, 0x2

    const v6, -0x186a0

    const/4 v7, 0x0

    .line 9
    :try_start_1
    invoke-virtual {v2, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 10
    invoke-virtual {v2, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v3, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-object v8, v7

    .line 12
    :catchall_1
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v9

    const-string v10, "\u7cbe\u5f69\u65f6\u523b\uff1a\u89c6\u9891\u89e3\u6790\u5931\u8d25\uff0c\u5c1d\u8bd5\u8f68\u9053\u904d\u5386\uff0c\u8f68\u9053\u6570:"

    .line 13
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-lez v9, :cond_3

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v10, v8, 0x1

    .line 14
    invoke-virtual {v2, v8}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    .line 15
    invoke-virtual {v8, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 16
    invoke-static {v11}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v12, "video/"

    invoke-static {v11, v12, v5, v4, v7}, Lkotlin/text/l;->B(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 17
    invoke-virtual {v3, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v9

    goto :goto_2

    :cond_1
    if-lt v10, v9, :cond_2

    goto :goto_1

    :cond_2
    move v8, v10

    goto :goto_0

    :cond_3
    :goto_1
    const v9, -0x186a0

    :goto_2
    if-eq v9, v6, :cond_f

    if-nez v8, :cond_4

    goto/16 :goto_a

    .line 18
    :cond_4
    new-instance v14, Landroid/media/MediaExtractor;

    invoke-direct {v14}, Landroid/media/MediaExtractor;-><init>()V

    .line 19
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "highlight.aac"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v15

    const-string v10, "getContext().assets.openFd(\"highlight.aac\")"

    invoke-static {v15, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v15}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v15}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v12

    invoke-virtual {v15}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v16

    move-object v10, v14

    move-object v6, v14

    move-object/from16 v18, v15

    move-wide/from16 v14, v16

    invoke-virtual/range {v10 .. v15}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 21
    :try_start_4
    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 22
    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 23
    :try_start_5
    invoke-virtual {v3, v10}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_2
    move-object v10, v7

    .line 24
    :catchall_3
    :try_start_6
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v11

    const-string v12, "\u7cbe\u5f69\u65f6\u523b\uff1a\u97f3\u9891\u89e3\u6790\u5931\u8d25\uff0c\u5c1d\u8bd5\u8f68\u9053\u904d\u5386\uff0c\u8f68\u9053\u6570:"

    .line 25
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-lez v11, :cond_7

    const/4 v10, 0x0

    :goto_3
    add-int/lit8 v12, v10, 0x1

    .line 26
    invoke-virtual {v6, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    .line 27
    invoke-virtual {v10, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 28
    invoke-static {v13}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v14, "audio/"

    invoke-static {v13, v14, v5, v4, v7}, Lkotlin/text/l;->B(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 29
    invoke-virtual {v3, v10}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    goto :goto_5

    :cond_5
    if-lt v12, v11, :cond_6

    goto :goto_4

    :cond_6
    move v10, v12

    goto :goto_3

    :cond_7
    :goto_4
    const v0, -0x186a0

    :goto_5
    if-eqz v10, :cond_e

    const v10, -0x186a0

    if-ne v0, v10, :cond_8

    goto/16 :goto_9

    :cond_8
    const/16 v7, 0x64

    const/high16 v10, 0x40000

    .line 30
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 31
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 32
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 33
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v14, 0x0

    .line 34
    invoke-virtual {v2, v14, v15, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 35
    invoke-virtual {v6, v14, v15, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 36
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    const-string v4, "frame-rate"

    .line 37
    invoke-virtual {v8, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const v8, 0xf4240

    .line 38
    div-int/2addr v8, v4

    const/4 v14, 0x0

    :goto_6
    if-nez v14, :cond_a

    .line 39
    iput v7, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 40
    invoke-virtual {v2, v11, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    iput v15, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v15, :cond_9

    .line 41
    iput v5, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v14, 0x1

    goto :goto_6

    .line 42
    :cond_9
    iget-wide v4, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move/from16 v17, v14

    int-to-long v14, v8

    add-long/2addr v4, v14

    iput-wide v4, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 43
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    iput v4, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 44
    invoke-virtual {v3, v9, v11, v12}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 45
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move/from16 v14, v17

    const/4 v5, 0x0

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_d

    .line 46
    iput v7, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 47
    invoke-virtual {v6, v10, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iput v5, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v5, :cond_c

    .line 48
    iget-wide v8, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v14, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v5, v8, v14

    if-lez v5, :cond_b

    goto :goto_8

    .line 49
    :cond_b
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 50
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    iput v5, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 51
    invoke-virtual {v3, v0, v10, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 52
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_7

    :cond_c
    :goto_8
    const/4 v4, 0x0

    .line 53
    iput v4, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v4, 0x1

    goto :goto_7

    .line 54
    :cond_d
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->stop()V

    .line 55
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V

    .line 56
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 57
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    .line 58
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 59
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    const-string v0, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5408\u6210\u97f3\u9891\u6210\u529f"

    .line 60
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v1

    :cond_e
    :goto_9
    const-string v0, "\u7cbe\u5f69\u65f6\u523b\uff1a\u97f3\u9891\u89e3\u6790\u5931\u8d25\uff0c\u67e5\u627e\u8f68\u9053\u5931\u8d25"

    .line 61
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v7

    :cond_f
    :goto_a
    const-string v0, "\u7cbe\u5f69\u65f6\u523b\uff1a\u89c6\u9891\u89e3\u6790\u5931\u8d25\uff0c\u67e5\u627e\u8f68\u9053\u5931\u8d25:"

    .line 62
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    return-object v7

    :catchall_4
    move-exception v0

    .line 63
    invoke-static {v0}, Lcn/mucang/android/core/utils/t;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5408\u6210\u97f3\u9891\u5931\u8d25,"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 65
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 66
    throw v0
.end method

.method private final d(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "\u79d2,"

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;

    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->c(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "originFile.absolutePath"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->f(Ljava/lang/String;)J

    move-result-wide v1

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v1, v4

    .line 3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v6, 0x14

    cmp-long v8, v1, v6

    if-gtz v8, :cond_1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    .line 4
    invoke-static/range {v9 .. v14}, Lkotlin/io/g;->j(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v4, p5

    .line 5
    invoke-static/range {v3 .. v8}, Lkotlin/io/g;->j(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    goto/16 :goto_4

    .line 6
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    long-to-float v6, v1

    const/16 v9, 0x14

    int-to-float v9, v9

    div-float/2addr v6, v9

    move-wide v9, v1

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v9, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    .line 8
    iget-wide v12, v11, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->end:J

    iget-wide v14, v11, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->start:J

    sub-long/2addr v12, v14

    add-long/2addr v9, v12

    goto :goto_0

    :cond_3
    const-wide/32 v11, 0x1312d00

    cmp-long v6, v9, v11

    if-gez v6, :cond_4

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    long-to-float v6, v9

    const v11, 0x4b989680    # 2.0E7f

    div-float/2addr v6, v11

    .line 9
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 11
    check-cast v13, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    .line 12
    new-instance v14, Landroid/util/Pair;

    iget-wide v7, v13, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->start:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 p1, v12

    iget-wide v12, v13, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->end:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v14, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p1

    goto :goto_2

    .line 13
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 14
    new-instance v7, Landroid/util/Pair;

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-wide v12, 0x7fffffffffffffffL

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v7, v8, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5f00\u59cb\u538b\u7f29\u5f55\u5c4f,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v9, v4

    div-long/2addr v9, v4

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x79d2

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/hw/videoprocessor/e;->b(Landroid/content/Context;)Lcom/hw/videoprocessor/e$b;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/hw/videoprocessor/e$b;->s(Ljava/lang/String;)Lcom/hw/videoprocessor/e$b;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/hw/videoprocessor/e$b;->t(Ljava/lang/String;)Lcom/hw/videoprocessor/e$b;

    const/4 v7, 0x0

    .line 17
    invoke-virtual {v2, v7}, Lcom/hw/videoprocessor/e$b;->q(Z)Lcom/hw/videoprocessor/e$b;

    invoke-virtual {v2, v11}, Lcom/hw/videoprocessor/e$b;->r(Ljava/util/List;)Lcom/hw/videoprocessor/e$b;

    invoke-virtual {v2, v6}, Lcom/hw/videoprocessor/e$b;->v(F)Lcom/hw/videoprocessor/e$b;

    invoke-virtual {v2}, Lcom/hw/videoprocessor/e$b;->u()V

    .line 18
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "compressFile.absolutePath"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->f(Ljava/lang/String;)J

    move-result-wide v9

    .line 19
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5b8c\u6210\u538b\u7f29\u5f55\u5c4f,\u65f6\u957f"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_7

    .line 20
    :try_start_1
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "originFaceFile.absolutePath"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->f(Ljava/lang/String;)J

    move-result-wide v9

    .line 22
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5f00\u59cb\u538b\u7f29\u5f55\u50cf,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-long/2addr v9, v4

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/hw/videoprocessor/e;->b(Landroid/content/Context;)Lcom/hw/videoprocessor/e$b;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/hw/videoprocessor/e$b;->s(Ljava/lang/String;)Lcom/hw/videoprocessor/e$b;

    .line 24
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/hw/videoprocessor/e$b;->t(Ljava/lang/String;)Lcom/hw/videoprocessor/e$b;

    invoke-virtual {v0, v7}, Lcom/hw/videoprocessor/e$b;->q(Z)Lcom/hw/videoprocessor/e$b;

    invoke-virtual {v0, v11}, Lcom/hw/videoprocessor/e$b;->r(Ljava/util/List;)Lcom/hw/videoprocessor/e$b;

    invoke-virtual {v0, v6}, Lcom/hw/videoprocessor/e$b;->v(F)Lcom/hw/videoprocessor/e$b;

    invoke-virtual {v0}, Lcom/hw/videoprocessor/e$b;->u()V

    .line 25
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "compressFaceFile.absolutePath"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->f(Ljava/lang/String;)J

    move-result-wide v4

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5b8c\u6210\u538b\u7f29\u5f55\u50cf,\u65f6\u957f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 27
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 28
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u538b\u7f29\u5f55\u50cf\u5f02\u5e38:"

    .line 30
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 32
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    :goto_4
    return-void

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->delete()Z

    .line 34
    throw v0
.end method

.method public static final e(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u7ed3\u675f\u5f55\u5236:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->b()Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->f(Z)V

    if-eqz p0, :cond_2

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;->a()V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;->d()V

    .line 6
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->i(Z)V

    return-void
.end method

.method public static final f()Landroid/content/Intent;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->A(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V

    return-void
.end method

.method public static synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->B(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->x(Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->y(Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->z(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;Ljava/lang/String;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->o(Ljava/lang/String;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V

    return-void
.end method

.method private final q(IFF)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/j/a;->a:Lcn/mucang/jiakaoyi/uilib/j/a;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/ClickEventModel;

    invoke-direct {v1, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/ClickEventModel;-><init>(IFF)V

    const/16 p1, 0x3e8

    .line 3
    invoke-virtual {v0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/j/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static final r()V
    .locals 9

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;->getPermissionClickPoint()Lkotlin/Pair;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;

    invoke-direct {v6, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;-><init>(Lkotlin/Pair;Lkotlin/coroutines/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final s(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->e:Z

    if-eqz p0, :cond_1

    const-string p0, "\u7cbe\u5f69\u65f6\u523b\uff1a\u8bbe\u7f6e\u5173\u6ce8\u6a21\u5f0f\u4e2d\u65ad\u5f55\u5236"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->e(Z)V

    :cond_1
    return-void
.end method

.method public static final t(Landroid/content/Intent;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->b:Landroid/content/Intent;

    return-void
.end method

.method public static final u(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\u7cbe\u5f69\u65f6\u523b\uff1a\u56de\u653e\u70b9\u51fb\u5206\u4eab\u6309\u94ae,"

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightShareDialog;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightShareDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static final v(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u7ec3\u4e60\u70b9\u51fb\u7cbe\u5f69\u65f6\u523b\u6309\u94ae,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->g:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTraceId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->g:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    if-nez v3, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getCompressDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->g:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->g:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    if-nez v0, :cond_4

    goto :goto_3

    .line 4
    :cond_4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :goto_3
    return-void
.end method

.method public static final w(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5f00\u59cb\u7ec3\u4e60:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->e:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->b()Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->f(Z)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->f:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    invoke-virtual {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setStep(I)V

    .line 7
    invoke-virtual {v2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setStartTime(J)V

    .line 8
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;->h(J)V

    .line 9
    :goto_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->c()Landroidx/lifecycle/z;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 10
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->h(J)V

    :cond_3
    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->f:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->traceId:Ljava/lang/String;

    const-string v2, "it.traceId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setTraceId(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->traceId:Ljava/lang/String;

    const-string v0, "\u7cbe\u5f69\u65f6\u523b\uff1a\u751f\u6210\u8f68\u8ff9id,"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u6536\u5230\u8f68\u8ff9\u4e0a\u4f20\u6210\u529f,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;->b:Ljava/lang/String;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/i;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->g:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->h()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;->showShareBtn:Z

    .line 7
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 12

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5b8c\u6210\u5f55\u5236:"

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->f:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTraceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->b()Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->c()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7cbe\u5f69\u65f6\u523b\uff1a\u83b7\u53d6\u65f6\u95f4\u7247\u6bb5:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v1, "segments"

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    .line 8
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->start:J

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->f:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v3, v6

    const-wide/16 v6, 0x3e8

    mul-long v3, v3, v6

    const-wide/16 v8, 0x0

    invoke-static {v3, v4, v8, v9}, Lkotlin/a0/d;->c(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->start:J

    .line 9
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->end:J

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getStartTime()J

    move-result-wide v10

    sub-long/2addr v3, v10

    mul-long v3, v3, v6

    invoke-static {v3, v4, v8, v9}, Lkotlin/a0/d;->c(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->end:J

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5904\u7406\u65f6\u95f4\u7247\u6bb5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->f:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setOriginPath(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setEndTime(J)V

    .line 13
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    const/4 v3, 0x0

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getXyToken()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setXyToken(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getDriveLicenseType()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->setDriveLicenseType(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7cbe\u5f69\u65f6\u523b\uff1a\u51c6\u5907\u4fdd\u5b58\u6570\u636e:"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 17
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$onRecordFinished$2;

    invoke-direct {v3, v1, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$onRecordFinished$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->l(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Lkotlin/jvm/b/l;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->Highlight:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->d:Z

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "\u7cbe\u5f69\u65f6\u523b\u5f00\u5173:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->f()V

    .line 4
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    const-class v0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;-><init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s$a;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\u7cbe\u5f69\u65f6\u523b\uff1a\u9000\u51fa\u7ec3\u4e60\u4e2d\u65ad\u5f55\u5236"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->e(Z)V

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->f:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->reset()V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->h()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;

    move-result-object v1

    iput-boolean v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;->showShareBtn:Z

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
            ")V"
        }
    .end annotation

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "segments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 3
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->g(Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move-object v5, v7

    move-object v6, v8

    .line 4
    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->d(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    .line 5
    invoke-direct {p0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u97f3\u89c6\u9891\u5408\u6210\u5931\u8d25"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v1, p0

    move-object v3, v8

    move-object v4, p3

    move-object v5, v0

    move-object v6, p1

    .line 7
    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->C(Ljava/io/File;Ljava/io/File;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
