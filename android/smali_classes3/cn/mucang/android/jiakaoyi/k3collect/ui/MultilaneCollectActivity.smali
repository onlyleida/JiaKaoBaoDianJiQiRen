.class public final Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity;
.super Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0014J\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000bH\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/BaseCollectActivity;",
        "()V",
        "getStatName",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setGpsInfo",
        "satelliteNumber",
        "",
        "trimGpsLatLon",
        "d",
        "",
        "n",
        "Companion",
        "MapCollectK3_release"
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
.field public static final m:Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity;->m:Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;-><init>()V

    return-void
.end method

.method private final n(DI)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x66

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "MultilaneCollect"

    return-object v0
.end method

.method protected l(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->j()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_info_value:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const p1, 0x9897

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_longitude_value:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity;->n(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_latitude_value:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity;->n(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_baseX_value:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->j()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/i/b;->c()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity;->n(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_baseY_value:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->j()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/i/b;->c()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectActivity;->n(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->gps_status_value:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/R$layout;->activity_multilance_collect:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "examSiteId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "originLatitude"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "originLongitude"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "originAltitude"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v10

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/i/b;

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DDD)V

    .line 9
    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->d:Lcn/mucang/android/jiakaoyi/signal/i/b;

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;-><init>()V

    .line 11
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object p1

    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->containerMulti:I

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/u;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/u;->j()I

    return-void
.end method
