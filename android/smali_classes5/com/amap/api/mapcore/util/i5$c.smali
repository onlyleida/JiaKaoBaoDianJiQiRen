.class Lcom/amap/api/mapcore/util/i5$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/i5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:I

.field protected b:Z

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/i5$c;->a:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/i5$c;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/i5$c;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/i5$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/i5$c;-><init>()V

    return-void
.end method

.method private d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/i5$c;->a:I

    if-gtz v0, :cond_0

    const/16 v0, 0x1c

    :cond_0
    return v0
.end method

.method private f()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/i5$c;->d()I

    move-result v0

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/i5$c;->g()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/i5$c;->b:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/i5$c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/i5$c;->a:I

    if-gtz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Lcom/amap/api/mapcore/util/i5$c;->a:I

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/i5$c;->b:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/i5$c;->c:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/i5$c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/i5$c;->c:Z

    return-void
.end method
