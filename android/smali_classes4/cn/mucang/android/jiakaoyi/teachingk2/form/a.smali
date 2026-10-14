.class public final Lcn/mucang/android/jiakaoyi/teachingk2/form/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/form/B2LineUtils;",
        "",
        "()V",
        "b2LineList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;",
        "step",
        "",
        "TeachingK2_release"
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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;",
            ">;"
        }
    .end annotation

    move/from16 v0, p0

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v0, v1, :cond_0

    new-array v0, v2, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line12:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line18:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line23:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v9

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line34:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v8

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line36:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v7

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line45:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v6

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line56:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v5

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line67:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v4

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line78:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v3

    .line 11
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 12
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_1

    new-array v0, v4, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 13
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line12:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 14
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line16:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 15
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line23:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v9

    .line 16
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line34:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v8

    .line 17
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line36:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v7

    .line 18
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line45:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v6

    .line 19
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line56:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v5

    .line 20
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 21
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_2

    new-array v0, v4, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 22
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line12:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 23
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line19:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 24
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line210:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v9

    .line 25
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line34:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v8

    .line 26
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line56:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v7

    .line 27
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line78:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v6

    .line 28
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line910:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v5

    .line 29
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 30
    :cond_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_3

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ChunHuaLu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    new-array v0, v9, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 31
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->LeftLine:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 32
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->RightLine:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 33
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 34
    :cond_7
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_8

    new-array v0, v7, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 35
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line12:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 36
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line14:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 37
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line23:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v9

    .line 38
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line34:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v8

    .line 39
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 40
    :cond_8
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_9

    new-array v0, v7, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 41
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line12:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 42
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line26:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 43
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line34:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v9

    .line 44
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line56:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v8

    .line 45
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 46
    :cond_9
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_a

    new-array v0, v9, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 47
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line12:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 48
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line34:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 49
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 50
    :cond_a
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v13, 0xc

    const/16 v14, 0xb

    const/16 v15, 0xa

    const/16 v12, 0xe

    if-ne v0, v1, :cond_b

    new-array v0, v12, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 51
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line12:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 52
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line110:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 53
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line23:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v9

    .line 54
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line34:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v8

    .line 55
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line36:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v7

    .line 56
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line37:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v6

    .line 57
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line45:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v5

    .line 58
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line48:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v4

    .line 59
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line56:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v3

    .line 60
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line58:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v2

    .line 61
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line67:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v15

    .line 62
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line78:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v14

    .line 63
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line79:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v13

    .line 64
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line910:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 65
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 66
    :cond_b
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_DanBian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_c

    new-array v0, v7, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 67
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line12:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 68
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line112:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 69
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line211:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v9

    .line 70
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line1112:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v8

    .line 71
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 72
    :cond_c
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_XianKuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_d

    new-array v0, v4, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 73
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line12:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 74
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line110:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 75
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line29:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v9

    .line 76
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line34:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v8

    .line 77
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line56:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v7

    .line 78
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line78:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v6

    .line 79
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line910:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v5

    .line 80
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 81
    :cond_d
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhangAi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_e

    new-array v0, v7, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 82
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line12:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 83
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line110:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 84
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line29:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v9

    .line 85
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line910:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v8

    .line 86
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 87
    :cond_e
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_QiFu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_f

    new-array v0, v3, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 88
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line12:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 89
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line112:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 90
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line211:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v9

    .line 91
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line34:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v8

    .line 92
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line56:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v7

    .line 93
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line78:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v6

    .line 94
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line910:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v5

    .line 95
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line1112:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v4

    .line 96
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 97
    :cond_f
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShanLu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_10

    new-array v0, v8, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 98
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->LLine:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 99
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->MLine:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 100
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->RLine:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v9

    .line 101
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 102
    :cond_10
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_GaoSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_11

    new-array v0, v12, [Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 103
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line12:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v10

    .line 104
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line13:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v11

    .line 105
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line24:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v9

    .line 106
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line34:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v8

    .line 107
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line38:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v7

    .line 108
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line45:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v6

    .line 109
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line56:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v5

    .line 110
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line67:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v4

    .line 111
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line78:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v3

    .line 112
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line710:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v2

    .line 113
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line89:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v15

    .line 114
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->Line910:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v14

    .line 115
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->LLine:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    aput-object v1, v0, v13

    .line 116
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->RLine:Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 117
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 118
    :cond_11
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
