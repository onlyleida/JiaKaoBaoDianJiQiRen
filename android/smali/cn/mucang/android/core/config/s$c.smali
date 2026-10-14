.class public Lcn/mucang/android/core/config/s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/cache/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/config/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/core/config/s$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/config/s$c;

    invoke-direct {v0}, Lcn/mucang/android/core/config/s$c;-><init>()V

    sput-object v0, Lcn/mucang/android/core/config/s$c;->a:Lcn/mucang/android/core/config/s$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->s()Lcn/mucang/android/core/config/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcn/mucang/android/core/config/w;->h()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_userCity"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/location/LocationUtils;->e(Z)Lcn/mucang/android/core/location/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/core/location/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_gpsCity"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    :cond_1
    invoke-static {}, Lcn/mucang/android/core/location/LocationUtils;->f()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_ipCity"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/encode/Digests;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
