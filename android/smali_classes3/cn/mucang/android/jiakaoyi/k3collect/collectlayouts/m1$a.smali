.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/m1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/m1;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->values()[Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->CENTER_DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->KEEP_ASIDE_FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->NON_MOTOR_VEHICLE_FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->NON_MOTOR_VEHICLE_DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->CENTRAL_CIRCLE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->GRID_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->SHUANG_HUANG_FULL:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->SHUANG_HUANG_DASH:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->DASH_FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->ARROW:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->CrossRoadMark:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->BANMA_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->STOP_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->CENTRAL_CIRCLE_FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->JUDGE_AREA_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->DIAO_TOU_AREA:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->JIN_TING_AREA:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->TING_CHE_AREA:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->BUILDINGS:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->NO_ENTER_AREA:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/m1$a;->a:[I

    return-void
.end method
