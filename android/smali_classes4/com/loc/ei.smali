.class public final Lcom/loc/ei;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ei$a;
    }
.end annotation


# static fields
.field static C:I = -0x1

.field public static F:[Ljava/lang/String; = null

.field public static G:Ljava/lang/String; = "android.permission.ACCESS_BACKGROUND_LOCATION"

.field private static M:Z = false

.field private static volatile S:Z = false


# instance fields
.field A:Lcom/loc/ep;

.field B:Z

.field D:Lcom/loc/em;

.field E:Ljava/lang/String;

.field H:Z

.field I:Landroid/content/IntentFilter;

.field J:Landroid/location/LocationManager;

.field private K:I

.field private L:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Landroid/os/Handler;

.field private Q:Lcom/loc/eu;

.field private R:Ljava/lang/String;

.field private T:Lcom/loc/ej;

.field a:Landroid/content/Context;

.field b:Landroid/net/ConnectivityManager;

.field c:Lcom/loc/ew;

.field d:Lcom/loc/es;

.field e:Lcom/loc/ey;

.field f:Lcom/loc/ff;

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/loc/dx;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/loc/ei$a;

.field i:Lcom/amap/api/location/AMapLocationClientOption;

.field j:Lcom/loc/en;

.field k:J

.field l:Lcom/loc/fg;

.field m:Z

.field n:Lcom/loc/fd;

.field o:Ljava/lang/StringBuilder;

.field p:Z

.field q:Z

.field r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field s:Z

.field t:Z

.field u:Landroid/net/wifi/WifiInfo;

.field v:Z

.field w:Ljava/lang/StringBuilder;

.field x:Z

.field public y:Z

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/ei;->F:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/loc/ei;->b:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    iput-object v0, p0, Lcom/loc/ei;->d:Lcom/loc/es;

    iput-object v0, p0, Lcom/loc/ei;->e:Lcom/loc/ey;

    iput-object v0, p0, Lcom/loc/ei;->f:Lcom/loc/ff;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/loc/ei;->h:Lcom/loc/ei$a;

    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v1, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v0, p0, Lcom/loc/ei;->j:Lcom/loc/en;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/loc/ei;->k:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/loc/ei;->K:I

    iput-object v0, p0, Lcom/loc/ei;->l:Lcom/loc/fg;

    iput-boolean v1, p0, Lcom/loc/ei;->m:Z

    iput-object v0, p0, Lcom/loc/ei;->L:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/ei;->n:Lcom/loc/fd;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/loc/ei;->p:Z

    iput-boolean v2, p0, Lcom/loc/ei;->q:Z

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v3, p0, Lcom/loc/ei;->r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-boolean v2, p0, Lcom/loc/ei;->s:Z

    iput-boolean v1, p0, Lcom/loc/ei;->t:Z

    iput-object v0, p0, Lcom/loc/ei;->u:Landroid/net/wifi/WifiInfo;

    iput-boolean v2, p0, Lcom/loc/ei;->v:Z

    iput-object v0, p0, Lcom/loc/ei;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lcom/loc/ei;->x:Z

    iput-boolean v1, p0, Lcom/loc/ei;->y:Z

    const/16 v3, 0xc

    iput v3, p0, Lcom/loc/ei;->z:I

    iput-boolean v2, p0, Lcom/loc/ei;->O:Z

    iput-object v0, p0, Lcom/loc/ei;->A:Lcom/loc/ep;

    iput-boolean v1, p0, Lcom/loc/ei;->B:Z

    iput-object v0, p0, Lcom/loc/ei;->D:Lcom/loc/em;

    iput-object v0, p0, Lcom/loc/ei;->E:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/loc/ei;->H:Z

    iput-object v0, p0, Lcom/loc/ei;->I:Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/loc/ei;->J:Landroid/location/LocationManager;

    iput-boolean p1, p0, Lcom/loc/ei;->H:Z

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/loc/en;
    .locals 2

    new-instance v0, Lcom/loc/en;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/loc/en;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const/16 p1, 0xf

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    const/16 p1, 0x867

    invoke-static {p0, p1}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method private a(Lcom/loc/en;Lcom/loc/bl;Lcom/loc/eh;)Lcom/loc/en;
    .locals 6

    const/4 v0, 0x4

    const-string v1, "#0403"

    if-eqz p2, :cond_4

    :try_start_0
    iget-object v2, p2, Lcom/loc/bl;->a:[B

    if-eqz v2, :cond_4

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/loc/ff;

    invoke-direct {v2}, Lcom/loc/ff;-><init>()V

    new-instance v3, Ljava/lang/String;

    iget-object v4, p2, Lcom/loc/bl;->a:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "\"status\":\"0\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/loc/ff;->a(Ljava/lang/String;Landroid/content/Context;Lcom/loc/bl;Lcom/loc/eh;)Lcom/loc/en;

    move-result-object p1

    iget-object p2, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/loc/en;->h(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string p2, "</body></html>"

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    iget-object p2, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/loc/ei;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, v3}, Lcom/loc/ew;->a(Landroid/net/ConnectivityManager;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "#0501"

    invoke-virtual {p3, p2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v3, "\u60a8\u8fde\u63a5\u7684\u662f\u4e00\u4e2a\u9700\u8981\u767b\u5f55\u7684\u7f51\u7edc\uff0c\u8bf7\u786e\u8ba4\u5df2\u7ecf\u767b\u5165\u7f51\u7edc#0501"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x803

    invoke-static {v2, p2}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string p2, "#0502"

    invoke-virtual {p3, p2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v3, "\u8bf7\u6c42\u53ef\u80fd\u88ab\u52ab\u6301\u4e86#0502"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x804

    invoke-static {v2, p2}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    :goto_0
    iget-object p2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    return-object p1

    :cond_3
    return-object v2

    :cond_4
    :goto_1
    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    iget-object v2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v3, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/loc/en;->h(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/loc/bl;->d:Ljava/lang/String;

    const/16 v2, 0x7f9

    invoke-static {p2, v2}, Lcom/loc/fn;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-object p1

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v0, "Aps"

    const-string v2, "checkResponseEntity"

    invoke-static {p2, v0, v2}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "check response exception ex is"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/loc/ei;->d:Lcom/loc/es;

    invoke-virtual {v0}, Lcom/loc/es;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v0}, Lcom/loc/ew;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private a(J)Z
    .locals 5

    iget-boolean v0, p0, Lcom/loc/ei;->O:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/loc/ei;->O:Z

    return v2

    :cond_0
    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v3

    sub-long/2addr v3, p1

    const-wide/16 p1, 0x320

    cmp-long v0, v3, p1

    if-gez v0, :cond_2

    const-wide/16 p1, 0x0

    iget-object v0, p0, Lcom/loc/ei;->j:Lcom/loc/en;

    invoke-static {v0}, Lcom/loc/fp;->a(Lcom/loc/en;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/loc/fp;->a()J

    move-result-wide p1

    iget-object v0, p0, Lcom/loc/ei;->j:Lcom/loc/en;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr p1, v3

    :cond_1
    const-wide/16 v3, 0x2710

    cmp-long v0, p1, v3

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private b(ZLcom/loc/eh;)Lcom/loc/en;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "FAIL"

    :try_start_0
    iget-object v1, p0, Lcom/loc/ei;->R:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/ei;->R:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v2, "#id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loc/ei;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance v1, Lcom/loc/en;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/loc/en;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/loc/ei;->l()[B

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/ei;->k:J

    invoke-virtual {p2, v4, v5}, Lcom/loc/eh;->a(J)V

    const/4 v10, 0x0

    :try_start_2
    iget-object v4, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/loc/fi;->c(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/loc/ei;->n:Lcom/loc/fd;

    iget-object v5, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {}, Lcom/loc/fi;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/loc/fi;->b()Ljava/lang/String;

    move-result-object v8

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/loc/fd;->a(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Z)Lcom/loc/fe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loc/fe;->b()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/loc/fe;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/loc/l;->a(Landroid/content/Context;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    const-string v5, "dualstack"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    sget v5, Lcom/loc/fb;->a:I

    invoke-static {}, Lcom/loc/l;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/loc/l;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    sget v5, Lcom/loc/fb;->b:I

    :cond_2
    invoke-static {}, Lcom/loc/l;->b()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/fb;->a(Landroid/content/Context;)Lcom/loc/fb;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Lcom/loc/fb;->a(Lcom/loc/fe;I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    sget v4, Lcom/loc/fb;->b:I

    if-ne v5, v4, :cond_4

    const-string v4, "v6"

    goto :goto_1

    :cond_4
    const-string v4, "v4"

    :goto_1
    invoke-virtual {p2, v4}, Lcom/loc/eh;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/loc/ei;->n:Lcom/loc/fd;

    invoke-virtual {v4, p1}, Lcom/loc/fd;->a(Lcom/loc/fe;)Lcom/loc/bl;

    move-result-object p1

    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, p1, Lcom/loc/bl;->f:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/loc/fb;->a(Landroid/content/Context;)Lcom/loc/fb;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Lcom/loc/fb;->a(ZI)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/loc/fb;->a(Landroid/content/Context;)Lcom/loc/fb;

    move-result-object v4

    invoke-virtual {v4, v10, v5}, Lcom/loc/fb;->a(ZI)V

    iget-object v4, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/loc/fb;->a(Landroid/content/Context;)Lcom/loc/fb;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/loc/fb;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_2
    const-string v4, "SUCCESS"

    if-eqz p1, :cond_8

    :try_start_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-boolean v5, p1, Lcom/loc/bl;->f:Z

    if-nez v5, :cond_7

    invoke-virtual {p2, v3}, Lcom/loc/eh;->b(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lcom/loc/eh;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p2, v3}, Lcom/loc/eh;->b(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/loc/eh;->c(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p2, v4}, Lcom/loc/eh;->d(Ljava/lang/String;)V

    :goto_3
    iget-object v3, p0, Lcom/loc/ei;->T:Lcom/loc/ej;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/loc/ej;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_9
    invoke-virtual {p2, v7, v8}, Lcom/loc/eh;->b(J)V

    if-eqz p1, :cond_b

    iget-object v0, p1, Lcom/loc/bl;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#csid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/loc/bl;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v0, p1, Lcom/loc/bl;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/loc/en;->h(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move-object v0, v2

    :goto_4
    invoke-direct {p0, v1, p1, p2}, Lcom/loc/ei;->a(Lcom/loc/en;Lcom/loc/bl;Lcom/loc/eh;)Lcom/loc/en;

    move-result-object v3

    if-eqz v3, :cond_c

    return-object v3

    :cond_c
    iget-object p1, p1, Lcom/loc/bl;->a:[B

    invoke-static {p1}, Lcom/loc/ex;->b([B)[B

    move-result-object p1

    if-nez p1, :cond_d

    const/4 p1, 0x5

    invoke-virtual {v1, p1}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string p1, "#0503"

    invoke-virtual {p2, p1}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string p2, "\u89e3\u5bc6\u6570\u636e\u5931\u8d25#0503"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const/16 p1, 0x805

    invoke-static {v0, p1}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    return-object v1

    :cond_d
    iget-object v3, p0, Lcom/loc/ei;->f:Lcom/loc/ff;

    invoke-virtual {v3, v1, p1, p2}, Lcom/loc/ff;->a(Lcom/loc/en;[BLcom/loc/eh;)Lcom/loc/en;

    move-result-object p1

    invoke-static {p1}, Lcom/loc/fp;->a(Lcom/loc/en;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1}, Lcom/loc/en;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/ei;->L:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0x80e

    goto :goto_5

    :cond_e
    const/16 v1, 0x80d

    :goto_5
    invoke-static {v0, v1}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v0, "#0601"

    invoke-virtual {p2, v0}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "location faile retype:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/loc/en;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rdesc:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/loc/ei;->L:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_6

    :cond_f
    iget-object v2, p0, Lcom/loc/ei;->L:Ljava/lang/String;

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/loc/en;->h(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    return-object p1

    :cond_10
    invoke-static {p1}, Lcom/loc/ei;->c(Lcom/loc/en;)V

    iget-boolean p2, p0, Lcom/loc/ei;->q:Z

    invoke-virtual {p1, p2}, Lcom/amap/api/location/AMapLocation;->setOffset(Z)V

    iget-boolean p2, p0, Lcom/loc/ei;->p:Z

    invoke-virtual {p1, p2}, Lcom/loc/en;->a(Z)V

    iget-object p2, p0, Lcom/loc/ei;->r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/loc/en;->f(Ljava/lang/String;)V

    const-string p2, "new"

    invoke-virtual {p1, p2}, Lcom/loc/en;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/loc/en;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/loc/ei;->E:Ljava/lang/String;

    return-object p1

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/loc/fp;->b()J

    invoke-virtual {p2, v0}, Lcom/loc/eh;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/fb;->a(Landroid/content/Context;)Lcom/loc/fb;

    move-result-object v0

    sget v1, Lcom/loc/fb;->a:I

    invoke-virtual {v0, v10, v1}, Lcom/loc/fb;->a(ZI)V

    const-string v0, "Aps"

    const-string v1, "getApsLoc req"

    invoke-static {p1, v0, v1}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/mobile/binary"

    invoke-static {v0, p1}, Lcom/loc/fn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/fp;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "#0401"

    invoke-virtual {p2, p1}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string p2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u672a\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc#0401"

    :goto_7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_11
    instance-of v0, p1, Lcom/loc/j;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    const-string v2, "#0403,"

    if-eqz v0, :cond_15

    move-object v0, p1

    check-cast v0, Lcom/loc/j;

    invoke-virtual {v0}, Lcom/loc/j;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string p1, "#0404"

    invoke-virtual {p2, p1}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string p2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u72b6\u6001\u7801\u9519\u8bef#0404"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/loc/j;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_12
    invoke-virtual {v0}, Lcom/loc/j;->f()I

    move-result v0

    const/16 v3, 0x17

    if-eq v0, v3, :cond_14

    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/loc/ei;->k:J

    sub-long/2addr v3, v5

    iget-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    cmp-long v0, v3, v5

    if-gez v0, :cond_13

    goto :goto_8

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    :goto_8
    const-string p1, "#0402"

    invoke-virtual {p2, p1}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string p2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8fde\u63a5\u8d85\u65f6#0402"

    goto :goto_7

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    const/4 p1, 0x4

    iget-object p2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/loc/ei;->a(ILjava/lang/String;)Lcom/loc/en;

    move-result-object p1

    iget-object p2, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/loc/en;->h(Ljava/lang/String;)V

    return-object p1

    :catchall_2
    move-exception p1

    const-string v0, "#0301"

    invoke-virtual {p2, v0}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get parames error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7ef

    invoke-static {v3, p1}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    const/4 p1, 0x3

    iget-object p2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/loc/ei;->a(ILjava/lang/String;)Lcom/loc/en;

    move-result-object p1

    iget-object p2, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/loc/en;->h(Ljava/lang/String;)V

    return-object p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "EYW5kcm9pZC5wZXJtaXNzaW9uLldSSVRFX1NFQ1VSRV9TRVRUSU5HUw=="

    invoke-static {v0}, Lcom/loc/w;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/loc/ei;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private c(Lcom/loc/eh;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/loc/ei;->d:Lcom/loc/es;

    invoke-virtual {v2}, Lcom/loc/es;->g()I

    move-result v2

    iget-object v3, v0, Lcom/loc/ei;->d:Lcom/loc/es;

    invoke-virtual {v3}, Lcom/loc/es;->d()Lcom/loc/er;

    move-result-object v3

    iget-object v4, v0, Lcom/loc/ei;->d:Lcom/loc/es;

    invoke-virtual {v4}, Lcom/loc/es;->e()Lcom/loc/er;

    move-result-object v4

    iget-object v5, v0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    const-string v8, ""

    const/4 v9, 0x0

    if-nez v3, :cond_f

    if-nez v4, :cond_f

    if-eqz v5, :cond_f

    iget-object v2, v0, Lcom/loc/ei;->b:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/loc/ei;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-static {v2, v3}, Lcom/loc/fp;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, v0, Lcom/loc/ei;->b:Landroid/net/ConnectivityManager;

    :cond_2
    iget-object v2, v0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/fp;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v2}, Lcom/loc/ew;->k()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x12

    iput v2, v0, Lcom/loc/ei;->z:I

    iget-object v2, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v3, "\u98de\u884c\u6a21\u5f0f\u4e0b\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5173\u95ed\u98de\u884c\u6a21\u5f0f\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173#1801"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x854

    invoke-static {v9, v2}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    const-string v2, "#1801"

    invoke-virtual {v1, v2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    return-object v8

    :cond_3
    invoke-static {}, Lcom/loc/fp;->c()I

    move-result v2

    const-string v3, "#1206"

    const-string v4, "\u5b9a\u4f4d\u670d\u52a1\u6ca1\u6709\u5f00\u542f\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00\u5b9a\u4f4d\u670d\u52a1\u5f00\u5173#1206"

    const/16 v5, 0x1c

    const/16 v6, 0x849

    const/16 v10, 0xc

    if-lt v2, v5, :cond_5

    iget-object v2, v0, Lcom/loc/ei;->J:Landroid/location/LocationManager;

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v11, "location"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, v0, Lcom/loc/ei;->J:Landroid/location/LocationManager;

    :cond_4
    iget-object v2, v0, Lcom/loc/ei;->J:Landroid/location/LocationManager;

    new-array v11, v7, [Ljava/lang/Object;

    const-string v12, "isLocationEnabled"

    invoke-static {v2, v12, v11}, Lcom/loc/fl;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    iput v10, v0, Lcom/loc/ei;->z:I

    iget-object v2, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    invoke-static {v9, v6}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    return-object v8

    :cond_5
    iget-object v2, v0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/fp;->f(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    iput v10, v0, Lcom/loc/ei;->z:I

    iget-object v2, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v3, "\u5b9a\u4f4d\u6743\u9650\u88ab\u7981\u7528,\u8bf7\u6388\u4e88\u5e94\u7528\u5b9a\u4f4d\u6743\u9650#1201"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#1201"

    invoke-virtual {v1, v2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    invoke-static {v9, v6}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    return-object v8

    :cond_6
    invoke-static {}, Lcom/loc/fp;->c()I

    move-result v2

    const/16 v11, 0x18

    if-lt v2, v11, :cond_7

    invoke-static {}, Lcom/loc/fp;->c()I

    move-result v2

    if-ge v2, v5, :cond_7

    iget-object v2, v0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "location_mode"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7

    iput v10, v0, Lcom/loc/ei;->z:I

    invoke-virtual {v1, v3}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v6}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    return-object v8

    :cond_7
    iget-object v2, v0, Lcom/loc/ei;->d:Lcom/loc/es;

    invoke-virtual {v2}, Lcom/loc/es;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v3}, Lcom/loc/ew;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/loc/ei;->c:Lcom/loc/ew;

    iget-object v5, v0, Lcom/loc/ei;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v5}, Lcom/loc/ew;->a(Landroid/net/ConnectivityManager;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    iput v10, v0, Lcom/loc/ei;->z:I

    const-string v2, "#1202"

    invoke-virtual {v1, v2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6\u57fa\u7ad9\u4e0e\u83b7\u53d6WIFI\u7684\u6743\u9650\u90fd\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1202"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v6}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    return-object v8

    :cond_8
    if-eqz v2, :cond_a

    iput v10, v0, Lcom/loc/ei;->z:I

    iget-object v2, v0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v2}, Lcom/loc/ew;->k()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "#1204"

    invoke-virtual {v1, v2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v2, "WIFI\u5f00\u5173\u5173\u95ed\uff0c\u5e76\u4e14\u83b7\u53d6\u57fa\u7ad9\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173#1204"

    goto :goto_2

    :cond_9
    const-string v2, "#1205"

    invoke-virtual {v1, v2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6\u7684WIFI\u5217\u8868\u4e3a\u7a7a\uff0c\u5e76\u4e14\u83b7\u53d6\u57fa\u7ad9\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1205"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v6}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    return-object v8

    :cond_a
    iget-object v2, v0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v2}, Lcom/loc/ew;->k()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v0, Lcom/loc/ei;->d:Lcom/loc/es;

    invoke-virtual {v2}, Lcom/loc/es;->m()Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0x13

    iput v2, v0, Lcom/loc/ei;->z:I

    const-string v2, "#1901"

    invoke-virtual {v1, v2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v2, "\u6ca1\u6709\u68c0\u67e5\u5230SIM\u5361\uff0c\u5e76\u4e14WIFI\u5f00\u5173\u5173\u95ed\uff0c\u8bf7\u6253\u5f00WIFI\u5f00\u5173\u6216\u8005\u63d2\u5165SIM\u5361#1901"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x855

    invoke-static {v9, v1}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    return-object v8

    :cond_b
    iget-object v2, v0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v2}, Lcom/loc/ew;->k()Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "#1301"

    invoke-virtual {v1, v2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u4e3a\u7a7a\uff0c\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u60a8\u6253\u5f00WIFI\u5f00\u5173\u518d\u53d1\u8d77\u5b9a\u4f4d#1301"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    const-string v2, "#1302"

    invoke-virtual {v1, v2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v1}, Lcom/loc/ew;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const-string v3, "\u6216\u540e\u53f0\u8fd0\u884c\u6ca1\u6709\u540e\u53f0\u5b9a\u4f4d\u6743\u9650"

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u548cWIFI\u4fe1\u606f\u5747\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6388\u4e88APP\u5b9a\u4f4d\u6743\u9650"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/fp;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4

    :cond_d
    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u548cWIFI\u4fe1\u606f\u5747\u4e3a\u7a7a\uff0c\u8bf7\u79fb\u52a8\u5230\u6709WIFI\u7684\u533a\u57df\uff0c\u82e5\u786e\u5b9a\u5f53\u524d\u533a\u57df\u6709WIFI\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6388\u4e88APP\u5b9a\u4f4d\u6743\u9650"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/fp;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_4
    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    goto :goto_3

    :goto_5
    const/16 v1, 0xd

    iput v1, v0, Lcom/loc/ei;->z:I

    const/16 v1, 0x853

    invoke-static {v9, v1}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    return-object v8

    :cond_f
    iget-object v5, v0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v5}, Lcom/loc/ew;->l()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iput-object v5, v0, Lcom/loc/ei;->u:Landroid/net/wifi/WifiInfo;

    invoke-static {v5}, Lcom/loc/ew;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/loc/ei;->v:Z

    const-string v5, "cgi"

    const-string v10, "cgiwifi"

    const/4 v11, 0x2

    const-string v12, "#"

    const-string v13, "network"

    if-eqz v2, :cond_14

    if-eq v2, v6, :cond_12

    if-eq v2, v11, :cond_10

    const/16 v2, 0xb

    iput v2, v0, Lcom/loc/ei;->z:I

    const/16 v2, 0x83f

    invoke-static {v9, v2}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    const-string v2, "#1101"

    invoke-virtual {v1, v2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v2, "get cgi failure#1101"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_10
    if-eqz v3, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v3, Lcom/loc/er;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/loc/er;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/loc/er;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/loc/er;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/loc/er;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-boolean v2, v0, Lcom/loc/ei;->v:Z

    if-eqz v2, :cond_13

    :cond_11
    :goto_6
    move-object v5, v10

    goto :goto_7

    :cond_12
    if-eqz v3, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v3, Lcom/loc/er;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/loc/er;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/loc/er;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/loc/er;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-boolean v2, v0, Lcom/loc/ei;->v:Z

    if-eqz v2, :cond_13

    goto :goto_6

    :cond_13
    :goto_7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_d

    :cond_14
    iget-object v2, v0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-boolean v2, v0, Lcom/loc/ei;->v:Z

    if-eqz v2, :cond_15

    goto :goto_9

    :cond_15
    const/4 v2, 0x0

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v2, 0x1

    :goto_a
    if-eqz v4, :cond_17

    const/4 v3, 0x1

    goto :goto_b

    :cond_17
    const/4 v3, 0x0

    :goto_b
    const/16 v14, 0x7e6

    if-nez v3, :cond_1a

    iget-boolean v15, v0, Lcom/loc/ei;->v:Z

    const/16 v7, 0x7e5

    if-eqz v15, :cond_18

    iget-object v15, v0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_18

    iput v11, v0, Lcom/loc/ei;->z:I

    const-string v2, "#0201"

    invoke-virtual {v1, v2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14WIFI\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#0201"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v7}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    return-object v8

    :cond_18
    iget-object v15, v0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v15, v6, :cond_1a

    iput v11, v0, Lcom/loc/ei;->z:I

    iget-boolean v15, v0, Lcom/loc/ei;->v:Z

    const-string v11, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14\u641c\u5230\u7684WIFI\u6570\u91cf\u4e0d\u8db3\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0202"

    const-string v6, "#0202"

    if-nez v15, :cond_19

    invoke-virtual {v1, v6}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v14}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    return-object v8

    :cond_19
    iget-object v15, v0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/loc/dx;

    iget-boolean v14, v15, Lcom/loc/dx;->h:Z

    if-eqz v14, :cond_1a

    invoke-virtual {v1, v6}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v7}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    return-object v8

    :cond_1a
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v13, v7, v11

    const-string v11, "#%s#"

    invoke-static {v6, v11, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/loc/er;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-boolean v2, v0, Lcom/loc/ei;->v:Z

    if-eqz v2, :cond_1c

    :cond_1b
    move-object v5, v10

    :cond_1c
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_1d
    if-eqz v2, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_1e
    const/4 v2, 0x2

    iput v2, v0, Lcom/loc/ei;->z:I

    iget-object v2, v0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v2}, Lcom/loc/ew;->k()Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "#0203"

    invoke-virtual {v1, v2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9,\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00WIFI\u5f00\u5173#0203"

    goto :goto_c

    :cond_1f
    const-string v2, "#0204"

    invoke-virtual {v1, v2}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9,\u5e76\u4e14\u6ca1\u6709\u641c\u7d22\u5230WIFI\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0204"

    :goto_c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7e6

    invoke-static {v9, v1}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    :cond_20
    :goto_d
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/fp;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_22
    return-object v8
.end method

.method private static c(Lcom/loc/en;)V
    .locals 2

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/loc/en;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/loc/en;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/loc/en;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/loc/en;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "14"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/loc/en;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/loc/en;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private d(Lcom/loc/en;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/loc/ei;->j:Lcom/loc/en;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 6

    iget-object v0, p0, Lcom/loc/ei;->n:Lcom/loc/fd;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    invoke-direct {p0}, Lcom/loc/ei;->i()I

    move-result v0

    iget-object v1, p0, Lcom/loc/ei;->n:Lcom/loc/fd;

    iget-object v2, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v2

    iget-object v4, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v4

    sget-object v5, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/loc/fd;->a(JZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private i()I
    .locals 5

    iget-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/loc/ei$1;->a:[I

    iget-object v4, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method private j()V
    .locals 6

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v4, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v4

    iput-boolean v4, p0, Lcom/loc/ei;->t:Z

    iget-object v4, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/loc/ei;->B:Z

    iget-boolean v4, p0, Lcom/loc/ei;->q:Z

    if-ne v3, v4, :cond_0

    iget-boolean v4, p0, Lcom/loc/ei;->p:Z

    if-ne v2, v4, :cond_0

    iget-boolean v4, p0, Lcom/loc/ei;->s:Z

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/loc/ei;->r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    if-eq v0, v4, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/loc/ei;->q()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_1

    :catchall_1
    move v1, v3

    goto :goto_0

    :catchall_2
    const/4 v2, 0x1

    :catchall_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    move v5, v3

    move v3, v1

    move v1, v5

    :cond_1
    :goto_2
    iput-boolean v3, p0, Lcom/loc/ei;->q:Z

    iput-boolean v2, p0, Lcom/loc/ei;->p:Z

    iput-boolean v1, p0, Lcom/loc/ei;->s:Z

    iput-object v0, p0, Lcom/loc/ei;->r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-void
.end method

.method private k()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ei;->h:Lcom/loc/ei$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/ei$a;

    invoke-direct {v0, p0}, Lcom/loc/ei$a;-><init>(Lcom/loc/ei;)V

    iput-object v0, p0, Lcom/loc/ei;->h:Lcom/loc/ei$a;

    :cond_0
    iget-object v0, p0, Lcom/loc/ei;->I:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/loc/ei;->I:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/ei;->I:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/ei;->h:Lcom/loc/ei$a;

    iget-object v2, p0, Lcom/loc/ei;->I:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Aps"

    const-string v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/ei;->l:Lcom/loc/fg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/fg;

    invoke-direct {v0}, Lcom/loc/fg;-><init>()V

    iput-object v0, p0, Lcom/loc/ei;->l:Lcom/loc/fg;

    :cond_0
    iget-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_1
    iget-object v1, p0, Lcom/loc/ei;->l:Lcom/loc/fg;

    iget-object v2, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v3

    iget-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v4

    iget-object v5, p0, Lcom/loc/ei;->d:Lcom/loc/es;

    iget-object v6, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    iget-object v7, p0, Lcom/loc/ei;->b:Landroid/net/ConnectivityManager;

    iget-object v8, p0, Lcom/loc/ei;->E:Ljava/lang/String;

    iget-object v9, p0, Lcom/loc/ei;->Q:Lcom/loc/eu;

    invoke-virtual/range {v1 .. v9}, Lcom/loc/fg;->a(Landroid/content/Context;ZZLcom/loc/es;Lcom/loc/ew;Landroid/net/ConnectivityManager;Ljava/lang/String;Lcom/loc/eu;)V

    iget-object v0, p0, Lcom/loc/ei;->l:Lcom/loc/fg;

    invoke-virtual {v0}, Lcom/loc/fg;->a()[B

    move-result-object v0

    return-object v0
.end method

.method private m()Z
    .locals 6

    iget-wide v0, p0, Lcom/loc/ei;->k:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/loc/ei;->k:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x4e20

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/loc/ei;->m:Z

    invoke-virtual {v0, v1}, Lcom/loc/ew;->a(Z)V

    return-void
.end method

.method private o()Z
    .locals 1

    iget-object v0, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v0}, Lcom/loc/ew;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Lcom/loc/ei;->N:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ei;->N:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private q()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ei;->e:Lcom/loc/ey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/loc/ey;->a()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loc/ei;->d(Lcom/loc/en;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/ei;->O:Z

    iget-object v0, p0, Lcom/loc/ei;->D:Lcom/loc/em;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/loc/em;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Aps"

    const-string v2, "cleanCache"

    invoke-static {v0, v1, v2}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(DD)Lcom/loc/en;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/loc/ei;->n:Lcom/loc/fd;

    iget-object v1, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/loc/fd;->a(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"status\":\"1\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/ei;->f:Lcom/loc/ff;

    invoke-virtual {v1, v0}, Lcom/loc/ff;->a(Ljava/lang/String;)Lcom/loc/en;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v0, p3, p4}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/loc/eh;)Lcom/loc/en;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Aps"

    invoke-virtual/range {p0 .. p0}, Lcom/loc/ei;->c()V

    const-string v0, "conitue"

    invoke-virtual {v2, v0}, Lcom/loc/eh;->e(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/loc/ei;->a:Landroid/content/Context;

    const/4 v4, 0x1

    if-nez v0, :cond_0

    const-string v0, "#0101"

    invoke-virtual {v2, v0}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string v2, "context is null#0101"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/loc/ei;->a(ILjava/lang/String;)Lcom/loc/en;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, v1, Lcom/loc/ei;->K:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/loc/ei;->K:I

    if-ne v0, v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/loc/ei;->n()V

    :cond_1
    iget-wide v5, v1, Lcom/loc/ei;->k:J

    invoke-direct {v1, v5, v6}, Lcom/loc/ei;->a(J)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/loc/ei;->j:Lcom/loc/en;

    invoke-static {v0}, Lcom/loc/fp;->a(Lcom/loc/en;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, v1, Lcom/loc/ei;->s:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/loc/ei;->j:Lcom/loc/en;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/loc/fh;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/loc/ei;->j:Lcom/loc/en;

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    :cond_2
    iget-object v0, v1, Lcom/loc/ei;->j:Lcom/loc/en;

    return-object v0

    :cond_3
    iget-object v0, v1, Lcom/loc/ei;->A:Lcom/loc/ep;

    if-eqz v0, :cond_5

    iget-boolean v6, v1, Lcom/loc/ei;->B:Z

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/loc/ep;->a()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/loc/ep;->b()V

    :cond_5
    :goto_0
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iget-object v7, v1, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v7, v0}, Lcom/loc/ew;->b(Z)V

    iget-object v0, v1, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v0}, Lcom/loc/ew;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/ei;->g:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    const-string v7, "getLocation getScanResultsParam"

    invoke-static {v0, v3, v7}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    :try_start_1
    iget-object v0, v1, Lcom/loc/ei;->d:Lcom/loc/es;

    invoke-direct/range {p0 .. p0}, Lcom/loc/ei;->o()Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/loc/es;->a(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    const-string v7, "getLocation getCgiListParam"

    invoke-static {v0, v3, v7}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/loc/ei;->c(Lcom/loc/eh;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/ei;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v1, Lcom/loc/ei;->z:I

    iget-object v2, v1, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/ei;->a(ILjava/lang/String;)Lcom/loc/en;

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v0, v1, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Lcom/loc/ei;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v0}, Lcom/loc/ew;->m()Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_9

    const/16 v0, 0xf

    const-string v5, "networkLocation has been mocked!#1502"

    invoke-static {v0, v5}, Lcom/loc/ei;->a(ILjava/lang/String;)Lcom/loc/en;

    move-result-object v0

    const-string v5, "#1502"

    invoke-virtual {v2, v5}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocation;->setMock(Z)V

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    return-object v0

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/loc/ei;->m()Z

    move-result v9

    iget-object v7, v1, Lcom/loc/ei;->e:Lcom/loc/ey;

    iget-object v8, v1, Lcom/loc/ei;->d:Lcom/loc/es;

    iget-object v10, v1, Lcom/loc/ei;->j:Lcom/loc/en;

    iget-object v11, v1, Lcom/loc/ei;->c:Lcom/loc/ew;

    iget-object v12, v1, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/loc/ei;->N:Ljava/lang/String;

    iget-object v14, v1, Lcom/loc/ei;->a:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v15}, Lcom/loc/ey;->a(Lcom/loc/es;ZLcom/loc/en;Lcom/loc/ew;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/content/Context;Z)Lcom/loc/en;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/fp;->a(Lcom/loc/en;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    :goto_5
    invoke-direct {v1, v0}, Lcom/loc/ei;->d(Lcom/loc/en;)V

    goto :goto_6

    :cond_a
    invoke-direct {v1, v4, v2}, Lcom/loc/ei;->b(ZLcom/loc/eh;)Lcom/loc/en;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/fp;->a(Lcom/loc/en;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v2, "new"

    invoke-virtual {v0, v2}, Lcom/loc/en;->e(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/loc/ei;->e:Lcom/loc/ey;

    iget-object v7, v1, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/loc/ey;->a(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/loc/ei;->e:Lcom/loc/ey;

    iget-object v7, v1, Lcom/loc/ei;->d:Lcom/loc/es;

    invoke-virtual {v7}, Lcom/loc/es;->d()Lcom/loc/er;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/loc/ey;->a(Lcom/loc/er;)V

    goto :goto_5

    :cond_b
    iget-object v8, v1, Lcom/loc/ei;->e:Lcom/loc/ey;

    iget-object v9, v1, Lcom/loc/ei;->d:Lcom/loc/es;

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/loc/ei;->j:Lcom/loc/en;

    iget-object v12, v1, Lcom/loc/ei;->c:Lcom/loc/ew;

    iget-object v13, v1, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/loc/ei;->N:Ljava/lang/String;

    iget-object v15, v1, Lcom/loc/ei;->a:Landroid/content/Context;

    const/16 v16, 0x1

    invoke-virtual/range {v8 .. v16}, Lcom/loc/ey;->a(Lcom/loc/es;ZLcom/loc/en;Lcom/loc/ew;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/content/Context;Z)Lcom/loc/en;

    move-result-object v7

    invoke-static {v7}, Lcom/loc/fp;->a(Lcom/loc/en;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v0, "#0001"

    invoke-virtual {v2, v0}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    invoke-direct {v1, v7}, Lcom/loc/ei;->d(Lcom/loc/en;)V

    move-object v0, v7

    :cond_c
    :goto_6
    :try_start_2
    iget-object v2, v1, Lcom/loc/ei;->c:Lcom/loc/ew;

    if-eqz v2, :cond_10

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/loc/ew;->b()J

    move-result-wide v7

    const-wide/16 v9, 0xf

    cmp-long v2, v7, v9

    if-gtz v2, :cond_d

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    goto :goto_7

    :cond_d
    const-wide/16 v9, 0x78

    cmp-long v2, v7, v9

    if-gtz v2, :cond_e

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    goto :goto_7

    :cond_e
    const-wide/16 v4, 0x258

    cmp-long v2, v7, v4

    if-gtz v2, :cond_f

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    goto :goto_7

    :cond_f
    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    nop

    :cond_10
    :goto_7
    iget-object v8, v1, Lcom/loc/ei;->e:Lcom/loc/ey;

    iget-object v9, v1, Lcom/loc/ei;->N:Ljava/lang/String;

    iget-object v10, v1, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/loc/ei;->a:Landroid/content/Context;

    const/4 v13, 0x1

    move-object v11, v0

    invoke-virtual/range {v8 .. v13}, Lcom/loc/ey;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/loc/en;Landroid/content/Context;Z)V

    invoke-static {v0}, Lcom/loc/fp;->a(Lcom/loc/en;)Z

    iget-object v2, v1, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_12

    iget-boolean v2, v1, Lcom/loc/ei;->B:Z

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/loc/ei;->A:Lcom/loc/ep;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/loc/ep;->c()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    iget-object v2, v1, Lcom/loc/ei;->A:Lcom/loc/ep;

    invoke-virtual {v2}, Lcom/loc/ep;->d()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/location/Location;->setBearing(F)V

    iget-object v2, v1, Lcom/loc/ei;->A:Lcom/loc/ep;

    invoke-virtual {v2}, Lcom/loc/ep;->e()D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_8

    :cond_11
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/location/Location;->setBearing(F)V

    :goto_8
    invoke-virtual {v0, v2}, Landroid/location/Location;->setSpeed(F)V

    :cond_12
    invoke-direct {v1, v0}, Lcom/loc/ei;->d(Lcom/loc/en;)V

    iget-object v0, v1, Lcom/loc/ei;->j:Lcom/loc/en;

    return-object v0
.end method

.method public final varargs a(Lcom/loc/en;)Lcom/loc/en;
    .locals 2

    iget-object v0, p0, Lcom/loc/ei;->D:Lcom/loc/em;

    iget-boolean v1, p0, Lcom/loc/ei;->s:Z

    invoke-virtual {v0, v1}, Lcom/loc/em;->a(Z)V

    iget-object v0, p0, Lcom/loc/ei;->D:Lcom/loc/em;

    invoke-virtual {v0, p1}, Lcom/loc/em;->a(Lcom/loc/en;)Lcom/loc/en;

    move-result-object p1

    return-object p1
.end method

.method public final a(Z)Lcom/loc/en;
    .locals 6

    iget-object v0, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v0}, Lcom/loc/ew;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xf

    const-string v0, "networkLocation has been mocked!#1502"

    :goto_0
    invoke-static {p1, v0}, Lcom/loc/ei;->a(ILjava/lang/String;)Lcom/loc/en;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/loc/ei;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/loc/ei;->z:I

    iget-object v0, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/ei;->e:Lcom/loc/ey;

    iget-object v1, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ei;->N:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/ey;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)Lcom/loc/en;

    move-result-object p1

    invoke-static {p1}, Lcom/loc/fp;->a(Lcom/loc/en;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/loc/ei;->d(Lcom/loc/en;)V

    :cond_2
    return-object p1
.end method

.method public final a(ZLcom/loc/eh;)Lcom/loc/en;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "statics"

    goto :goto_0

    :cond_0
    const-string v0, "first"

    :goto_0
    invoke-virtual {p2, v0}, Lcom/loc/eh;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string p1, "#0101"

    invoke-virtual {p2, p1}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const-string p2, "context is null#0101"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    const/16 p2, 0x7db

    invoke-static {p1, p2}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/loc/ei;->a(ILjava/lang/String;)Lcom/loc/en;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v0}, Lcom/loc/ew;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "#1502"

    invoke-virtual {p2, p1}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    const/16 p1, 0xf

    const-string p2, "networkLocation has been mocked!#1502"

    invoke-static {p1, p2}, Lcom/loc/ei;->a(ILjava/lang/String;)Lcom/loc/en;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/loc/ei;->a()V

    iget-object v0, p0, Lcom/loc/ei;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/loc/ei;->z:I

    iget-object p2, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/loc/ei;->a(ILjava/lang/String;)Lcom/loc/en;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/loc/ei;->b(ZLcom/loc/eh;)Lcom/loc/en;

    move-result-object p1

    invoke-static {p1}, Lcom/loc/fp;->a(Lcom/loc/en;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-boolean p2, Lcom/loc/ei;->S:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/loc/ei;->e:Lcom/loc/ey;

    iget-object v0, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/loc/ey;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/loc/ei;->e:Lcom/loc/ey;

    iget-object v0, p0, Lcom/loc/ei;->d:Lcom/loc/es;

    invoke-virtual {v0}, Lcom/loc/es;->d()Lcom/loc/er;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/loc/ey;->a(Lcom/loc/er;)V

    invoke-direct {p0, p1}, Lcom/loc/ei;->d(Lcom/loc/en;)V

    :cond_4
    sput-boolean v1, Lcom/loc/ei;->S:Z

    return-object p1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/fd;->a(Landroid/content/Context;)Lcom/loc/fd;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ei;->n:Lcom/loc/fd;

    invoke-direct {p0}, Lcom/loc/ei;->h()V

    iget-object v0, p0, Lcom/loc/ei;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/loc/fp;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/ei;->b:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/loc/ei;->l:Lcom/loc/fg;

    if-nez v0, :cond_1

    new-instance v0, Lcom/loc/fg;

    invoke-direct {v0}, Lcom/loc/fg;-><init>()V

    iput-object v0, p0, Lcom/loc/ei;->l:Lcom/loc/fg;

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/loc/em;

    invoke-direct {v0}, Lcom/loc/em;-><init>()V

    iput-object v0, p0, Lcom/loc/ei;->D:Lcom/loc/em;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/fp;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/loc/fp;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/loc/ew;

    iget-object v2, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/ei;->P:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Lcom/loc/ew;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    :cond_1
    iget-object v0, p0, Lcom/loc/ei;->d:Lcom/loc/es;

    if-nez v0, :cond_2

    new-instance v0, Lcom/loc/es;

    iget-object v1, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ei;->P:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/loc/es;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/ei;->d:Lcom/loc/es;

    :cond_2
    new-instance v0, Lcom/loc/eu;

    iget-object v1, p0, Lcom/loc/ei;->P:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/loc/eu;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/ei;->Q:Lcom/loc/eu;

    iget-object p1, p0, Lcom/loc/ei;->e:Lcom/loc/ey;

    if-nez p1, :cond_3

    new-instance p1, Lcom/loc/ey;

    invoke-direct {p1}, Lcom/loc/ey;-><init>()V

    iput-object p1, p0, Lcom/loc/ei;->e:Lcom/loc/ey;

    :cond_3
    iget-object p1, p0, Lcom/loc/ei;->f:Lcom/loc/ff;

    if-nez p1, :cond_4

    new-instance p1, Lcom/loc/ff;

    invoke-direct {p1}, Lcom/loc/ff;-><init>()V

    iput-object p1, p0, Lcom/loc/ei;->f:Lcom/loc/ff;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "Aps"

    const-string v1, "initBase"

    invoke-static {p1, v0, v1}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ei;->P:Landroid/os/Handler;

    return-void
.end method

.method public final a(Lcom/amap/api/location/AMapLocation;)V
    .locals 3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/loc/et;

    invoke-direct {v0}, Lcom/loc/et;-><init>()V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    iput v1, v0, Lcom/loc/et;->a:I

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/loc/et;->d:J

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/loc/et;->e:I

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/loc/et;->b:D

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/loc/et;->c:D

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/loc/ei;->Q:Lcom/loc/eu;

    invoke-virtual {p1, v0}, Lcom/loc/eu;->a(Lcom/loc/et;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 7

    iput-object p1, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-object v1, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiActiveScan()Z

    iget-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiScan()Z

    move-result v2

    iget-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v3

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->isOpenAlwaysScanWifi()Z

    move-result v4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getScanWifiInterval()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/loc/ew;->a(ZZZJ)V

    :cond_1
    invoke-direct {p0}, Lcom/loc/ei;->h()V

    iget-object p1, p0, Lcom/loc/ei;->e:Lcom/loc/ey;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v0}, Lcom/loc/ey;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_2
    iget-object p1, p0, Lcom/loc/ei;->f:Lcom/loc/ff;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/loc/ei;->i:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v0}, Lcom/loc/ff;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_3
    invoke-direct {p0}, Lcom/loc/ei;->j()V

    return-void
.end method

.method public final a(Lcom/loc/en;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/loc/et;

    invoke-direct {v0}, Lcom/loc/et;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/loc/et;->d:J

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/loc/et;->e:I

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/loc/et;->b:D

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/loc/et;->c:D

    iput p2, v0, Lcom/loc/et;->a:I

    invoke-virtual {p1}, Lcom/loc/en;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/loc/et;->g:I

    invoke-virtual {p1}, Lcom/loc/en;->l()I

    move-result p1

    iput p1, v0, Lcom/loc/et;->h:I

    iget-object p1, p0, Lcom/loc/ei;->Q:Lcom/loc/eu;

    invoke-virtual {p1, v0}, Lcom/loc/eu;->b(Lcom/loc/et;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/loc/ei;->A:Lcom/loc/ep;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/ep;

    iget-object v1, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/ep;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/ei;->A:Lcom/loc/ep;

    :cond_0
    invoke-direct {p0}, Lcom/loc/ei;->k()V

    iget-object v0, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/ew;->b(Z)V

    iget-object v0, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v0}, Lcom/loc/ew;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/loc/ei;->d:Lcom/loc/es;

    invoke-direct {p0}, Lcom/loc/ei;->o()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/loc/es;->a(ZZ)V

    iget-object v0, p0, Lcom/loc/ei;->e:Lcom/loc/ey;

    iget-object v1, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/ey;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/ei;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ei;->y:Z

    return-void
.end method

.method public final b(Lcom/loc/eh;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/loc/ei;->x:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/loc/ei;->p()V

    iget-boolean v1, p0, Lcom/loc/ei;->t:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/loc/ei;->k()V

    :cond_1
    iget-object v1, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    iget-boolean v2, p0, Lcom/loc/ei;->t:Z

    invoke-virtual {v1, v2}, Lcom/loc/ew;->b(Z)V

    iget-object v1, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    invoke-virtual {v1}, Lcom/loc/ew;->e()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/loc/ei;->d:Lcom/loc/es;

    invoke-direct {p0}, Lcom/loc/ei;->o()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/loc/es;->a(ZZ)V

    invoke-direct {p0, p1}, Lcom/loc/ei;->c(Lcom/loc/eh;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/loc/ei;->N:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/loc/ei;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "Aps"

    const-string v2, "initFirstLocateParam"

    invoke-static {p1, v1, v2}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/loc/ei;->x:Z

    return-void
.end method

.method public final b(Lcom/loc/en;)V
    .locals 7

    invoke-static {p1}, Lcom/loc/fp;->a(Lcom/loc/en;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/loc/ei;->e:Lcom/loc/ey;

    iget-object v2, p0, Lcom/loc/ei;->N:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    const/4 v6, 0x1

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/loc/ey;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/loc/en;Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ei;->o:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ei;->E:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/ei;->x:Z

    iput-boolean v1, p0, Lcom/loc/ei;->y:Z

    iget-object v1, p0, Lcom/loc/ei;->e:Lcom/loc/ey;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/loc/ey;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/loc/ei;->D:Lcom/loc/em;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/loc/em;->a()V

    :cond_1
    iget-object v1, p0, Lcom/loc/ei;->f:Lcom/loc/ff;

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/loc/ei;->f:Lcom/loc/ff;

    :cond_2
    iget-object v1, p0, Lcom/loc/ei;->Q:Lcom/loc/eu;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/loc/ei;->H:Z

    invoke-virtual {v1, v2}, Lcom/loc/eu;->a(Z)V

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/loc/ei;->h:Lcom/loc/ei$a;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    iput-object v0, p0, Lcom/loc/ei;->h:Lcom/loc/ei$a;

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "Aps"

    const-string v3, "destroy"

    invoke-static {v1, v2, v3}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/loc/ei;->d:Lcom/loc/es;

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Lcom/loc/ei;->H:Z

    invoke-virtual {v1, v2}, Lcom/loc/es;->a(Z)V

    :cond_5
    iget-object v1, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/loc/ei;->H:Z

    invoke-virtual {v1, v2}, Lcom/loc/ew;->c(Z)V

    :cond_6
    iget-object v1, p0, Lcom/loc/ei;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_7
    iget-object v1, p0, Lcom/loc/ei;->A:Lcom/loc/ep;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/loc/ep;->f()V

    :cond_8
    iput-object v0, p0, Lcom/loc/ei;->j:Lcom/loc/en;

    iput-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/loc/ei;->w:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/loc/ei;->J:Landroid/location/LocationManager;

    return-void

    :catchall_1
    move-exception v1

    iput-object v0, p0, Lcom/loc/ei;->h:Lcom/loc/ei$a;

    throw v1
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/loc/ei;->T:Lcom/loc/ej;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/loc/ej;->d()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/ei;->T:Lcom/loc/ej;

    if-nez v0, :cond_1

    new-instance v0, Lcom/loc/ej;

    iget-object v1, p0, Lcom/loc/ei;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/ej;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/ei;->T:Lcom/loc/ej;

    :cond_1
    iget-object v0, p0, Lcom/loc/ei;->T:Lcom/loc/ej;

    iget-object v1, p0, Lcom/loc/ei;->d:Lcom/loc/es;

    iget-object v2, p0, Lcom/loc/ei;->c:Lcom/loc/ew;

    iget-object v3, p0, Lcom/loc/ei;->P:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/ej;->a(Lcom/loc/es;Lcom/loc/ew;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "as"

    const-string v2, "stc"

    invoke-static {v0, v1, v2}, Lcom/loc/am;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/loc/ei;->T:Lcom/loc/ej;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/loc/ej;->a()V

    :cond_0
    return-void
.end method
