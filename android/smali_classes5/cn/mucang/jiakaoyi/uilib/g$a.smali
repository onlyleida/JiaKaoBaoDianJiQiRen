.class public final synthetic Lcn/mucang/jiakaoyi/uilib/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->values()[Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/g$a;->a:[I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->values()[Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BanMaXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_DiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BusStation:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_GongQiao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_HuanDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_HuiChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JiaJianDang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JianSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JinTing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JiWanPoDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LinTing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouYouZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouZhiXing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouZuoZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_RangXing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_XianSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_School:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ZhiXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDaoChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TeShuQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/g$a;->b:[I

    return-void
.end method
