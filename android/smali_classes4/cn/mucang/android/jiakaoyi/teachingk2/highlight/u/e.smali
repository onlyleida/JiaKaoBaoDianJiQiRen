.class public final Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0019\u001a\u00020\u000fJ,\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004H\u0002J\u0008\u0010 \u001a\u00020\u001bH\u0016J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\nH\u0016J\u000e\u0010#\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010$\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/VideoRecorder;",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;",
        "()V",
        "CAPTURE_PREPARE",
        "",
        "CAPTURE_RUNNING",
        "CAPTURE_STOP",
        "TAG",
        "",
        "byteBuffer",
        "",
        "es",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "fileAvailable",
        "",
        "mCaptureState",
        "mEncodeListener",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/Encoder$EncodeListener;",
        "mEncoder",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/Encoder;",
        "needSave",
        "startTime",
        "",
        "time",
        "isRunning",
        "nv21ToNV12",
        "",
        "nv21",
        "nv12",
        "width",
        "height",
        "onDisconnect",
        "onPreviewFrame",
        "data",
        "startRecord",
        "stopRecord",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static c:J

.field private static d:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;

.field private static volatile e:I

.field private static f:Z

.field private static g:[B

.field private static h:J

.field private static i:Z

.field private static final j:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->b:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e$a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->f:Z

    return v0
.end method

.method public static final synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->i:Z

    return v0
.end method

.method public static final synthetic d()J
    .locals 2

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->h:J

    return-wide v0
.end method

.method public static final synthetic e(I)V
    .locals 0

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->e:I

    return-void
.end method

.method private final g([B[BII)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    mul-int p3, p3, p4

    .line 1
    div-int/lit8 p4, p3, 0x2

    add-int/2addr p4, p3

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 3
    aget-byte v2, p1, v0

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p3, p4, :cond_2

    add-int/lit8 v0, p3, -0x1

    .line 4
    aget-byte v0, p1, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x2

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(J)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->PUSH:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0, v1, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->registerCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    .line 2
    sput-wide p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->h:J

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;

    if-nez p1, :cond_4

    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->e:I

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 4
    sput-boolean p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->f:Z

    const/4 p2, 0x1

    .line 5
    sput p2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->e:I

    .line 6
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;

    sget-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->h:J

    invoke-virtual {p2, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->e(J)Ljava/io/File;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 9
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/d;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getHeight()I

    move-result v0

    invoke-direct {v1, p2, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;

    if-nez v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->j:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;

    invoke-virtual {v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->j(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c$a;)V

    :goto_0
    :try_start_0
    const-string p2, "VideoRecorder:\u5f00\u59cb\u5f55\u5236"

    .line 11
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 12
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->g()V

    .line 13
    :goto_1
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 14
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoRecorder:\u7f16\u7801\u5668\u521d\u59cb\u5316\u5931\u8d25\uff0c"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 15
    sput p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->e:I

    :cond_4
    :goto_2
    return-void
.end method

.method public final i(Z)V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->PUSH:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0, v1, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->unregisterCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    .line 2
    sput-boolean p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->i:Z

    .line 3
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    sput-boolean p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->f:Z

    .line 5
    sput v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->e:I

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->n()V

    :goto_2
    const/4 p1, 0x0

    .line 7
    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;

    return-void
.end method

.method public onConnect()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onConnect(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onDetached(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->i(Z)V

    return-void
.end method

.method public onPreviewFrame([B)V
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    sget-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x28

    cmp-long v6, v2, v4

    if-lez v6, :cond_6

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;

    sput-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->c:J

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->g:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    array-length v0, v0

    array-length v3, p1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    .line 6
    :cond_2
    array-length v0, p1

    new-array v0, v0, [B

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->g:[B

    .line 7
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->g:[B

    sget-object v3, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v3}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getHeight()I

    move-result v3

    invoke-direct {v2, p1, v0, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->g([B[BII)V

    .line 8
    :try_start_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->g:[B

    if-nez v0, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    array-length v2, v0

    :goto_1
    invoke-virtual {p1, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/c;->c([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "\u7f16\u7801\u5668\u9519\u8bef\uff0c\u505c\u6b62\u5f55\u5236"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->i(Z)V

    :cond_6
    :goto_2
    return-void
.end method
