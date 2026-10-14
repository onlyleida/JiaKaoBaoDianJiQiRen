.class public final Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0017\u001a\u00020\u0018J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001a\u001a\u00020\u0012H\u0002J\u001e\u0010\u001b\u001a\u00020\u00182\u0008\u0010\u001c\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0012H\u0002J\u0012\u0010!\u001a\u00020\u00182\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u0016\u0010\"\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u0004J\u0008\u0010$\u001a\u00020\u0018H\u0002J\u0008\u0010%\u001a\u00020\u0018H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;",
        "",
        "()V",
        "HardwareAreaAlgType",
        "",
        "RESP_FAIL_TRY_MAX_COUNTS",
        "SET_GEAR_ALG",
        "SoftwareAreaAlgType",
        "TAG",
        "",
        "algType",
        "comStateListener",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;",
        "gearData",
        "",
        "id",
        "Ljava/lang/Integer;",
        "isInited",
        "",
        "messageSender",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/MessageSender;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSetRemoteGearResponse;",
        "respFailTryCounts",
        "init",
        "",
        "initBeforeSend",
        "isMasterSupported",
        "log",
        "msg",
        "throwable",
        "",
        "reportResult",
        "success",
        "sendGear2Master",
        "sendGearALGData",
        "type",
        "sendGearALGType",
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
.field public static final a:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;

.field private static b:[B

.field private static c:I

.field private static d:Z

.field private static e:Ljava/lang/Integer;

.field private static f:I

.field private static g:Lcn/mucang/android/jiakaoyi/signal/communicate/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/signal/communicate/q<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->a:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/c;->a:Lcn/mucang/jiakaoyi/uilib/gear/c;

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->h:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->f:I

    return v0
.end method

.method public static final synthetic b()[B
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->b:[B

    return-object v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->c:I

    return v0
.end method

.method public static final synthetic d(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->r(Z)V

    return-void
.end method

.method public static final synthetic e(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->s([B)V

    return-void
.end method

.method public static final synthetic f(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->u()V

    return-void
.end method

.method public static final synthetic g(I)V
    .locals 0

    .line 1
    sput p0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->c:I

    return-void
.end method

.method public static final synthetic h(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->v()V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
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
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->a:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "\u4e3b\u63a7\u8fde\u63a5\u56de\u8c03\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p0, :cond_1

    .line 3
    sget-object p0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->b:[B

    if-eqz p0, :cond_1

    .line 4
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    sget v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->f:I

    invoke-virtual {p1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->t([BI)V

    :cond_1
    return-void
.end method

.method private static final k(Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;)V
    .locals 9

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->a:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u5230\u201d\u6863\u4f4d\u6807\u5b9a\u201c\u8bf7\u6c42, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;->algType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;->gearData:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 2
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/gear/e;->a:Lcn/mucang/jiakaoyi/uilib/gear/e$a;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;->gearData:[B

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcn/mucang/jiakaoyi/uilib/gear/e$a;->f([BZ)[B

    move-result-object v4

    .line 3
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;-><init>([BZ)V

    invoke-virtual {v1, v6}, Lcn/mucang/jiakaoyi/uilib/gear/e$a;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\u89e3\u7801\u540e\u6863\u4f4d\u6570\u636e\uff1a"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v2, v3, v2}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v4, :cond_5

    .line 5
    array-length v6, v4

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    xor-int/2addr v6, v7

    if-eqz v6, :cond_5

    .line 6
    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->l()V

    .line 7
    iget v6, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->e:Ljava/lang/Integer;

    .line 8
    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;->algType:I

    if-ne p0, v3, :cond_4

    if-nez v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/gear/entity/a;->b(Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;)Ljava/util/List;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    .line 10
    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->I(Z)V

    .line 11
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->H(Ljava/util/List;)V

    :cond_2
    if-eqz v2, :cond_3

    const/4 v5, 0x1

    .line 12
    :cond_3
    invoke-direct {v0, v5}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->r(Z)V

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v0, v4, p0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->t([BI)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final l()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->v()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->h:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V

    return-void
.end method

.method private final m()Z
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "\u81ea\u52a8\u6321\u4e0d\u652f\u6301\u6863\u4f4d\u6807\u5b9a"

    .line 2
    invoke-static {p0, v0, v3, v2, v3}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

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

    invoke-static {p0, v0, v3, v2, v3}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v1

    :cond_2
    :goto_0
    return v4
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->i(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->k(Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;)V

    return-void
.end method

.method private final p(Ljava/lang/String;Ljava/lang/Throwable;)V
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

    const-string v1, "RemoteGearSetter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->p(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final r(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u62a5\u670d\u52a1\u5668\u6863\u4f4d\u6807\u5b9a\u7ed3\u679c: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->e:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/u;->k(IZ)Z

    :cond_0
    return-void
.end method

.method private final s([B)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    array-length v2, p1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->MasterNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->j(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v2, v3, :cond_2

    const-string p1, "\u4e3b\u63a7\u672a\u8fde\u63a5"

    .line 3
    invoke-static {p0, p1, v1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 4
    :cond_2
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->g:Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->a()V

    .line 5
    :goto_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;

    const/4 v3, 0x3

    const-wide/16 v4, 0xfa0

    new-instance v6, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGear2Master$1;

    invoke-direct {v6, p1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGear2Master$1;-><init>([B)V

    sget-object v7, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGear2Master$2;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGear2Master$2;

    new-instance v8, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGear2Master$3;

    invoke-direct {v8, p1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGear2Master$3;-><init>([B)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->g:Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    if-nez v0, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    :goto_2
    return-void

    :cond_5
    :goto_3
    const-string p1, "\u6863\u4f4d\u6570\u636e\u4e3a\u7a7a"

    .line 7
    invoke-static {p0, p1, v1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final u()V
    .locals 9

    .line 1
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;

    .line 2
    sget-object v5, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$1;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$1;

    sget-object v6, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$2;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$2;

    sget-object v7, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$3;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$3;

    const/4 v2, 0x0

    const-wide/16 v3, 0x7d0

    move-object v0, v8

    .line 3
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 4
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method

.method private final v()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->g:Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->a()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    sput v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->c:I

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->e:Ljava/lang/Integer;

    .line 4
    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->b:[B

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->h:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->N(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/gear/d;->a:Lcn/mucang/jiakaoyi/uilib/gear/d;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->a:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->k()V

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->d:Z

    return-void
.end method

.method public final t([BI)V
    .locals 1

    const-string v0, "gearData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->b:[B

    .line 2
    sput p2, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->f:I

    const/4 p1, 0x0

    .line 3
    sput p1, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->c:I

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->u()V

    return-void
.end method
