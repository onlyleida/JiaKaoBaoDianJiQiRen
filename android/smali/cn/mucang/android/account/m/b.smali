.class public final Lcn/mucang/android/account/m/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/m/b$b;,
        Lcn/mucang/android/account/m/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\r\u001a\u0004\u0018\u00010\nH\u0007J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0007J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0014H\u0002J\u000e\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017J\u0012\u0010\u001a\u001a\u00020\u00142\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u0006\u0010\u001d\u001a\u00020\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/android/account/qrcode/QrCodeHelper;",
        "",
        "()V",
        "executorService",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "mRetryNum",
        "",
        "qrCodeApi",
        "Lcn/mucang/android/account/qrcode/api/QrCodeApi;",
        "qrCodeModel",
        "Lcn/mucang/android/account/qrcode/model/QrCodeModel;",
        "stopThreadFlag",
        "",
        "getQrCode",
        "getQrCodeBitmap",
        "Landroid/graphics/Bitmap;",
        "width",
        "",
        "height",
        "getResult",
        "",
        "delayFlag",
        "scanListener",
        "Lcn/mucang/android/account/qrcode/listener/ScanLoginStatusListener;",
        "init",
        "startListenLoginStatus",
        "startScanPage",
        "from",
        "",
        "stopListenLoginStatus",
        "Companion",
        "QrCodeHelperHolder",
        "account_release"
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
.field public static final f:Lcn/mucang/android/account/m/b$a;


# instance fields
.field private a:I

.field private b:Z

.field private final c:Lcn/mucang/android/account/m/c/a;

.field private d:Lcn/mucang/android/account/qrcode/model/QrCodeModel;

.field private e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/account/m/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/account/m/b$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/account/m/c/a;

    invoke-direct {v0}, Lcn/mucang/android/account/m/c/a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/account/m/b;->c:Lcn/mucang/android/account/m/c/a;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/account/m/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/m/b;->f()V

    return-void
.end method

.method private final d(ZLcn/mucang/android/account/m/d/a;)V
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/account/m/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/account/m/b;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/16 p1, 0x4e48

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, p1, v0}, Lcn/mucang/android/account/m/d/a;->onCallback(ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/account/m/b;->b:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x2

    .line 4
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/account/m/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    new-instance v2, Lcn/mucang/android/account/m/a;

    invoke-direct {v2, p0, p2}, Lcn/mucang/android/account/m/a;-><init>(Lcn/mucang/android/account/m/b;Lcn/mucang/android/account/m/d/a;)V

    .line 6
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-interface {p1, v2, v0, v1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    return-void
.end method

.method private static final e(Lcn/mucang/android/account/m/b;Lcn/mucang/android/account/m/d/a;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$scanListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/m/b;->d:Lcn/mucang/android/account/qrcode/model/QrCodeModel;

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/account/qrcode/model/QrCodeModel;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 2
    :goto_0
    invoke-static {v1}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x4e48

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p1, v3, v2}, Lcn/mucang/android/account/m/d/a;->onCallback(ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V

    return-void

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcn/mucang/android/account/m/b;->b:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 5
    :try_start_0
    iget-object v4, p0, Lcn/mucang/android/account/m/b;->c:Lcn/mucang/android/account/m/c/a;

    invoke-virtual {v4, v1}, Lcn/mucang/android/account/m/c/a;->h(Ljava/lang/String;)Lcn/mucang/android/account/qrcode/model/QrAuthUser;

    move-result-object v1

    if-nez v1, :cond_4

    .line 6
    invoke-direct {p0, v0, p1}, Lcn/mucang/android/account/m/b;->d(ZLcn/mucang/android/account/m/d/a;)V

    return-void

    .line 7
    :cond_4
    invoke-virtual {v1}, Lcn/mucang/android/account/qrcode/model/QrAuthUser;->getScanLoginStatus()I

    move-result v4

    invoke-interface {p1, v4, v1}, Lcn/mucang/android/account/m/d/a;->onCallback(ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V

    .line 8
    invoke-virtual {v1}, Lcn/mucang/android/account/qrcode/model/QrAuthUser;->getScanLoginStatus()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcn/mucang/android/account/qrcode/model/QrAuthUser;->getScanLoginStatus()I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 9
    :cond_5
    invoke-direct {p0, v0, p1}, Lcn/mucang/android/account/m/b;->d(ZLcn/mucang/android/account/m/d/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 10
    instance-of v4, v1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v4, :cond_6

    check-cast v1, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v1}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 11
    invoke-interface {p1, v3, v2}, Lcn/mucang/android/account/m/d/a;->onCallback(ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V

    return-void

    .line 12
    :cond_6
    invoke-direct {p0, v0, p1}, Lcn/mucang/android/account/m/b;->d(ZLcn/mucang/android/account/m/d/a;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private final f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/account/m/b;->a:I

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/account/m/b;Lcn/mucang/android/account/m/d/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/m/b;->e(Lcn/mucang/android/account/m/b;Lcn/mucang/android/account/m/d/a;)V

    return-void
.end method


# virtual methods
.method public final b()Lcn/mucang/android/account/qrcode/model/QrCodeModel;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/account/m/b;->b:Z

    .line 2
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/account/m/b;->c:Lcn/mucang/android/account/m/c/a;

    invoke-virtual {v0}, Lcn/mucang/android/account/m/c/a;->j()Lcn/mucang/android/account/qrcode/model/QrCodeModel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/m/b;->d:Lcn/mucang/android/account/qrcode/model/QrCodeModel;

    .line 4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 5
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

    .line 6
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/account/m/b;->d:Lcn/mucang/android/account/qrcode/model/QrCodeModel;

    return-object v0
.end method

.method public final c(FF)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/m/b;->b()Lcn/mucang/android/account/qrcode/model/QrCodeModel;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/m/b;->d:Lcn/mucang/android/account/qrcode/model/QrCodeModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/account/qrcode/model/QrCodeModel;->getProtocolUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_4

    .line 3
    :cond_3
    invoke-static {}, Lf/a/a/a/p/a;->a()Lf/a/a/a/p/b;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 4
    :cond_4
    iget-object v2, p0, Lcn/mucang/android/account/m/b;->d:Lcn/mucang/android/account/qrcode/model/QrCodeModel;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcn/mucang/android/account/qrcode/model/QrCodeModel;->getProtocolUrl()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {p1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result p1

    .line 5
    invoke-static {p2}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result p2

    .line 6
    invoke-interface {v0, v1, p1, p2}, Lf/a/a/a/p/b;->createQRImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_6
    :goto_4
    return-object v1
.end method

.method public final h(Lcn/mucang/android/account/m/d/a;)V
    .locals 2

    const-string v0, "scanListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/account/m/b;->b:Z

    .line 2
    iput v0, p0, Lcn/mucang/android/account/m/b;->a:I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/account/m/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/account/m/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    :cond_0
    invoke-direct {p0, v0, p1}, Lcn/mucang/android/account/m/b;->d(ZLcn/mucang/android/account/m/d/a;)V

    return-void
.end method

.method public final i()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/account/m/b;->b:Z

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/account/m/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 4
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_1
    iput-object v0, p0, Lcn/mucang/android/account/m/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method
