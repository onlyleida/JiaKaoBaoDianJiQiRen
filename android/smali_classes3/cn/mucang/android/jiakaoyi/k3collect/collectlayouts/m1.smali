.class public final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/m1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/LayoutDataHelper;",
        "",
        "()V",
        "createLineLayout",
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
        "lineLayoutType",
        "Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;",
        "srcData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/m1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/m1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/m1;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/m1;->a:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/m1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lineLayoutType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/m1$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_17

    .line 2
    :pswitch_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/j1;

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_0
    const/16 p2, 0x12

    .line 4
    invoke-direct {v0, p1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/j1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    goto/16 :goto_16

    .line 5
    :pswitch_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/BuildingsLayout;

    if-nez p3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    .line 7
    :goto_1
    invoke-direct {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/BuildingsLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    goto/16 :goto_16

    .line 8
    :pswitch_2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/j1;

    if-nez p3, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_2
    const/16 p2, 0x10

    .line 10
    invoke-direct {v0, p1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/j1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    goto/16 :goto_16

    .line 11
    :pswitch_3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/j1;

    if-nez p3, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_3
    const/16 p2, 0xf

    .line 13
    invoke-direct {v0, p1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/j1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    goto/16 :goto_16

    .line 14
    :pswitch_4
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/j1;

    if-nez p3, :cond_4

    goto :goto_4

    .line 15
    :cond_4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_4
    const/16 p2, 0xe

    .line 16
    invoke-direct {v0, p1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/j1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    goto/16 :goto_16

    .line 17
    :pswitch_5
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;

    if-nez p3, :cond_5

    goto :goto_5

    .line 18
    :cond_5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    .line 19
    :goto_5
    invoke-direct {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/l1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    goto/16 :goto_16

    .line 20
    :pswitch_6
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;

    if-nez p3, :cond_6

    goto :goto_6

    .line 21
    :cond_6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_6
    const/16 p2, 0xc

    .line 22
    invoke-direct {v0, p1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    goto/16 :goto_16

    .line 23
    :pswitch_7
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;

    if-nez p3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_7
    invoke-direct {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/n1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    goto/16 :goto_16

    .line 24
    :pswitch_8
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/k1;

    if-nez p3, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_8
    invoke-direct {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/k1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    goto/16 :goto_16

    .line 25
    :pswitch_9
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

    if-nez p3, :cond_9

    goto :goto_9

    .line 26
    :cond_9
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    .line 27
    :goto_9
    invoke-direct {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    goto/16 :goto_16

    .line 28
    :pswitch_a
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ArrowLineLayout;

    if-nez p3, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_a
    invoke-direct {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ArrowLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    goto/16 :goto_16

    .line 29
    :pswitch_b
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;

    if-nez p3, :cond_b

    goto :goto_b

    .line 30
    :cond_b
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    .line 31
    :goto_b
    invoke-direct {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    goto/16 :goto_16

    .line 32
    :pswitch_c
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;

    if-nez p3, :cond_c

    goto :goto_c

    .line 33
    :cond_c
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    .line 34
    :goto_c
    invoke-direct {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    goto/16 :goto_16

    .line 35
    :pswitch_d
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangLineLayout;

    if-nez p3, :cond_d

    goto :goto_d

    .line 36
    :cond_d
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    .line 37
    :goto_d
    invoke-direct {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    goto/16 :goto_16

    .line 38
    :pswitch_e
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/GridLineLayout;

    if-nez p3, :cond_e

    goto :goto_e

    :cond_e
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_e
    invoke-direct {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/GridLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    goto/16 :goto_16

    .line 39
    :pswitch_f
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;

    if-nez p3, :cond_f

    goto :goto_f

    :cond_f
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_f
    invoke-direct {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V

    goto/16 :goto_16

    .line 40
    :pswitch_10
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    if-nez p3, :cond_10

    goto :goto_10

    .line 41
    :cond_10
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    .line 42
    :goto_10
    invoke-direct {v0, p1, v2, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    goto/16 :goto_16

    .line 43
    :pswitch_11
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;

    if-nez p3, :cond_11

    goto :goto_11

    .line 44
    :cond_11
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    .line 45
    :goto_11
    invoke-direct {v0, p1, v2, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    goto :goto_16

    .line 46
    :pswitch_12
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;

    if-nez p3, :cond_12

    goto :goto_12

    .line 47
    :cond_12
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_12
    const/4 p2, 0x3

    .line 48
    invoke-direct {v0, p1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    goto :goto_16

    .line 49
    :pswitch_13
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;

    if-nez p3, :cond_13

    goto :goto_13

    .line 50
    :cond_13
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_13
    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p1

    .line 51
    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;IILkotlin/jvm/internal/o;)V

    goto :goto_16

    .line 52
    :pswitch_14
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    if-nez p3, :cond_14

    goto :goto_14

    .line 53
    :cond_14
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_14
    const/16 p2, 0xa

    .line 54
    invoke-direct {v0, p1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V

    goto :goto_16

    .line 55
    :pswitch_15
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    if-nez p3, :cond_15

    goto :goto_15

    .line 56
    :cond_15
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p2

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v2

    :goto_15
    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p1

    .line 57
    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;IILkotlin/jvm/internal/o;)V

    :goto_16
    move-object v2, v0

    :goto_17
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
