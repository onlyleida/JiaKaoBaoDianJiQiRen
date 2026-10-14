.class final enum Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

.field public static final enum In:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

.field public static final enum IsInning:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

.field public static final enum IsOuting:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

.field public static final enum Out:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    const-string v1, "Out"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->Out:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    const-string v3, "IsInning"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->IsInning:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    const-string v5, "In"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->In:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    const-string v7, "IsOuting"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->IsOuting:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->$VALUES:[Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

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

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->$VALUES:[Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    return-object v0
.end method
