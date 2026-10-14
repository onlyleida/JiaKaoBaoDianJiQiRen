.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private volatile b:Lcn/mucang/android/jiakaoyi/signal/com/v/a;

.field private c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

.field public final d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

.field public final e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

.field protected volatile f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field private g:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

.field protected final h:Ljava/util/concurrent/ExecutorService;

.field protected volatile i:J

.field protected j:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;

.field private k:I

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/com/ComState;",
            ">;"
        }
    .end annotation
.end field

.field private volatile o:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a:Z

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->None:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->h:Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->n:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->o:Z

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    .line 8
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    .line 9
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->k:I

    return-void
.end method

.method private B(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/h;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/h;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;Z)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->k:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->k:I

    .line 4
    :goto_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->k:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u8fde\u63a5\u5f02\u5e38"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->z(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fe1\u9053"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u8fde\u63a5\u65ad\u5f00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->g(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private I(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)V
    .locals 4

    .line 1
    iget-byte v0, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    const-string v1, " , 0x"

    const-string v2, "\u53d1\u9001\u5230"

    const/16 v3, 0x22

    if-ne v0, v3, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ota\u5206\u5305\u6570\u636e,\u957f\u5ea6="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->orderDesc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->r(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderSendRtcm:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget-byte v3, v3, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    if-eq v0, v3, :cond_1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->SendRtcmToJKY:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget-byte v3, v3, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    if-ne v0, v3, :cond_2

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u957f\u5ea6="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->g(Ljava/lang/String;)V

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->orderDesc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->s([BLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private M(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    return-object p1
.end method

.method private N()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Initialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ReInitialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->isGps()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->o:Z

    const-string v0, "GPS\u901a\u9053\u53d1\u9001\u65f6\u4e0d\u53ef\u7528\uff0c\u91cd\u65b0\u8fde\u63a5GPS\u901a\u9053"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->g(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u5148\u5173\u95ed, \u5f53\u524d\u72b6\u6001\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;->close()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/a;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->g:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->g:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->i:J

    return-void
.end method

.method private h(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->D()V

    return-void
.end method

.method static synthetic l(Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    const/4 v0, 0x3

    iput-byte v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    return v1
.end method

.method private synthetic m(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->o()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->AiUpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->l:Z

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a()V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->D()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->H(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne p1, v0, :cond_2

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->D()V

    :cond_2
    return-void
.end method

.method private synthetic o(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/w/e;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-direct {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/signal/com/w/e;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->e(Lcn/mucang/android/jiakaoyi/signal/com/w/e;)V

    return-void
.end method

.method private synthetic q(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;->b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic s()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u91cd\u8bd5\u65f6\u6253\u5f00\u5931\u8d25\uff0c\u91cd\u8bd5\u6b21\u6570:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method private synthetic u([BLcn/mucang/android/jiakaoyi/signal/com/Cmd;)V
    .locals 7

    const-string v0, "McCommunicator"

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "\u53d1\u9001\u6570\u636e\u4e3a\u7a7a"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->g()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "\u4fe1\u9053\u4e0d\u53ef\u7528"

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u65f6\u4e0d\u53ef\u7528\uff0c\u53d1\u9001\u7684order:0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->orderDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->N()V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->i:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->i:J

    goto :goto_0

    .line 9
    :cond_2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->i:J

    sub-long/2addr v0, v2

    sub-long/2addr v4, v0

    .line 10
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->I(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :catch_0
    :try_start_2
    invoke-virtual {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u53d1\u9001\u5931\u8d25,\u72b6\u6001:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\u547d\u4ee4:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->orderDesc:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",\u9519\u8bef:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 15
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne p1, p2, :cond_3

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a()V

    .line 17
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->S(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic w()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->o:Z

    goto :goto_1

    .line 3
    :catchall_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u91cd\u8bd5\u65f6\u6253\u5f00\u5931\u8d25\uff0c\u91cd\u8bd5\u6b21\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->o:Z

    throw v1
.end method

.method private y(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->h(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->h(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->B(Z)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->h(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->h(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->B(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Initialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v2, :cond_a

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->b()V

    .line 4
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->H(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5728\u6253\u5f00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const-wide/16 v0, 0xbb8

    .line 6
    :try_start_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    :cond_1
    move-wide v2, v5

    goto :goto_0

    .line 7
    :cond_2
    instance-of v3, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i;

    if-eqz v3, :cond_3

    const-wide/16 v2, 0x7530

    goto :goto_0

    .line 8
    :cond_3
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->GpsNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    instance-of v2, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/g;

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2710

    :goto_0
    const/4 v4, 0x1

    cmp-long v7, v2, v5

    if-lez v7, :cond_5

    .line 9
    iget-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a:Z

    if-nez v5, :cond_5

    .line 10
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a:Z

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 12
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    .line 13
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    cmp-long v10, v8, v2

    if-gtz v10, :cond_4

    .line 14
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->b()V

    .line 15
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 16
    :cond_4
    throw v7

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 18
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->j:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;

    if-eqz v0, :cond_6

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/a;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->t()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;->a(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 20
    :cond_6
    :try_start_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->J()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 22
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->H(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->k:I

    .line 24
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->l:Z

    return-void

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->G(Ljava/lang/Throwable;)V

    .line 26
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/AiUpdateException;

    if-eqz v1, :cond_7

    .line 27
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->l:Z

    const-wide/16 v0, 0x64

    .line 28
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 29
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->A()V

    return-void

    .line 30
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5f00\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 31
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->M(Ljava/lang/Exception;)Ljava/lang/Exception;

    throw v0

    :catch_1
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "check\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->G(Ljava/lang/Throwable;)V

    .line 34
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "\u521d\u59cb\u5316\u5931\u8d25:\u6ca1\u6709\u6570\u636e"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->M(Ljava/lang/Exception;)Ljava/lang/Exception;

    throw v0

    :catch_2
    move-exception v2

    .line 35
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->b()V

    .line 36
    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->G(Ljava/lang/Throwable;)V

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\u521d\u59cb\u5316\u5931\u8d25:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 38
    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->l:Z

    if-eqz v3, :cond_8

    .line 39
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 40
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->A()V

    return-void

    .line 41
    :cond_8
    instance-of v0, v2, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    if-eqz v0, :cond_9

    .line 42
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->M(Ljava/lang/Exception;)Ljava/lang/Exception;

    throw v2

    .line 43
    :cond_9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->M(Ljava/lang/Exception;)Ljava/lang/Exception;

    throw v0

    .line 44
    :cond_a
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u7684\u72b6\u6001:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public C()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a()V

    return-void
.end method

.method public E(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/g;

    invoke-direct {v1, p0, p2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;[BLcn/mucang/android/jiakaoyi/signal/com/Cmd;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public F(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->m:Ljava/util/List;

    return-void
.end method

.method protected G(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->state:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->H(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorComBroken:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->H(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->H(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V

    :goto_1
    return-void
.end method

.method protected declared-synchronized H(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->y(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->GpsNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->MasterSerial:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->BloothClient:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    if-ne v0, v1, :cond_3

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->e(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorComBroken:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorAuthorise:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorSplit:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorUpdateFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne v0, v1, :cond_3

    .line 7
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->e(Z)V

    .line 8
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u7684\u72b6\u6001:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->desc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 9
    :cond_4
    :goto_1
    monitor-exit p0

    return-void
.end method

.method protected J()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/a;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->n:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-interface {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;->f(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public declared-synchronized K()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne v0, v1, :cond_0

    const-string v0, "\u4fee\u6539\u901a\u4fe1\u4e3a\u6b63\u5e38\u72b6\u6001"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->H(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 4
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized L()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4fee\u6539\u901a\u4fe1\u4e3a\u56fa\u4ef6\u5347\u7ea7\u72b6\u6001"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->H(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 4
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->None:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->H(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->b()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->isGps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/f;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->v(Lcn/mucang/android/jiakaoyi/signal/c/d$a;Z)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->a:Lcn/mucang/android/jiakaoyi/signal/com/v/a;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/a;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/a;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->init()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->b(Z)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->j:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;

    .line 5
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    return-void
.end method

.method protected d(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    const-string v1, "\u4fe1\u9053"

    if-nez v0, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u4e0d\u652f\u6301\u53d1\u9001\u6570\u636e, \u6307\u4ee4\u7c7b\u578b"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "McCommunicator"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->j(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u4e0d\u652f\u6301\u6307\u4ee4"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne v0, v1, :cond_4

    iget-byte v0, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->isSendOTAOrder(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->SendHeart:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    if-ne v0, p1, :cond_4

    .line 6
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    iget-byte v1, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-interface {v0, v1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/a;->r(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " OTA\u6d88\u606f\u53d1\u9001\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 8
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    throw v0

    .line 10
    :cond_4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne v0, v1, :cond_6

    .line 11
    :try_start_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    iget-byte p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/a;->r(B[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u6d88\u606f\u53d1\u9001\u5931\u8d25"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 13
    instance-of p2, p1, Ljava/io/IOException;

    if-nez p2, :cond_5

    goto :goto_1

    .line 14
    :cond_5
    throw p1

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\u6d88\u606f\u53d1\u9001\u5931\u8d25,\u5f53\u524d\u72b6\u6001:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    return-object v0
.end method

.method public declared-synchronized f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->e:Z

    return v0
.end method

.method public j(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->a(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;)Z

    move-result p1

    return p1
.end method

.method public synthetic n(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->m(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V

    return-void
.end method

.method public synthetic p(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->o(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic r(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->q(Z)V

    return-void
.end method

.method public synthetic t()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->s()V

    return-void
.end method

.method public synthetic v([BLcn/mucang/android/jiakaoyi/signal/com/Cmd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->u([BLcn/mucang/android/jiakaoyi/signal/com/Cmd;)V

    return-void
.end method

.method public synthetic x()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->w()V

    return-void
.end method

.method protected z(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->g:Z

    if-nez v0, :cond_0

    const-string p1, "\u901a\u4fe1\u914d\u7f6e\u662f\u8fde\u63a5\u9519\u8bef\u4e0d\u5f39\u7a97\uff0c10\u79d2\u540e\u91cd\u8bd5"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->k:I

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/b;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;)V

    const-wide/16 v0, 0x7530

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/e;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/e;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
