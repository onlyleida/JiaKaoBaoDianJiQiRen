.class public final Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000M\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004*\u0001\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0006H\u0002J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0011J\u0008\u0010\u0017\u001a\u00020\rH\u0002J\u001e\u0010\u0018\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u001a\u0010\u001b\u001a\u00020\u00112\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J\u0008\u0010\u001f\u001a\u00020\u0011H\u0002J\u0008\u0010 \u001a\u00020\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;",
        "",
        "()V",
        "RESP_FAIL_TRY_MAX_COUNTS",
        "",
        "TAG",
        "",
        "comStateListener",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;",
        "gearDataListener",
        "cn/mucang/jiakaoyi/uilib/gear/GearDataReporter$gearDataListener$1",
        "Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$gearDataListener$1;",
        "isGetIng",
        "",
        "isInited",
        "respFailTryCounts",
        "debugToast",
        "",
        "msg",
        "getGearFromMaster",
        "listener",
        "Lcn/mucang/jiakaoyi/uilib/gear/GetGearDataListener;",
        "init",
        "isSupportReport",
        "log",
        "throwable",
        "",
        "postGearData",
        "gearData",
        "",
        "algType",
        "retryGetGearFromMaster",
        "unregisterComListener",
        "uilib_release"
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
.field public static final a:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;

.field private static b:I

.field private static c:Z

.field private static d:Z

.field private static final e:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$a;

.field private static final f:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->a:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$a;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$a;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->e:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$a;

    .line 2
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/b;->a:Lcn/mucang/jiakaoyi/uilib/gear/b;

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->b:I

    return v0
.end method

.method public static final synthetic c(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;[BI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->p([BI)V

    return-void
.end method

.method public static final synthetic d(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->q()V

    return-void
.end method

.method public static final synthetic e(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->d:Z

    return-void
.end method

.method public static final synthetic f(I)V
    .locals 0

    .line 1
    sput p0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->b:I

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->r()V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->MasterNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->j(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2
    :goto_0
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->a:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "\u4e3b\u63a7\u8fde\u63a5\u56de\u8c03\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p0, :cond_1

    .line 3
    sget-object p0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->e:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$a;

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->j(Lcn/mucang/jiakaoyi/uilib/gear/f;)V

    :cond_1
    return-void
.end method

.method private final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final l()Z
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "\u81ea\u52a8\u6321\u6ca1\u6709\u6863\u4f4d\u6a21\u5757"

    .line 2
    invoke-static {p0, v0, v3, v2, v3}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->h()Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->i()I

    move-result v0

    const/16 v5, 0x2a

    if-ge v0, v5, :cond_2

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e3b\u63a7\u7248\u672c:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", < 42, \u4e0d\u652f\u6301\u8fdc\u7a0b\u6863\u4f4d\u6807\u5b9a"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v3}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v1

    :cond_2
    :goto_0
    return v4
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final n(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\n"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteGearReporter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->n(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final p([BI)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/e;->a:Lcn/mucang/jiakaoyi/uilib/gear/e$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/gear/e$a;->f([BZ)[B

    move-result-object p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 2
    array-length v4, p1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    xor-int/2addr v1, v4

    if-eqz v1, :cond_1

    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/e$a;->b(Ljava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u89e3\u7801\u540e\u6863\u4f4d\u6570\u636e\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v3}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const-string v0, "\u6863\u4f4d\u6570\u636e\u4e0a\u62a5\u6210\u529f"

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->i(Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u6863\u4f4d\u6570\u636e\u4e0a\u62a5\u6210\u529f \u7b97\u6cd5\u7c7b\u578b\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v3}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    int-to-byte p2, p2

    .line 7
    invoke-static {p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/u;->j([BB)Z

    goto :goto_1

    :cond_1
    const-string p1, "\u6863\u4f4d\u6570\u636e\u8f6c\u6362\u5931\u8d25"

    .line 8
    invoke-static {p0, p1, v3, v2, v3}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->i(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final q()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->e:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$a;

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->j(Lcn/mucang/jiakaoyi/uilib/gear/f;)V

    return-void
.end method

.method private final r()V
    .locals 3

    const-string v0, "unregisterComListener"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v0, v1, v2, v1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->N(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V

    return-void
.end method


# virtual methods
.method public final j(Lcn/mucang/jiakaoyi/uilib/gear/f;)V
    .locals 9

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->MasterNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->j(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x2

    const-string v0, "\u4e3b\u63a7\u672a\u8fde\u63a5"

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1, p1, v1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-boolean v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->d:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->d:Z

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;

    const/4 v3, 0x3

    const-wide/16 v4, 0xfa0

    .line 6
    sget-object v6, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$1;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$1;

    sget-object v7, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$2;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$2;

    new-instance v8, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$3;

    invoke-direct {v8, p1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$3;-><init>(Lcn/mucang/jiakaoyi/uilib/gear/f;)V

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 8
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    sget-boolean v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->e:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$a;

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->j(Lcn/mucang/jiakaoyi/uilib/gear/f;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V

    goto :goto_2

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->C()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u51c6\u5907\u4e0a\u62a5\u672c\u5730\u6321\u4f4d\u6570\u636e\uff1a "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;-><init>()V

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;->setGearTracks(Ljava/util/List;)V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 12
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/gear/entity/a;->a(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/e;->a:Lcn/mucang/jiakaoyi/uilib/gear/e$a;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/e$a;->c(Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 14
    invoke-direct {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->p([BI)V

    :cond_4
    :goto_2
    return-void
.end method
