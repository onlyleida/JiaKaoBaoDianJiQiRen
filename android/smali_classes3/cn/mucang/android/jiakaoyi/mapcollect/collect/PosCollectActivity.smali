.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$e;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Spinner;

.field private g:Z

.field private h:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

.field private i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

.field private j:I

.field private k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

.field private l:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

.field private m:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field private n:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/EditText;

.field public u:Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;

.field public final v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

.field private w:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->w:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method private synthetic B(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic D(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->P()V

    return-void
.end method

.method private synthetic F(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->Q()V

    return-void
.end method

.method private synthetic H(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v0, v2

    if-lez v4, :cond_1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/l;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/l;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "GPS\u5b9a\u4f4d\u5f02\u5e38"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic J(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u8fde\u63a5\u7684\u57fa\u7ad9\u662f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;->getGpsBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->p:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u57fa\u7ad9\u540d\u79f0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;->getGpsBaseName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic L(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->distance:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->t:Landroid/widget/EditText;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    if-eqz v0, :cond_1

    .line 6
    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->distance:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->t:Landroid/widget/EditText;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->o(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    :cond_2
    return-void
.end method

.method public static N(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "isCar"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "carMapModel"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static O(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "isCar"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "examSiteModel"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6
    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-wide p0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->gpsBaseId:J

    long-to-int p1, p0

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k(JI)Z

    return-void
.end method

.method private P()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->c()Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;

    move-result-object v0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->j:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->e(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/g;->u(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "\u67e5\u770b\u793a\u4f8b"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->l:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->p()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "\u6570\u636e\u6ca1\u6709\u91c7\u96c6\u5b8c\u6210"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->l:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->p()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->L()V

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->l:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->p()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h;-><init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    return-void
.end method

.method private S()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->m:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->r(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->m:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v3, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    iget-wide v5, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    invoke-direct {v1, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->q:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u4f4d\u7f6e\u8ddd\u79bb\u539f\u70b9: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-float v0, v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->a(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u7c73"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->T()V

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->g:Z

    return p0
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->S()V

    return-void
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->j:I

    return p0
.end method

.method static synthetic l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->q(ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->f:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic n(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->t:Landroid/widget/EditText;

    return-object p0
.end method

.method private o(ILjava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->s:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->c()Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->b(ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->h:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->r(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->q(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->p(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    .line 10
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/p;

    if-nez v2, :cond_1

    instance-of v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;

    if-eqz v1, :cond_2

    .line 11
    :cond_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0$a;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->s:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->t:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->j:I

    if-eqz p2, :cond_3

    .line 15
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private q(ILjava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5f53\u524d\u6b63\u5728\u91c7\u96c6\uff0c\u8fd8\u6ca1\u4fdd\u5b58\uff0c\u5207\u6362\u5c06\u5bfc\u81f4\u5df2\u7ecf\u91c7\u96c6\u7684\u6570\u636e\u4e22\u5931\uff0c\u786e\u5b9a\u5207\u6362?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p;

    invoke-direct {v1, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;ILjava/lang/Runnable;)V

    const-string p1, "\u786e\u5b9a\u5207\u6362"

    .line 3
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "\u4e0d\u5207\u6362"

    .line 4
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->o(ILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private r(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z
    .locals 5

    .line 1
    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private s()V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic t(ILjava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->o(ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic v(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroidx/appcompat/app/c$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v0, "\u8fd8\u6709\u4fe1\u606f\u6ca1\u4fdd\u5b58\uff0c\u9000\u51fa\u5c06\u4f1a\u4e22\u5931\uff0c\u786e\u5b9a\u9000\u51fa?"

    .line 3
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    const-string v1, "\u786e\u5b9a"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u53d6\u6d88"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private synthetic x()V
    .locals 2

    const-string v0, "\u8bbe\u7f6e\u539f\u70b9\u6210\u529f"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic z(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->m:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v7, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    invoke-virtual/range {v0 .. v8}, Lcn/mucang/jiakaoyi/uilib/i/g;->v(JDDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->m:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    .line 3
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/o;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/o;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u539f\u70b9\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic A(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->z(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public synthetic C(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->B(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic E(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->D(Landroid/view/View;)V

    return-void
.end method

.method public synthetic G(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->F(Landroid/view/View;)V

    return-void
.end method

.method public synthetic I(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->H(Landroid/view/View;)V

    return-void
.end method

.method public synthetic K(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->J(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;)V

    return-void
.end method

.method public synthetic M(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->L(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    return-void
.end method

.method public R(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->c()Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)I

    move-result v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    .line 3
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->q(ILjava/lang/Runnable;)V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "CarCollectActivity"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->hpmap__collect_activity:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->s()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isCar"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->g:Z

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "carMapModel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->n:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "examSiteModel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->m:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 7
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->gps_info:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->o:Landroid/widget/TextView;

    .line 8
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->gps_base_name:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->p:Landroid/widget/TextView;

    .line 9
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->gps_base_distance:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->q:Landroid/widget/TextView;

    .line 10
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->w:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 11
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->projectList:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->f:Landroid/widget/Spinner;

    .line 12
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->mapView:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 13
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->pointList:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->collectedList:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->collectDone:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->d:Landroid/view/View;

    .line 16
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->collectOrigin:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->e:Landroid/widget/Button;

    .line 17
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->mask_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->r:Landroid/view/View;

    .line 18
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->tunnel_distance_ll:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->s:Landroid/widget/LinearLayout;

    .line 19
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->tunnel_distance_et:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->t:Landroid/widget/EditText;

    .line 20
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->lookEg:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 21
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 22
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->top_right_action:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 24
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->g:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/m;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/m;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->g:Z

    const/4 v2, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->f:Landroid/widget/Spinner;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$e;

    const-string v4, "\u8f66\u8eab\u91c7\u96c6"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$e;-><init>([Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 31
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->d:Landroid/view/View;

    iget-object v11, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->n:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->l:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    .line 32
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 33
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->m:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->r(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u8bf7\u5148\u8bbe\u7f6e\u539f\u70b9"

    .line 34
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->e:Landroid/widget/Button;

    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 38
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iput v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->j:I

    .line 43
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->m:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-direct {p1, v0, v3, p0, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroidx/recyclerview/widget/RecyclerView;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->h:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    .line 44
    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->c()Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->b(ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    .line 45
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->h:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->r(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)V

    .line 46
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->q(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 47
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->p(Landroid/view/View;)V

    .line 48
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 49
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    .line 50
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->f:Landroid/widget/Spinner;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$e;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->c()Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b1/d;->f()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$e;-><init>([Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 51
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->f:Landroid/widget/Spinner;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 52
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 53
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;

    .line 54
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 55
    const-class p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsBaseModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a()V

    .line 5
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->w:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n()V

    return-void
.end method

.method public p()Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->k:Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic u(ILjava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->t(ILjava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic w(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v(Landroid/view/View;)V

    return-void
.end method

.method public synthetic y()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->x()V

    return-void
.end method
