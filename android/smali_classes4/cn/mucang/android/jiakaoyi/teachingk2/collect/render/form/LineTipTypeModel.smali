.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

.field public static final enum Angle:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

.field public static final enum Area:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

.field public static final enum Dot:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

.field public static final enum Frame:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

.field public static final enum Line:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    const-string v1, "Line"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "\u7ebf\u6bb5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->Line:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    const-string v4, "Frame"

    const/4 v5, 0x1

    const-string v6, "\u7ebf\u6846"

    invoke-direct {v1, v4, v5, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->Frame:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    .line 3
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    const-string v6, "Dot"

    const/4 v7, 0x3

    const-string v8, "\u70b9"

    invoke-direct {v4, v6, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->Dot:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    .line 4
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    const-string v8, "Area"

    const/4 v9, 0x4

    const-string v10, "\u533a\u57df"

    invoke-direct {v6, v8, v7, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->Area:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    .line 5
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    const-string v10, "Angle"

    const/4 v11, 0x5

    const-string v12, "\u89d2"

    invoke-direct {v8, v10, v9, v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->Angle:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    new-array v10, v11, [Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v3

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 6
    sput-object v10, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->type:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->name:Ljava/lang/String;

    return-void
.end method

.method public static getAngles(I)[Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_8

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_8

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_7

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_6

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_3

    const-string p0, "1-2-3"

    const-string v0, "2-3-4"

    const-string v1, "3-4-5"

    const-string v2, "4-1-2"

    .line 5
    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_4

    const-string v1, "1-2-4"

    const-string v2, "2-4-3"

    const-string v3, "3-1-2"

    const-string v4, "3-5-6"

    const-string v5, "4-3-1"

    const-string v6, "4-3-5"

    const-string v7, "5-6-4"

    const-string v8, "6-4-3"

    .line 7
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_5

    const-string v1, "3-4-5"

    const-string v2, "3-6-5"

    const-string v3, "4-3-6"

    const-string v4, "4-5-6"

    const-string v5, "5-6-7"

    const-string v6, "5-8-7"

    const-string v7, "6-5-8"

    const-string v8, "8-7-6"

    .line 9
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_6
    :goto_0
    const-string v0, "1-2-3"

    const-string v1, "2-3-4"

    const-string v2, "3-4-5"

    const-string v3, "4-1-2"

    const-string v4, "4-5-6"

    const-string v5, "5-6-7"

    const-string v6, "6-7-8"

    const-string v7, "7-8-9"

    const-string v8, "8-9-10"

    const-string v9, "9-10-7"

    .line 10
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    const-string v0, "1-2-3"

    const-string v1, "2-1-6"

    const-string v2, "2-3-4"

    const-string v3, "3-4-5"

    const-string v4, "4-5-6"

    const-string v5, "5-6-1"

    .line 11
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    const-string v0, "1-2-3"

    const-string v1, "2-3-4"

    const-string v2, "3-4-5"

    const-string v3, "4-5-6"

    const-string v4, "5-6-7"

    const-string v5, "6-7-8"

    const-string v6, "7-8-1"

    const-string v7, "8-1-2"

    .line 12
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAreas(I)[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "5-6-7-8\u533a\u57df"

    .line 2
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLineTipTypes(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_0

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->Area:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_1

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->Frame:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShanLu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ChunHuaLu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_3

    .line 8
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->Dot:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->Angle:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ETC:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_4

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_4

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QuKa:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_4

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_4

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_DanBian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_4

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_XianKuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_4

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhangAi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_4

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_QiFu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_4

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_GaoSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_5

    .line 11
    :cond_4
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->Angle:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->l()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 13
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->Frame:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    return-object v1
.end method

.method public static getPoints(I)[I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_9

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_9

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_8

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ETC:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_8

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QuKa:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_8

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_8

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_8

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_7

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_7

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_7

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_XianKuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_7

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhangAi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_6

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_DanBian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_5

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_QiFu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p0, v0, :cond_5

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_GaoSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :cond_5
    :goto_0
    const/16 p0, 0xc

    new-array p0, p0, [I

    .line 6
    fill-array-data p0, :array_0

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x4

    new-array p0, p0, [I

    .line 7
    fill-array-data p0, :array_1

    return-object p0

    :cond_7
    :goto_2
    const/16 p0, 0xa

    new-array p0, p0, [I

    .line 8
    fill-array-data p0, :array_2

    return-object p0

    :cond_8
    :goto_3
    const/4 p0, 0x6

    new-array p0, p0, [I

    .line 9
    fill-array-data p0, :array_3

    return-object p0

    :cond_9
    :goto_4
    const/16 p0, 0x8

    new-array p0, p0, [I

    .line 10
    fill-array-data p0, :array_4

    return-object p0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public static getTypeNames(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->getLineTipTypes(I)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    .line 4
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->type:I

    return v0
.end method
