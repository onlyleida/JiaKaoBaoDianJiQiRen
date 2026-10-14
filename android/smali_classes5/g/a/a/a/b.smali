.class public abstract Lg/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lg/a/a/a/b;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 2

    .line 1
    iget-object v0, p0, Lg/a/a/a/b;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    float-to-int p1, p1

    return p1
.end method

.method public abstract b()V
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lg/a/a/a/b;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->showScr()V

    return-void
.end method

.method public abstract d(Landroid/view/View;)V
.end method

.method public e(Lcom/amap/api/maps/offlinemap/OfflineMapActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a/a/a/b;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract g()Landroid/widget/RelativeLayout;
.end method

.method public abstract h()V
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method
