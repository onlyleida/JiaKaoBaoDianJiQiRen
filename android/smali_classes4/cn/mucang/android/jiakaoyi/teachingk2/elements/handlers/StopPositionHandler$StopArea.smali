.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StopArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

.field public static final enum Back:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

.field public static final enum Front:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

.field public static final enum Good:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

.field public static final enum Left:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

.field public static final enum Right:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->Left:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    const-string v3, "Right"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->Right:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    const-string v5, "Front"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->Front:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    const-string v7, "Back"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->Back:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    const-string v9, "Good"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->Good:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

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

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    return-object v0
.end method
