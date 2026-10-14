.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;
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

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->values()[Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$a;->a:[I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->values()[Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Start:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->End:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Deduct:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$a;->b:[I

    return-void
.end method
