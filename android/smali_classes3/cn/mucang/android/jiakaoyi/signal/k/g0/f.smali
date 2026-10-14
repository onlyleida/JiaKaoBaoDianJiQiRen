.class public Lcn/mucang/android/jiakaoyi/signal/k/g0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/k/g0/e;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

.field private final b:Ljava/lang/Runnable;

.field private c:I

.field private d:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

.field private e:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/g0/c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->b:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->c:I

    return p0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->c:I

    return p1
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->c:I

    return v0
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)Lcn/mucang/android/jiakaoyi/signal/k/g0/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->d:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->e:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    return-object p0
.end method

.method public static synthetic i(Lcn/mucang/android/jiakaoyi/signal/k/g0/f;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->j()V

    return-void
.end method

.method private j()V
    .locals 3

    const-string v0, "\u7b49\u5f852\u79d2\u540e\u5c1d\u8bd5\u91cd\u8fde"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->T(Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/k/g0/g;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->d:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->e:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->isMainObd()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->MasterNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->M(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;)V

    const-string p1, "\u4e3b\u63a7\u5347\u7ea7\u5b8c\u6210"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;->b:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
