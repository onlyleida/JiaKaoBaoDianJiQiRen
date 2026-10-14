.class public Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field private d:Landroid/widget/TextView;

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;

.field private final f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/s;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/s;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->a:Landroid/view/View$OnClickListener;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->j(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z

    move-result p0

    return p0
.end method

.method private static j(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->r(Landroid/view/View;)V

    return-void
.end method

.method private synthetic l(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->longitude:D

    .line 2
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->latitude:D

    .line 3
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->altitude:D

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic n(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic p(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/v/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/v/b;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    invoke-virtual/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/v/b;->m(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;DDD)V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/t;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/t;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-direct {v0, p0, v1}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private r(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    const-string v1, "\u8bf7\u5148\u91c7\u96c6\u539f\u70b9"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->j(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->e(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->K(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/d;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->qrCode:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/w/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->j(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->e(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->I(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->j(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->e(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->J(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->j(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->e(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->O(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    goto :goto_0

    .line 15
    :cond_9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->j(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    const-string v0, "\u5df2\u91c7\u96c6\u539f\u70b9"

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->e(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_a
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 18
    :cond_b
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    :goto_0
    return-void
.end method

.method private s(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/r;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/r;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    const-string p1, "\u6b63\u5728\u8bbe\u7f6e\u539f\u70b9..."

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8003\u573a\u6570\u636e\u7ba1\u7406\u9875\u9762"

    return-object v0
.end method

.method public synthetic m(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->l(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public synthetic o(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->n(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "siteData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->activity_site_data:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->back:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/u;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->gps_info:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->d:Landroid/widget/TextView;

    .line 6
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->dataView:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->a:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View$OnClickListener;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->e:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->j(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 11
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public synthetic q(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method
