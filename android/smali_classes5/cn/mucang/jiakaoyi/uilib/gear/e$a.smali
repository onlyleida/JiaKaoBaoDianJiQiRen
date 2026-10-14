.class public final Lcn/mucang/jiakaoyi/uilib/gear/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/gear/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0007J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/gear/GearDataConverter$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "convert2Gear",
        "Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;",
        "readBytes",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/ReadBytes;",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "convert2Master",
        "",
        "gearEntity",
        "reserveLittleBigEndian",
        "byteArray",
        "isLittleEndian",
        "",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/gear/e$a;-><init>()V

    return-void
.end method

.method private static final d(Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->getGear()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->getGear()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic e(Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;)I
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/e$a;->d(Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->c()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;->setGearTracks(Ljava/util/List;)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v4

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v5

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-lez v5, :cond_2

    const/4 v7, 0x0

    if-lez v5, :cond_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 10
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;

    invoke-direct {v8}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->m()S

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->setDr(Ljava/lang/Float;)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->m()S

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->setDp(Ljava/lang/Float;)V

    .line 13
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v7, v5, :cond_1

    .line 14
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->setGear(Ljava/lang/Integer;)V

    .line 15
    invoke-virtual {v3, v6}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->setPoints(Ljava/util/List;)V

    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GearDataConverter: convert2Gear failed, "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final b(Ljava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;->setGearTracks(Ljava/util/List;)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-lez v5, :cond_2

    const/4 v7, 0x0

    if-lez v5, :cond_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 10
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;

    invoke-direct {v8}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;-><init>()V

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->setDr(Ljava/lang/Float;)V

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->setDp(Ljava/lang/Float;)V

    .line 13
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v7, v5, :cond_1

    .line 14
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->setGear(Ljava/lang/Integer;)V

    .line 15
    invoke-virtual {v3, v6}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->setPoints(Ljava/util/List;)V

    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GearDataConverter: convert2Gear failed, "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final c(Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;->getGearTracks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

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
    if-eqz v1, :cond_2

    goto/16 :goto_5

    .line 2
    :cond_2
    :try_start_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;->getGearTracks()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/gear/a;->a:Lcn/mucang/jiakaoyi/uilib/gear/a;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;

    .line 6
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->getGear()Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_5

    const/4 v3, 0x6

    .line 7
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    goto :goto_3

    .line 8
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->getGear()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 9
    :goto_3
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 10
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 11
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;

    .line 12
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->getDr()Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/16 v5, 0x64

    int-to-float v5, v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 13
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->getDp()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    goto :goto_4

    .line 14
    :cond_6
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GearDataConverter: convert2Master failed, "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_7
    :goto_5
    return-object v0
.end method

.method public final f([BZ)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_4

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    :try_start_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_1
    if-eqz p2, :cond_3

    .line 3
    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_2

    :cond_3
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 4
    :goto_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6
    array-length p1, p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    :cond_4
    :goto_3
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 9
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    .line 11
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-lez p2, :cond_4

    if-lez p2, :cond_4

    const/4 v1, 0x0

    :cond_5
    add-int/2addr v1, v2

    .line 12
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    if-lt v1, p2, :cond_5

    goto :goto_3

    .line 14
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GearDataConverter: convert2Gear failed, "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    return-object v0
.end method
