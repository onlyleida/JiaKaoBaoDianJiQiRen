.class public final Lcn/mucang/android/jiakaoyi/k3collect/src/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0016\u0010\u0005\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00040\u0006\"\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0007J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\tJ\u0018\u0010\n\u001a\u00020\u000b2\u0010\u0010\u000c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcDataUtils;",
        "",
        "()V",
        "getCenter",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
        "gpsarr",
        "",
        "([Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
        "gpsList",
        "",
        "isNotEmpty",
        "",
        "posList",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/k3collect/src/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/b;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/src/b;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-wide/16 v4, 0x0

    move-wide v6, v4

    move-wide v8, v6

    if-ltz v3, :cond_2

    :goto_0
    add-int/lit8 v10, v2, 0x1

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v2, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    add-double/2addr v4, v11

    .line 5
    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    add-double/2addr v6, v11

    .line 6
    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    add-double/2addr v8, v11

    if-le v10, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v10

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v11, v4, v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v13, v6, v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v2, v0

    div-double v15, v8, v2

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DDD)V

    :cond_3
    return-object v1
.end method

.method public final b(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
