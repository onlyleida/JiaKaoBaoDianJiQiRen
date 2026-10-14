.class public final enum Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

.field public static final enum Error:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

.field public static final enum Finish:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

.field public static final enum NoFinish:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

.field public static final enum Skip:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

.field public static final enum Starting:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

.field public static final enum Waiting:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;


# instance fields
.field public final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    const-string v1, "Waiting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Waiting:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    const-string v3, "Starting"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Starting:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    const-string v5, "Finish"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Finish:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    const-string v7, "Error"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Error:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    const-string v9, "NoFinish"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->NoFinish:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    .line 6
    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    const-string v11, "Skip"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Skip:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    const/4 v11, 0x6

    new-array v11, v11, [Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->$VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->state:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->$VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    return-object v0
.end method
