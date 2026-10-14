.class public Lcn/mucang/android/jiakaoyi/signal/k/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/k/e0$b;
    }
.end annotation


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

.field private g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

.field private volatile h:Z

.field private i:Lcn/mucang/android/jiakaoyi/signal/k/g0/e;

.field private final j:Ljava/lang/Object;

.field private final k:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->c:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->d:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->e:Ljava/util/Map;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->i:Lcn/mucang/android/jiakaoyi/signal/k/g0/e;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j:Ljava/lang/Object;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->k:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/f;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->i:Lcn/mucang/android/jiakaoyi/signal/k/g0/e;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/k/e0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;-><init>()V

    return-void
.end method

.method private synthetic B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/p;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->L()V

    :cond_0
    return-void
.end method

.method private synthetic D(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->f:Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/d;->c(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    :cond_0
    return-void
.end method

.method private synthetic F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->R()V

    :cond_0
    return-void
.end method

.method private synthetic H(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->T(Ljava/util/List;)V

    return-void
.end method

.method private synthetic J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->f:Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1, v1, v1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/d;->d(III)V

    :cond_0
    return-void
.end method

.method private R(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/g;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private T(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->h:Z

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->X()V

    const-string p1, "\u5f00\u59cb\u66f4\u65b0\u6d41\u7a0b"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->i(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const/4 v1, 0x0

    const-string v2, "\u5f00\u59cb\u66f4\u65b0\u56fa\u4ef6\u6d41\u7a0b..."

    invoke-direct {p1, v1, v0, v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->R(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    const-wide/16 v0, 0x7d0

    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->U()V

    return-void
.end method

.method private U()V
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->c:I

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->l()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->X()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u66f4\u65b0\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4e2a\u56fa\u4ef6"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->i(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->d:Ljava/util/List;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    .line 8
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->Z(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V

    return-void
.end method

.method private V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/k/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/k/i;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private W()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->i()Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->K()Z

    :cond_0
    return-void
.end method

.method private X()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->i()Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->L()Z

    :cond_0
    return-void
.end method

.method private Z(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->isMainObd()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u5f00\u59cb\u5347\u7ea7"

    goto :goto_0

    :cond_0
    const-string v1, "\u5f00\u59cb\u4e0b\u53d1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->i(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const-string v1, "DebugOta"

    const-string v2, "\u53d1\u9001START\u6d88\u606f:${desc}"

    .line 4
    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-direct {v1, p1, v2, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->R(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->n(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/p;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/f0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->k:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->i:Lcn/mucang/android/jiakaoyi/signal/k/g0/e;

    invoke-direct {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/k/f0;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/k/g0/g;Lcn/mucang/android/jiakaoyi/signal/k/g0/e;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/h0/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->k:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->i:Lcn/mucang/android/jiakaoyi/signal/k/g0/e;

    invoke-direct {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/k/h0/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/k/g0/g;Lcn/mucang/android/jiakaoyi/signal/k/g0/e;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    goto :goto_1

    .line 12
    :cond_2
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    .line 13
    :goto_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->V()V

    goto :goto_2

    .line 14
    :cond_3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->U()V

    :goto_2
    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/k/e0;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->R(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Lcn/mucang/android/jiakaoyi/signal/k/g0/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->f:Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/signal/k/e0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->c:I

    return p0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/signal/k/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->U()V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static j()Lcn/mucang/android/jiakaoyi/signal/k/e0;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0$b;->a()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->e:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->c(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    return-object v0

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    return-object v0

    .line 10
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    return-object v0

    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private l()V
    .locals 4

    const-string v0, "\u6240\u6709\u56fa\u4ef6\u5df2\u63d0\u4ea4\u66f4\u65b0"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const-string v0, "\u66f4\u65b0\u5b8c\u6bd5"

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->i(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/k/a;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/k/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;)V

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->k()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66f4\u65b0\u7ed3\u679c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DebugOta"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    if-ne v0, v1, :cond_0

    const-string v1, "\u56fa\u4ef6\u5347\u7ea7\u6d41\u7a0b\u5931\u8d25"

    goto :goto_0

    :cond_0
    const-string v1, "\u56fa\u4ef6\u66f4\u65b0\u6d41\u7a0b\u5b8c\u6210"

    .line 7
    :goto_0
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->R(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->h:Z

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->W()V

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->a:Landroid/os/HandlerThread;

    .line 5
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    .line 6
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Upgrade"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->a:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    return-void
.end method

.method private n(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_1
    :goto_2
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    :cond_2
    :goto_3
    return-object v0
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/signal/k/e0;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->U()V

    return-void
.end method

.method private synthetic r(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->G(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V

    return-void
.end method

.method private synthetic t(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->I(ZLandroid/os/Handler;)V

    return-void
.end method

.method private synthetic v(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->J(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;)V

    :cond_0
    return-void
.end method

.method private synthetic x(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/signal/k/h0/c;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/k/h0/c;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/h0/c;->X(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;)V

    :cond_0
    return-void
.end method

.method private synthetic z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->K(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic A()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->z()V

    return-void
.end method

.method public synthetic C()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->B()V

    return-void
.end method

.method public synthetic E(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->D(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    return-void
.end method

.method public synthetic G()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->F()V

    return-void
.end method

.method public synthetic I(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->H(Ljava/util/List;)V

    return-void
.end method

.method public synthetic K()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->J()V

    return-void
.end method

.method public L(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/k/k;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/k;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public M(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/k/o;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/o;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public N(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/k/h;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/h;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public O(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/k/j;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/j;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public P()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->p()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/k/p;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/k/p;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public Q(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/k/n;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/k/n;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/k/l;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/k/l;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public S()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->c:I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    .line 10
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->f:Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->h:Z

    .line 12
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->W()V

    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public Y(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/k/g0/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/k/g0/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->i()Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "\u4e3b\u63a7\u8fde\u63a5\u4e0d\u652f\u6301OTA\u5347\u7ea7"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;

    const/4 v1, 0x0

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-direct {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/d;->c(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->h:Z

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->S()V

    .line 6
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->f:Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->m()V

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b:Landroid/os/Handler;

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/f;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/k/m;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/k/m;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->isMainObd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public p()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic s(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->r(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V

    return-void
.end method

.method public synthetic u(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->t(Z)V

    return-void
.end method

.method public synthetic w(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->v(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;)V

    return-void
.end method

.method public synthetic y(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->x(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;)V

    return-void
.end method
