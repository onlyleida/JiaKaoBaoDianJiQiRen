.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

.field public static final enum InsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

.field public static final enum OutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

.field public static final enum Seat:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    const-string v1, "Seat"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->Seat:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    const-string v4, "OutsideMirror"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->OutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    .line 3
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    const-string v6, "InsideMirror"

    invoke-direct {v4, v6, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->InsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    const/4 v6, 0x3

    new-array v6, v6, [Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    .line 4
    sput-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    return-object v0
.end method
