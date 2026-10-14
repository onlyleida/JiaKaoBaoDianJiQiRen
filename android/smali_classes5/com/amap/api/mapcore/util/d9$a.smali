.class Lcom/amap/api/mapcore/util/d9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/d9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/amap/api/mapcore/util/d9;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/d9;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d9$a;->h:Lcom/amap/api/mapcore/util/d9;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/d9$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/d9$a;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amap/api/mapcore/util/d9$a;->c:Z

    iput-object p5, p0, Lcom/amap/api/mapcore/util/d9$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/amap/api/mapcore/util/d9$a;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/amap/api/mapcore/util/d9$a;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/amap/api/mapcore/util/d9$a;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d9$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "amap_web_logo"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d9$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d9$a;->c:Z

    .line 3
    sget-object v2, Lcom/autonavi/amap/mapcore/AMapEngineUtils;->LOGO_CUSTOM_ICON_DAY_NAME:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/amap/api/mapcore/util/d9$a;->b:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lcom/amap/api/mapcore/util/d9$a;->a:Ljava/lang/String;

    .line 6
    iget-object v5, p0, Lcom/amap/api/mapcore/util/d9$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    new-instance v6, Lcom/amap/api/mapcore/util/u9$d;

    invoke-direct {v6, v3, v4, v5, v2}, Lcom/amap/api/mapcore/util/u9$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "md5_day"

    .line 8
    invoke-virtual {v6, v1, v3}, Lcom/amap/api/mapcore/util/u9$d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v3, Lcom/amap/api/mapcore/util/u9;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/d9$a;->h:Lcom/amap/api/mapcore/util/d9;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/d9;->a(Lcom/amap/api/mapcore/util/d9;)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->u0()Lcom/amap/api/mapcore/util/m5;

    move-result-object v5

    invoke-direct {v3, v4, v6, v5}, Lcom/amap/api/mapcore/util/u9;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/u9$a;Lcom/amap/api/mapcore/util/m5;)V

    .line 10
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/u9;->a()V

    .line 11
    :cond_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/d9$a;->h:Lcom/amap/api/mapcore/util/d9;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 12
    iget-object v3, p0, Lcom/amap/api/mapcore/util/d9$a;->h:Lcom/amap/api/mapcore/util/d9;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v0, v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeLogoIconStyle(Ljava/lang/String;ZI)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d9$a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d9$a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d9$a;->c:Z

    .line 15
    sget-object v2, Lcom/autonavi/amap/mapcore/AMapEngineUtils;->LOGO_CUSTOM_ICON_NIGHT_NAME:Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/amap/api/mapcore/util/d9$a;->f:Ljava/lang/String;

    .line 17
    iget-object v4, p0, Lcom/amap/api/mapcore/util/d9$a;->e:Ljava/lang/String;

    .line 18
    iget-object v5, p0, Lcom/amap/api/mapcore/util/d9$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 19
    new-instance v6, Lcom/amap/api/mapcore/util/u9$d;

    invoke-direct {v6, v3, v4, v5, v2}, Lcom/amap/api/mapcore/util/u9$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "md5_night"

    .line 20
    invoke-virtual {v6, v1, v3}, Lcom/amap/api/mapcore/util/u9$d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v1, Lcom/amap/api/mapcore/util/u9;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/d9$a;->h:Lcom/amap/api/mapcore/util/d9;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/d9;->a(Lcom/amap/api/mapcore/util/d9;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->u0()Lcom/amap/api/mapcore/util/m5;

    move-result-object v4

    invoke-direct {v1, v3, v6, v4}, Lcom/amap/api/mapcore/util/u9;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/u9$a;Lcom/amap/api/mapcore/util/m5;)V

    .line 22
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u9;->a()V

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d9$a;->h:Lcom/amap/api/mapcore/util/d9;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 24
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d9$a;->h:Lcom/amap/api/mapcore/util/d9;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeLogoIconStyle(Ljava/lang/String;ZI)V

    :cond_3
    return-void
.end method
