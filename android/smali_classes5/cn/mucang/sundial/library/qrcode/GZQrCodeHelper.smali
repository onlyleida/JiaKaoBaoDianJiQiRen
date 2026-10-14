.class public final Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;,
        Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 !2\u00020\u0001:\u0002!\"B\u0007\u00a2\u0006\u0004\u0008 \u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000b\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0004R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;",
        "",
        "Lkotlin/v;",
        "init",
        "()V",
        "",
        "delayFlag",
        "Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;",
        "scanListener",
        "getResult",
        "(ZLcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V",
        "isSignIn",
        "Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;",
        "getQrCode",
        "(Z)Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;",
        "startListenLoginStatus",
        "(Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V",
        "stopListenLoginStatus",
        "qrCodeModel",
        "Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;",
        "Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;",
        "qrCodeApi",
        "Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;",
        "",
        "startCount",
        "I",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "executorService",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "stopThreadFlag",
        "Z",
        "mRetryNum",
        "<init>",
        "Companion",
        "QrCodeHelperHolder",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;

.field public static final MAX_RETRY_NUM:I = 0x78

.field public static final SCAN_RESULT_CANCEL:I = 0x3

.field public static final SCAN_RESULT_LOGIN_SUCCESS:I = 0x2

.field public static final SCAN_RESULT_SCAN_SUCCESS:I = 0x1

.field public static final SCAN_RESULT_TIMEOUT:I = 0x4e48

.field public static final SCAN_RESULT_WAITING:I


# instance fields
.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mRetryNum:I

.field private final qrCodeApi:Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;

.field private qrCodeModel:Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;

.field private startCount:I

.field private stopThreadFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->Companion:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;

    invoke-direct {v0}, Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->qrCodeApi:Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;

    return-void
.end method

.method public static final synthetic access$getQrCodeApi$p(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;)Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->qrCodeApi:Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;

    return-object p0
.end method

.method public static final synthetic access$getQrCodeModel$p(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;)Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->qrCodeModel:Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;

    return-object p0
.end method

.method public static final synthetic access$getResult(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;ZLcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->getResult(ZLcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V

    return-void
.end method

.method public static final synthetic access$getStopThreadFlag$p(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->stopThreadFlag:Z

    return p0
.end method

.method public static final synthetic access$init(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->init()V

    return-void
.end method

.method public static final synthetic access$setQrCodeModel$p(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->qrCodeModel:Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;

    return-void
.end method

.method public static final synthetic access$setStopThreadFlag$p(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->stopThreadFlag:Z

    return-void
.end method

.method public static final doInit()V
    .locals 1

    sget-object v0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->Companion:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;->doInit()V

    return-void
.end method

.method public static final getInstance()Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;
    .locals 1

    sget-object v0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->Companion:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;->getInstance()Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    move-result-object v0

    return-object v0
.end method

.method private final getResult(ZLcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->mRetryNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->mRetryNum:I

    const/16 v1, 0x78

    if-lt v0, v1, :cond_0

    const/16 p1, 0x4e48

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, p1, v0}, Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;->onCallback(ILcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->stopThreadFlag:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x2

    .line 4
    :cond_2
    iget-object p1, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 5
    new-instance v2, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;

    invoke-direct {v2, p0, p2}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$getResult$1;-><init>(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V

    .line 6
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-interface {p1, v2, v0, v1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_4
    return-void
.end method

.method private final init()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->mRetryNum:I

    return-void
.end method


# virtual methods
.method public final getQrCode(Z)Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->stopThreadFlag:Z

    .line 2
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->qrCodeApi:Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;->getQrCode(Z)Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->qrCodeModel:Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;

    .line 4
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 5
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    iget-object p1, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->qrCodeModel:Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;

    return-object p1
.end method

.method public final startListenLoginStatus(Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V
    .locals 2

    const-string v0, "scanListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->stopThreadFlag:Z

    .line 2
    iput v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->mRetryNum:I

    .line 3
    iget v1, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->startCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->startCount:I

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_0
    invoke-direct {p0, v0, p1}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->getResult(ZLcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V

    return-void
.end method

.method public final stopListenLoginStatus()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->stopThreadFlag:Z

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_0

    :cond_0
    move-object v1, v0

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
    iput-object v0, p0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method
