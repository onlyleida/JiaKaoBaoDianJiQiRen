.class public final Lcn/mucang/android/jiakaoyi/k3collect/f0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/f0/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/helper/LineTypeSpinnerHelper;",
        "",
        "()V",
        "getEditLineTypes",
        "",
        "Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;",
        "lineLayoutType",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/k3collect/f0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/f0/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/f0/b;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/f0/b;->a:Lcn/mucang/android/jiakaoyi/k3collect/f0/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;",
            ">;"
        }
    .end annotation

    const-string v0, "lineLayoutType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/f0/b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    new-array v0, v3, [Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object p1, v0, v4

    .line 2
    invoke-static {v0}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    new-array p1, v1, [Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->JIN_TING_AREA:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v0, p1, v4

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->DIAO_TOU_AREA:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v0, p1, v3

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->NO_ENTER_AREA:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v0, p1, v2

    .line 6
    invoke-static {p1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    new-array p1, v1, [Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->SHUANG_HUANG_FULL:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v0, p1, v4

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->SHUANG_HUANG_DASH:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v0, p1, v3

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->DASH_FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v0, p1, v2

    .line 10
    invoke-static {p1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x9

    new-array p1, p1, [Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v0, p1, v4

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v0, p1, v3

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->CENTER_DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v0, p1, v2

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->KEEP_ASIDE_FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v0, p1, v1

    const/4 v0, 0x4

    .line 15
    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->CrossRoadMark:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v1, p1, v0

    const/4 v0, 0x5

    .line 16
    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->CENTRAL_CIRCLE_FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v1, p1, v0

    const/4 v0, 0x6

    .line 17
    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->NON_MOTOR_VEHICLE_FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v1, p1, v0

    const/4 v0, 0x7

    .line 18
    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->NON_MOTOR_VEHICLE_DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v1, p1, v0

    const/16 v0, 0x8

    .line 19
    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->STOP_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    aput-object v1, p1, v0

    .line 20
    invoke-static {p1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
