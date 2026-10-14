.class public final enum Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

.field public static final enum Deduct:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

.field public static final enum End:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

.field public static final enum Ready:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

.field public static final enum Start:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

.field public static final enum Wait:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;


# instance fields
.field public final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    const-string v1, "Wait"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Wait:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    const-string v3, "Ready"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Ready:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    const-string v5, "Start"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Start:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    new-instance v5, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    const-string v7, "End"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->End:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    new-instance v7, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    const-string v9, "Deduct"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Deduct:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->$VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->state:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->$VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    return-object v0
.end method
