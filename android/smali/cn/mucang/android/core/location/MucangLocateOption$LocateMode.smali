.class public final enum Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/location/MucangLocateOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocateMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

.field public static final enum COARSE_LOCATION_ONLY:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

.field public static final enum FINE_LOCATION_FIRST:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

.field public static final enum FINE_LOCATION_ONLY:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    const-string v1, "FINE_LOCATION_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->FINE_LOCATION_ONLY:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    .line 2
    new-instance v1, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    const-string v3, "COARSE_LOCATION_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->COARSE_LOCATION_ONLY:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    .line 3
    new-instance v3, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    const-string v5, "FINE_LOCATION_FIRST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->FINE_LOCATION_FIRST:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->$VALUES:[Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->$VALUES:[Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    invoke-virtual {v0}, [Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    return-object v0
.end method
