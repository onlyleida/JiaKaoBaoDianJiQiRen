.class public Lcom/amap/api/maps/offlinemap/OfflineMapActivity;
.super Lg/a/a/a/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:I


# instance fields
.field private b:Lg/a/a/a/b;

.field private c:Lcom/amap/api/mapcore/util/q4;

.field private d:[Lcom/amap/api/mapcore/util/q4;

.field private e:I

.field private f:Lcom/amap/api/mapcore/util/r4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/a/a/a/a;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/amap/api/mapcore/util/q4;

    .line 2
    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->d:[Lcom/amap/api/mapcore/util/q4;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    return-void
.end method

.method private a(Lcom/amap/api/mapcore/util/q4;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lg/a/a/a/b;->h()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->c(Lcom/amap/api/mapcore/util/q4;)Lg/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    if-eqz v0, :cond_1

    .line 5
    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->c:Lcom/amap/api/mapcore/util/q4;

    .line 6
    invoke-virtual {v0, p0}, Lg/a/a/a/b;->e(Lcom/amap/api/maps/offlinemap/OfflineMapActivity;)V

    .line 7
    iget-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->c:Lcom/amap/api/mapcore/util/q4;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/q4;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lg/a/a/a/b;->c(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    invoke-virtual {p1}, Lg/a/a/a/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    .line 10
    :try_start_0
    sget v1, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    if-eqz v3, :cond_0

    return v0

    :cond_0
    if-le v1, v2, :cond_1

    sub-int/2addr v1, v2

    .line 11
    sput v1, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    .line 12
    iget v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x20

    rem-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    .line 13
    iget-object v3, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->d:[Lcom/amap/api/mapcore/util/q4;

    aget-object v1, v3, v1

    .line 14
    iput-object p1, v1, Lcom/amap/api/mapcore/util/q4;->b:Landroid/os/Bundle;

    .line 15
    invoke-direct {p0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a(Lcom/amap/api/mapcore/util/q4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private b(Lcom/amap/api/mapcore/util/q4;)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a(Lcom/amap/api/mapcore/util/q4;)V

    .line 3
    iget v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    .line 4
    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->d:[Lcom/amap/api/mapcore/util/q4;

    aput-object p1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private c(Lcom/amap/api/mapcore/util/q4;)Lg/a/a/a/b;
    .locals 1

    .line 1
    :try_start_0
    iget p1, p1, Lcom/amap/api/mapcore/util/q4;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->f:Lcom/amap/api/mapcore/util/r4;

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Lcom/amap/api/mapcore/util/r4;

    invoke-direct {p1}, Lcom/amap/api/mapcore/util/r4;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->f:Lcom/amap/api/mapcore/util/r4;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->f:Lcom/amap/api/mapcore/util/r4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public closeScr()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/a/a/a/b;->h()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public closeScr(Landroid/os/Bundle;)V
    .locals 0

    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lg/a/a/a/b;->h()V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lg/a/a/a/b;->d(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setFormat(I)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/t4;->f(Landroid/content/Context;)Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    const/4 v0, 0x0

    .line 7
    sput v0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    .line 8
    new-instance v0, Lcom/amap/api/mapcore/util/q4;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore/util/q4;-><init>(ILandroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b(Lcom/amap/api/mapcore/util/q4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/a/a/a/b;->h()V

    .line 4
    iput-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    .line 5
    :cond_0
    iput-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->c:Lcom/amap/api/mapcore/util/q4;

    .line 6
    iput-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->d:[Lcom/amap/api/mapcore/util/q4;

    .line 7
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->f:Lcom/amap/api/mapcore/util/r4;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r4;->h()V

    .line 9
    iput-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->f:Lcom/amap/api/mapcore/util/r4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/a/a/a/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a(Landroid/os/Bundle;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-nez p2, :cond_3

    .line 3
    sget v0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return v2

    :cond_3
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    .line 6
    sput v2, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/a/a/a/b;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lg/a/a/a/a;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/a/a/a/b;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/a/a/a/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/a/a/a/b;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public showScr()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lg/a/a/a/b;

    invoke-virtual {v0}, Lg/a/a/a/b;->g()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
