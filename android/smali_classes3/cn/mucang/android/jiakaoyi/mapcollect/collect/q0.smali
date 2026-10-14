.class public abstract Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"


# instance fields
.field protected final a:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field protected final b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field protected c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field protected d:Lcn/mucang/android/jiakaoyi/signal/i/b;

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:F

.field public h:F

.field private i:J

.field public j:D

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->e:Ljava/util/LinkedList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->k:Ljava/util/List;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0$a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->l:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->i:J

    return-wide p1
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->e:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public j()Lcn/mucang/android/jiakaoyi/signal/i/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->d:Lcn/mucang/android/jiakaoyi/signal/i/b;

    return-object v0
.end method

.method public k()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 14

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->f:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "\u5f53\u524dgps\u7cbe\u5ea6\u4e0d\u591f"

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->m(Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->i:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const-string v0, "\u5f53\u524dgps\u70b9\u662f2\u79d2\u4e4b\u524d\u7684\u5b9a\u4f4d\u70b9\uff0c\u8bf7\u68c0\u67e5gps\u7ec4\u4ef6\u662f\u5426\u8fde\u63a5\u5b8c\u597d"

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->m(Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    const-string v0, "\u5f53\u524dgps\u70b9\u8fd8\u6ca1\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u91c7\u96c6"

    .line 7
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->m(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/4 v0, 0x0

    .line 8
    :cond_3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->e:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_4

    .line 9
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->e:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->e:Ljava/util/LinkedList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v4

    cmpl-double v6, v4, v2

    if-lez v6, :cond_3

    const-string v0, "\u5f53\u524dgps\u70b9\u8fd8\u6ca1\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u91c7\u96c6"

    .line 10
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->m(Ljava/lang/String;)V

    return-object v1

    .line 11
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 12
    iget-wide v8, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    add-double/2addr v1, v8

    .line 13
    iget-wide v8, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    add-double/2addr v3, v8

    .line 14
    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    add-double/2addr v5, v7

    goto :goto_0

    .line 15
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v1, v7

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v3, v7

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v5, v7

    .line 18
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    mul-double v1, v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v7

    mul-double v3, v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    div-double v10, v3, v7

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-double v5, v5

    div-double v12, v5, v3

    move-object v7, v0

    move-wide v8, v1

    invoke-direct/range {v7 .. v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DDD)V

    return-object v0
.end method

.method protected abstract l(I)V
.end method

.method protected m(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lcom/noober/background/BackgroundLibrary;->inject2(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->l:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->l:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method
